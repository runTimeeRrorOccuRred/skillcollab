// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/auth/auth_repo.dart';
import 'package:skill_colab/data/remote/auth/models/login_model.dart';
import 'package:skill_colab/data/remote/firebaseLogin/firebase_login_repo.dart';
import 'package:skill_colab/data/remote/firebaseLogin/models/firebase_login_model.dart';
// import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/domain/providers/repository_provider.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/services/shared_preference_service.dart';
import 'package:skill_colab/utils/logger.dart';
// import 'package:skill_colab/utils/snackback.dart';

final signinViewModel = ChangeNotifierProvider.autoDispose(
  (ref) => SigninViewModel(
      ref.read(authRepositoryProvider), ref.read(firebaseLoginProvider), ref,),
);

class SigninViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  final AuthRepo _authRepo;
  final FirebaseLoginRepo _firebaseRepo;
  SigninViewModel(
    this._authRepo,
    this._firebaseRepo,
    this.ref,
  );
  LoginResponseModel? _loginResponse;
  LoginResponseModel? get loginResponse => _loginResponse;
  LoginRequest loginRequest = const LoginRequest();

  UserCredential? _userCredential;
  UserCredential? get userCredential => _userCredential;

  final List<String> socialIcons = [
    "assets/icons/google.webp",
    "assets/icons/fb.webp",
    "assets/icons/apple.webp",
  ];

  Future<void> login(
    BuildContext context,
    LoginRequest loginRequest,
  ) async {
    toggleLoading();

    await _authRepo.login(loginRequest).then(
          (value) => value.fold((l) {
            if(l.message.contains("yours registration is not")) {
              context.pushNamed(AppRoute.verification.name);
            } else {
              view?.showSnackbar(l.message);
              Logger.printError(l.message);
            }
            // navigateToverify();
          }, (r) async {
            _loginResponse = r;

            Logger.printSuccess(_loginResponse.toString());

            AppConstants.token = _loginResponse?.accessToken ?? "";
            SharedPreferenceService.setString(
              AppConstants.authToken,
              AppConstants.token,
            );
            SharedPreferenceService.setString(
              AppConstants.refreshToken,
              _loginResponse!.refreshToken!,
            );

            AppConstants.userId = _loginResponse?.data?.id.toString() ?? "";
            AppConstants.userProfilePhoto = _loginResponse?.data?.profilePhoto ?? "";
            SharedPreferenceService.setString(
              AppConstants.userIdPref,
              _loginResponse!.data!.id.toString(),
            );

            SharedPreferenceService.setString(
              "profilephoto",
              _loginResponse?.data?.profilePhoto ?? "",
            );

            AppConstants.usertype = 1; // 1 is for a logged in member
            SharedPreferenceService.setInt(AppConstants.usertypePref, 1);

            ref.read(selfDataProvider).getUserById(context, AppConstants.userId); 
            // ref.read(selfDataProvider).getCardList(context, r.data?.customerId ?? "");

            // context.pop();
            if((loginResponse?.data?.isEmailVerified ?? false) == false) {
              final sendEmailResponse = await ApiClient().post(
                path: "${AppConstants.baseUrl}auth/send-verification-email",
                data: jsonEncode({"email": _loginResponse?.data?.email ?? ""}),
              );
              Logger.printSuccess(sendEmailResponse.toString());
              context.pushNamed(AppRoute.verification.name);
            } else if (loginResponse?.data?.isBan == true) {
              context.pushReplacementNamed(AppRoute.bannedUser.name);
            } else {
              context.pop();
              context.pushReplacementNamed(AppRoute.navigationView.name);
            }           
            // showCustomSnackBar(context, text: _loginResponse!.message!, color: Colors.green);
          }),
        );
    toggleLoading();
  }

  Future googleLogin() async {
    try {
      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return;
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken,);
      _userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      _firebaseRepo
          .firebaseLogin(FirebaseLoginRequest(
              email: _userCredential?.user?.email,
              type: "google",
              isEmailVerified: _userCredential?.user?.emailVerified,
              uid: _userCredential?.user?.uid,),)
          .then((value) => value.fold((l) => {},
              (r) => {view?.pushReplacementToScreen(AppRoute.editProfile)},),);
    } catch (e) {
      Logger.printError(e.toString());
    }
  }

  // void navigateToNavigationScreen() {
  //   view?.pushReplacementToScreen(AppRoute.navigationView);
  // }

  // void navigateToSignUp() {
  //   view?.pushReplacementToScreen(AppRoute.signupView);
  // }

  // void navigateToForgetPassword() {
  //   view?.pushReplacementToScreen(AppRoute.forgotPasswordView);
    
  // }

  String? validateEmail(String? val) {
    if (val == '') return "Email id cannot be empty";
    final bool emailValid = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(val!);
    if (!emailValid) return "Email id is invalid";
    return null;
  }

  String? validatePassword(String? val) {
    if (val == '') return "Password cannot be empty";
    if (val!.length < 6) {
      return "Password must be greater than 6 ";
    }
    return null;
  }
}

// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/firebaseLogin/firebase_login_repo_impl.dart';
import 'package:skill_colab/data/remote/firebaseLogin/models/firebase_login_model.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/services/shared_preference_service.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/profile/editProfile/edit_profile_view_model.dart';



final onboardingViewModel = ChangeNotifierProvider((ref) => OnboardingViewModel(ref: ref));


class OnboardingViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  OnboardingViewModel({required this.ref}) : super();

  final FirebaseLoginRepoImpl _firebaseLoginRepoImpl = FirebaseLoginRepoImpl(ApiClient());

  /// DATA MEMBERS
  FirebaseLoginResponse _firebaseLoginResponse = const FirebaseLoginResponse();
  

  /// GETTERS
  FirebaseLoginResponse get firebaseLoginResponse => _firebaseLoginResponse;


  /// SETTERS


  /// OTHER METHODS
  Future<User?> signInWithGoogle({required BuildContext context}) async {
    // await GoogleSignIn().disconnect();
    // await FirebaseAuth.instance.signOut();

    final FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    if(googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential = await auth.signInWithCredential(credential);

        user = userCredential.user;

        // Logger.printError(user?.getIdToken() ?? '');
        String token = await user?.getIdToken() ?? "";
        Logger.printInfo("FIREBASE AUTH TOKEN =====> $token");

        Logger.printError(user.toString());

        firebaseLogin(context, FirebaseLoginRequest(
          email: user?.providerData.first.email,
          isEmailVerified: true,
          type: "google",
          uid: user?.uid ?? "",
          deviceToken: AppConstants.fcmToken,
          username: "${user?.uid ?? ""}skillcollab", 
        ) ,);

      } on FirebaseAuthException catch(e) {
        // if (e.code == 'account-exists-with-different-credential') {
          
        // }
        // else if (e.code == 'invalid-credential') {
        //   // handle the error here
        // }
        Logger.printError(e.toString());
        GoogleSignIn().disconnect().then(
          (value) => FirebaseAuth.instance.signOut(),
        );
      } catch(e) {
        Logger.printError(e.toString());
        GoogleSignIn().disconnect().then(
          (value) => FirebaseAuth.instance.signOut(),
        );
      } 
    }

    Logger.printSuccess("USER DETAILS ======> $user");

    return user;
  }

  //Facebook login
  
  Future signInWithFacebook({required BuildContext context}) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final FacebookAuth facebookAuth = FacebookAuth.instance;
    final LoginResult result = await facebookAuth.login();
    // getting the profile
    if (result.status == LoginStatus.success) {
      try {
        final OAuthCredential credential = FacebookAuthProvider.credential(result.accessToken!.token);
        final UserCredential userCredential = await firebaseAuth.signInWithCredential(credential);
        // saving the values
        final userData = await FacebookAuth.instance.getUserData();

        String token = await userCredential.user?.getIdToken() ?? "";
        Logger.printInfo("FIREBASE AUTH TOKEN =====> $token");

        Logger.printSuccess(userData.toString());
        Logger.printInfo(FirebaseLoginRequest(
          email: userData['email'],
          isEmailVerified: true,
          type: "facebook",
          uid: userData['id'],).toString(),);
        firebaseLogin(context, FirebaseLoginRequest(
          email: "${userData['id']}@facebook.com",
          isEmailVerified: true,
          type: "facebook",
          uid: userData['id'],
          deviceToken: AppConstants.fcmToken,
          username: "${userData['id']}skillcollab"
        ),);
      } on FirebaseAuthException catch(e) {
        Logger.printError(e.toString());
      } 
        notifyListeners(); 
      }
      //Logger.printSuccess("USER DETAILS ======> $userData");

    //return userData;
    }

    //Apple Login

    Future signInWithApple({required BuildContext context}) async {
      try {
        final credential = await SignInWithApple.getAppleIDCredential(
            scopes: [
              AppleIDAuthorizationScopes.email,
              AppleIDAuthorizationScopes.fullName,
            ],
          );
        final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: credential.identityToken,
        accessToken: credential.authorizationCode,
      );
      Logger.printInfo(oauthCredential.toString());
          // Signing in with the Apple credential
      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(oauthCredential);

      String token = await userCredential.user?.getIdToken() ?? "";
      Logger.printInfo("FIREBASE AUTH TOKEN =====> $token");
      Logger.printSuccess('User Cred ======= >>  $userCredential');

      // Retrieving the Firebase User ID
      final String userId = userCredential.user?.uid ?? 'No UID';
      print('Firebase User ID: $userId');
          Logger.printInfo(FirebaseLoginRequest(email: userCredential.additionalUserInfo?.profile?['email'] ?? "",
          isEmailVerified: true,
          type: "apple",
          uid: userCredential.user?.uid ?? "No UID",).toString(),);
        firebaseLogin(context, FirebaseLoginRequest(
          email: userCredential.additionalUserInfo?.profile?['email'] ??  "$userId@apple.com",
          isEmailVerified: true,
          type: "apple",
          deviceToken: AppConstants.fcmToken,
          uid: userId,
          username: "${userId}skillcollab"
        ),);
        } on FirebaseAuthException catch (e) {
        Logger.printError(e.toString());
      } catch(e) {
        Logger.printError(e.toString());
      } 
      
    }
  
  //Email login
  Future<void> firebaseLogin(BuildContext context, FirebaseLoginRequest firebaseLoginRequest,) async {
    toggleLoading();
    _firebaseLoginRepoImpl.firebaseLogin(firebaseLoginRequest).then((value) {
      toggleLoading();
      return value.fold(
        (l) async {
          await GoogleSignIn().signOut();
          await FirebaseAuth.instance.signOut();
          Logger.printError(l.message);
          showCustomSnackBar(context, text: l.message, color: Colors.red);
        }, 
        (r) async {
          _firebaseLoginResponse = r;
          Logger.printSuccess(r.toString());
          notifyListeners();

          AppConstants.token =r.accessToken ?? "";
          SharedPreferenceService.setString(
            AppConstants.authToken,
            AppConstants.token,
          );
          SharedPreferenceService.setString(
            AppConstants.refreshToken,
            r.refreshToken ?? '',
          );

          AppConstants.userId = r.data?.id.toString() ?? "";
          SharedPreferenceService.setString(
            AppConstants.userIdPref,
            r.data?.id ?? "",
          );     

          AppConstants.usertype = 1; // 1 is for a logged in member
          SharedPreferenceService.setInt(AppConstants.usertypePref, 1);

          await ref.read(selfDataProvider).getUserById(context, r.data?.id ?? "").then((value) {
            Future.delayed(const Duration(seconds: 3), () {
              ref.read(editProfileViewModel).setData(ref.watch(selfDataProvider).singleUserResponseModel);
              context.pushReplacementNamed(AppRoute.editProfile.name, extra: true);
            });
          });          
        }
      );
    });
  }
}

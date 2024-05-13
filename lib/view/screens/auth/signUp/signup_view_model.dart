// ignore_for_file: avoid_dynamic_calls

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/auth/auth_repo.dart';
import 'package:skill_colab/data/remote/auth/models/register_model.dart';
import 'package:skill_colab/data/remote/auth/models/username_validator_model.dart';
import 'package:skill_colab/data/remote/interests/get_interests_repo_impl.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/domain/providers/repository_provider.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/services/shared_preference_service.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';

final signupViewModel = ChangeNotifierProvider.autoDispose(
  (ref) => SignUpViewModel(ref.read(authRepositoryProvider), ref),
);

class SignUpViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  final AuthRepo _authRepo;
  SignUpViewModel(
    this._authRepo,
    this.ref,
  );

  final GetInterestsRepoImpl _getInterestsRepoImpl = GetInterestsRepoImpl();

  RegistrationRequest registrationRequest = const RegistrationRequest();
  UsernameValidatorResponse _usernameValidatorResponse = const UsernameValidatorResponse();
  RegistrationResponse? _registrationResponse;
  GetInterestsResponseModel _getInterestsResponseModel = const GetInterestsResponseModel();
    String _locationData = "";

  RegistrationResponse? get registrationResponse => _registrationResponse;
  UsernameValidatorResponse? get usernameValidatorResponse => _usernameValidatorResponse;
  GetInterestsResponseModel get getInterestsResponseModel => _getInterestsResponseModel;
  String get locationData => _locationData;


  void setLocation(String data) {
    _locationData = data;
    notifyListeners();
  }



  final List<String> socialIcons = [
    "assets/icons/google.webp",
    "assets/icons/fb.webp",
    "assets/icons/apple.webp",
  ];
  Future<void> registration(
    BuildContext context,
    RegistrationRequest registrationRequest,
  ) async {
    toggleLoading();

    await _authRepo.registration(registrationRequest).then(
          (value) => value.fold((l) {
            // view?.showSnackbar(l.message, color: redColor);
            if(l.message.contains("must contain")) {
              view?.showSnackbar("Password must have atleast 1 alphabet and 1 number", color: redColor);
            } else if(l.message.contains("must be at least")) {
              view?.showSnackbar("Password must have atleast 8 characters", color: redColor);
            } else {
              view?.showSnackbar(l.message, color: redColor);
              // Logger.printError(l.message);
            }
          }, (r) async {
            log(r.toString());
            _registrationResponse = r;

            AppConstants.token = _registrationResponse?.accessToken ?? "";
            SharedPreferenceService.setString(
              AppConstants.authToken,
              AppConstants.token,
            );
            SharedPreferenceService.setString(
              AppConstants.refreshToken,
              _registrationResponse!.refreshToken!,
            );

            AppConstants.userId = _registrationResponse!.data!.id.toString();
            SharedPreferenceService.setString(
              AppConstants.userIdPref,
              _registrationResponse!.data!.id.toString(),
            );

            AppConstants.usertype = 1; // 1 is for a logged in member
            SharedPreferenceService.setInt(AppConstants.usertypePref, 1);
            ref.read(selfDataProvider).getUserById(context, AppConstants.userId);
            // ref.read(selfDataProvider).getCardList(context, r.data?.customerId ?? "");

            showCustomSnackBar(context, text: "${_registrationResponse!.message!}\nVerification OTP send to your email!", color: Colors.green);            
            context.pushNamed(AppRoute.verification.name);
          }),
        );
    toggleLoading();
  }

  Future<List<String>> fetchLocationSuggestions(String query) async {
    // make a url for google places autocomplete and pass the query and show only
    final String apiUrl =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=AIzaSyBnW4iG_nYqaUctsyR7TzkMy8WPAHSLx14";

    // 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=$apiKey';

    final response = await Dio().get(apiUrl);

    Logger.printSuccess(response.data.toString());

    if (response.statusCode == 200) {
      final data = response.data;
      if (data['status'] == 'OK') {
        final predictions = data['predictions'];
        final List<String> suggestions = [];
        for (var i = 0; i < predictions.length; i++) {
          suggestions.add(predictions[i]['description']);
        }

        return suggestions;
      }
    }
    return [];
  }

  Future<void> usernameverification(UsernameValidatorRequest usernameValidatorRequest) async{
    await _authRepo.usernamevalidation(usernameValidatorRequest).then((value) {
       value.fold(
        (l) {
          
        }, 
        (r) {
          _usernameValidatorResponse = r;
          Logger.printSuccess(_usernameValidatorResponse.toString());
          notifyListeners();
        }
      );
    });
  }


  // void navigateToverify() {
  //   view?.navigateToScreen(AppRoute.verification);
  // }

  void navigateToSignIn() {
    view?.pushReplacementToScreen(AppRoute.signinView);
  }

  void navigateToForgetPassword() {
    view?.navigateToScreen(AppRoute.forgotPasswordView);
  }

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
    if (val!.length < 8) {
      return "Password must be greater than 7";
    }
    return null;
  }

  String? validatePhoneNumber(String? val) {
    if (val == '') return "Phone number cannot be empty";
    if (val!.length > 14) {
      return "Phone number must be equal or lesser than 13";
    }
    return null;
  }

  // String? validateFirstName(String? val) {
  //   if (val == '') {return "First name cannot be empty";}
  //   else if(val?.isValidName() ?? false){
  //     return 'Name should not contain number or special character';
  //   }

  //   return null;
  // }

  // String? validateLastName(String? val) {
  //   if (val == '') return "Last name cannot be empty";

  //   return null;
  // }

  String? validateUserName(String? val) {
    if (val == '') {
      return "Username cannot be empty";
    }else if((val?.length ?? 0) >= 3) {
      usernameverification(UsernameValidatorRequest(userName: val));
    }
    return null;
  }

  

  Future<void> getInterests(BuildContext context) async {
    // toggleLoading();
    await _getInterestsRepoImpl.getInterests("").then((value) {
      // toggleLoading();
      value.fold(
        (l) {
         // showCustomSnackBar(context, text: l.message, color: redColor);
        }, 
        (r) {
          _getInterestsResponseModel = r;
          notifyListeners();
        }
      );
    });
  }
}

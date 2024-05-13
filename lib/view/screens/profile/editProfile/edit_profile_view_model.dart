// ignore_for_file: avoid_positional_boolean_parameters, avoid_dynamic_calls, eol_at_end_of_file

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/auth/auth_repo_impl.dart';
import 'package:skill_colab/data/remote/auth/models/username_validator_model.dart';
import 'package:skill_colab/data/remote/user/models/single_user_model.dart';
import 'package:skill_colab/data/remote/user/models/update_user_model.dart';
import 'package:skill_colab/data/remote/user/user_repo_impl.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';

final editProfileViewModel = ChangeNotifierProvider((ref) => EditProfileViewModel(ref: ref));

class EditProfileViewModel extends BaseViewModel {
  Ref ref;
  EditProfileViewModel({required this.ref});
  final AuthRepoImpl _authRepoimpl = AuthRepoImpl(ApiClient());
  UsernameValidatorResponse _usernameValidatorResponse = const UsernameValidatorResponse();
  UsernameValidatorResponse? get usernameValidatorResponse => _usernameValidatorResponse;
  final UserRepoImpl _userRepoImpl = UserRepoImpl();

  /// DATA MEMBERS
  File _coverImage = File("null");
  File _profilePhoto = File("null");
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController expertiseController = TextEditingController();
  bool _coverPhotoLoading = false;
  bool _profilePhotoLoading = false;
  String _coverPhotoUrl = "";
  String _profilePhotoUrl = "";

  /// GETTERS
  File? get coverImage => _coverImage;
  File? get profilePhoto => _profilePhoto;
  bool get coverPhotoLoading => _coverPhotoLoading;
  bool get profilePhotoLoading => _profilePhotoLoading;
  String get coverPhotoUrl => _coverPhotoUrl;
  String get profilePhotoUrl => _profilePhotoUrl;

  /// SETTERS
  void setCoverImage(File image) {
    _coverImage = image;
    notifyListeners();
  }

  void setProfileImage(File image) {
    _profilePhoto = image;
    notifyListeners();
  }

  void setPhoneNumber(String ph) {
    phoneNumberController.text = ph;
    notifyListeners();
  }
  

  /// OTHER METHODS
  Future<void> editProfile(BuildContext context, UpdateUserRequestModel updateUserRequestModel, bool isSocialLogin) async {
    toggleLoading();
    await _userRepoImpl.updateUser(updateUserRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          Logger.printSuccess(r.toString());
          notifyListeners();
          // refreshing the updated details
          ref.read(userProfileViewModel).getUserById(context, AppConstants.userId);
          ref.read(selfDataProvider).getUserById(context, AppConstants.userId);
          clearData();
          if(isSocialLogin) {
            context.pushReplacementNamed(AppRoute.navigationView.name);
          } else {
            context.pop();
          }
        }
      );
    });
  }

  Future<void> usernameverification(UsernameValidatorRequest usernameValidatorRequest) async{
    await _authRepoimpl.usernamevalidation(usernameValidatorRequest).then((value) {
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

    String? validateUserName(String? val) {
    if (val == '') {
      return "Username cannot be empty";
    } else if((val?.length ?? 0) >= 3){
      usernameverification(UsernameValidatorRequest(userName: val));
    }
    return null;
  }
  void setData(SingleUserResponseModel singleUserResponseModel) {
    userNameController.text = singleUserResponseModel.data?.userName ?? "";
    firstNameController.text = singleUserResponseModel.data?.firstName ?? "";
    lastNameController.text = singleUserResponseModel.data?.lastName ?? "";
    emailController.text = singleUserResponseModel.data?.email ?? "";
    phoneNumberController.text = singleUserResponseModel.data?.phone ?? "";
    locationController.text = singleUserResponseModel.data?.location ?? "";
    descriptionController.text = singleUserResponseModel.data?.description ?? "";
    _profilePhotoUrl = singleUserResponseModel.data?.profilePhoto ?? "";
    _coverPhotoUrl = singleUserResponseModel.data?.coverPhoto ?? "";

    notifyListeners();
  }



  void clearData() {
    userNameController.clear();
    firstNameController.clear();
    lastNameController.clear();
    emailController.clear();
    phoneNumberController.clear();
    locationController.clear();
    descriptionController.clear();
    _profilePhotoUrl = "";
    _coverPhotoUrl = "";   
    notifyListeners();
  }



  Future<void> uploadImage(bool isCoverPhoto, String imagePath, String imageName) async {
    if(isCoverPhoto) {
      _coverPhotoLoading = true;
    } else {
      _profilePhotoLoading = true;
    }
    notifyListeners();

    final FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        imagePath,
        filename: imageName,
      ),
    });

    try {
      final Response response = await Dio().post(
        '${AppConstants.baseUrl}group/upload',
        data: formData,
      );
      Logger.printSuccess(response.data.toString());

      if(isCoverPhoto) {
        _coverPhotoLoading = false;
        _coverPhotoUrl = response.data['data'];
      } else {
        _profilePhotoLoading = false;
        _profilePhotoUrl = response.data['data'];
      }
      notifyListeners();

    } catch(e) {
      Logger.printError(e.toString());
    }
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
}
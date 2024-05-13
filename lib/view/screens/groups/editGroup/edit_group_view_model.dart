// ignore_for_file: avoid_positional_boolean_parameters, avoid_dynamic_calls

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/groups/editGroup/edit_group_repo_impl.dart';
import 'package:skill_colab/data/remote/groups/editGroup/models/edit_group_model.dart';
import 'package:skill_colab/data/remote/interests/get_interests_repo_impl.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
// import 'package:skill_colab/data/remote/payment/group/models/edit_group_plan_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/group_subscribe_repo_impl.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/edit_group_plan_model.dart';
import 'package:skill_colab/data/remote/premium/group/plan_creation/models/get_customer_plan_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/screens/groups/premiumGroupProfile/premium_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/groups/privateGroupProfile/private_group_profile_view_model.dart';
import 'package:skill_colab/view/screens/groups/publicGroupProfile/public_group_profile_view_model.dart';

final editGroupViewModel = ChangeNotifierProvider((ref) => EditGroupViewModel(ref: ref));

class EditGroupViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  EditGroupViewModel({required this.ref});

  final GetInterestsRepoImpl _getInterestsRepoImpl = GetInterestsRepoImpl();
  final EditGroupRepoImpl _editGroupRepoImpl = EditGroupRepoImpl();
  final GroupSubscribeRepoImpl _groupSubscribeRepoImpl = GroupSubscribeRepoImpl();

  /// DATA MEMBERS
  File _coverImage = File("null");
  File _profilePhoto = File("null");
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  bool _coverPhotoLoading = false;
  bool _profilePhotoLoading = false;
  String _coverPhotoUrl = "";
  String _profilePhotoUrl = "";
  String _privacy = "public";
  GetInterestsResponseModel _getInterestsResponseModel = const GetInterestsResponseModel();
  EditGroupResponseModel _editGroupResponseModel = const EditGroupResponseModel();
  String _locationData = "";  
  EditGroupPlanResponseModel _editGroupPlanResponseModel = const EditGroupPlanResponseModel();
  bool _editGroupPlanLoader = false;
  int _privacyIndex = 0;

  /// GETTERS
  File? get coverImage => _coverImage;
  File? get profilePhoto => _profilePhoto;
  bool get coverPhotoLoading => _coverPhotoLoading;
  bool get profilePhotoLoading => _profilePhotoLoading;
  String get coverPhotoUrl => _coverPhotoUrl;
  String get profilePhotoUrl => _profilePhotoUrl;
  String get privacy => _privacy;
  GetInterestsResponseModel get getInterestsResponseModel => _getInterestsResponseModel;
  EditGroupResponseModel get editGroupResponseModel => _editGroupResponseModel;
  String get locationData => _locationData;
  EditGroupPlanResponseModel get editGroupPlanResponseModel => _editGroupPlanResponseModel;
  bool get editGroupPlanLoader => _editGroupPlanLoader;
  int get privacyIndex => _privacyIndex;



  /// SETTERS
  void setCoverImage(File image) {
    _coverImage = image;
    notifyListeners();
  }

  void setProfileImage(File image) {
    _profilePhoto = image;
    notifyListeners();
  }
  void setLocation(String data) {
    _locationData = data;
    notifyListeners();
  }

  void setLocationController(String data) {
    locationController.text = data;
    notifyListeners();
  }


  void toggleEditGroupPlanLoader() {
    _editGroupPlanLoader = !_editGroupPlanLoader;
    notifyListeners();
  }

  void setPrivacyIndex(int index) {
    _privacyIndex = index;
    notifyListeners();
  }




  /// OTHER METHODS
  Future<void> editGroup(BuildContext context, EditGroupRequestModel editGroupRequestModel, String groupId, String privacyValue) async {
    toggleLoading();
    await _editGroupRepoImpl.editGroup(editGroupRequestModel, groupId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _editGroupResponseModel = r;
          Logger.printSuccess(r.toString());
          if(privacyValue == 'public') {
            ref.read(publicGroupProfileViewModel).getGroupDataFromApi(context, groupId);
          } else if(privacyValue == 'private') {
            ref.read(privateGroupProfileViewModel).getGroupDataFromApi(context, groupId);
          } else {
            ref.read(premiumGroupProfileViewModel).getGroupDataFromApi(context, groupId);
          }
          notifyListeners();
          clearData();
          context.pop();
        }
      );
    });
  }


  void clearData() {
    nameController.clear();
    locationController.clear();
    descriptionController.clear();
    _privacy = "";
    _profilePhotoUrl = "";
    _coverPhotoUrl = "";
    notifyListeners();
  }

  void setGroupData(GroupDatum data) {
    Logger.printError(data.toString());
    nameController.text = data.name ?? "";
    locationController.text = data.location ?? "";
    descriptionController.text = data.description ?? "";
    _profilePhotoUrl = data.groupPhoto ?? "";
    _coverPhotoUrl = data.coverPhoto ?? "";
    _privacy = data.privacy ?? "";
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



  Future<void> editGroupPlan(BuildContext context, EditGroupPlanRequestModel editGroupPlanRequestModel) async {
    toggleEditGroupPlanLoader();
    _groupSubscribeRepoImpl.editGroupPlan(editGroupPlanRequestModel).then((value) {
      toggleEditGroupPlanLoader();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _editGroupPlanResponseModel = r;
          notifyListeners();

          Logger.printSuccess(_editGroupPlanResponseModel.toString());
          showCustomSnackBar(context, text: "Group Subscription Plan Changed", color: Colors.green);

          ref.read(premiumGroupProfileViewModel).getGroupPlan(GetCustomerPlanRequestModel(product: r.data?.monthPlanCreate?.product ?? ""));
        }
      );
    });
  }
}

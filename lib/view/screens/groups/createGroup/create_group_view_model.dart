// ignore_for_file: avoid_dynamic_calls, avoid_positional_boolean_parameters

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/create_group/create_group_repo_impl.dart';
import 'package:skill_colab/data/remote/groups/create_group/models/create_group_model.dart';
import 'package:skill_colab/data/remote/interests/get_interests_repo_impl.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/payment/add_bank/add_bank_repo_impl.dart';
import 'package:skill_colab/data/remote/payment/add_bank/models/customer_add_bank_model.dart';
import 'package:skill_colab/data/remote/payment/add_card/add_card_repo_impl.dart';
import 'package:skill_colab/data/remote/payment/add_card/models/customer_add_card_model.dart';
import 'package:skill_colab/data/remote/premium/group/plan_creation/models/plan_creation_model.dart';
import 'package:skill_colab/data/remote/premium/group/plan_creation/plan_creation_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_view_model.dart';

final createGroupViewModel = ChangeNotifierProvider((ref) => CreateGroupViewModel(ref: ref));

class CreateGroupViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  CreateGroupViewModel({required this.ref});

  final CreateGroupRepoImpl _createGroupRepoImpl = CreateGroupRepoImpl();
  final GetInterestsRepoImpl _getInterestsRepoImpl = GetInterestsRepoImpl();
  final AddCardRepoImpl _addCardRepoImpl = AddCardRepoImpl();
  final PlanCreationRepoImpl _planCreationRepoImpl = PlanCreationRepoImpl();
  final AddBankRepoImpl _addBankRepoImpl = AddBankRepoImpl();

  /// DATA MEMBERS
  File _coverImage = File("null");
  File _profilePhoto = File("null");
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController interestsController = TextEditingController();
  TextEditingController oneMonthSubController = TextEditingController();
  TextEditingController sixMonthSubController = TextEditingController();
  TextEditingController twelveMonthSubController = TextEditingController();
  TextEditingController promoCodeController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  int _privacyIndex = -1;
  List<String> privacy = ["public", "private", "premium"];
  bool _isBankDetailsFilled = false;
  bool _coverPhotoLoading = false;
  bool _profilePhotoLoading = false;
  String _coverPhotoUrl = "";
  String _profilePhotoUrl = "";
  String _locationData = "";

  AddBankResponseModel _addBankResponseModel = const AddBankResponseModel();

  GetInterestsResponseModel _getInterestsResponseModel = const GetInterestsResponseModel();
  AddCustomerCardResponseModel _addCustomerCardResponseModel = const AddCustomerCardResponseModel();
  PlanCreationResponseModel _planCreationResponseModel = const PlanCreationResponseModel();
  CreateGroupResponseModel _createGroupResponseModel = const CreateGroupResponseModel();

  /// GETTERS
  File? get coverImage => _coverImage;
  File? get profilePhoto => _profilePhoto;
  int get privacyIndex => _privacyIndex;  
  bool get isBankDetailsFilled => _isBankDetailsFilled;
  GetInterestsResponseModel get getInterestsResponseModel => _getInterestsResponseModel;
  bool get coverPhotoLoading => _coverPhotoLoading;
  bool get profilePhotoLoading => _profilePhotoLoading;
  String get coverPhotoUrl => _coverPhotoUrl;
  String get profilePhotoUrl => _profilePhotoUrl;
  String get locationData => _locationData;

  AddCustomerCardResponseModel get addCustomerCardResponseModel => _addCustomerCardResponseModel;
  PlanCreationResponseModel get planCreationResponseModel => _planCreationResponseModel;
  CreateGroupResponseModel get createGroupResponseModel => _createGroupResponseModel;
  AddBankResponseModel get addBankResponseModel => _addBankResponseModel;

  /// SETTERS
  void setCoverImage(File image) {
    _coverImage = image;
    notifyListeners();
  }

  void setProfileImage(File image) {
    _profilePhoto = image;
    notifyListeners();
  }

  void setPrivacyIndex(int index) {
    _privacyIndex = index;
    notifyListeners();
  }

  void toggleIsBankDetailsFilled() {
    _isBankDetailsFilled = !_isBankDetailsFilled;
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




  /// OTHER METHODS
  Future<void> createGroup(BuildContext context, CreateGroupRequestModel createGroupRequestModel) async {
    toggleLoading();
    _createGroupRepoImpl.createGroup(createGroupRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) => showCustomSnackBar(context, text: l.message, color: redColor), 
        (r) {
          ref.read(myGroupsViewModel).getMyGroups(context);
          context.pop();
          clearAllData();
          showCustomSnackBar(context, text: r.message!, color: Colors.green);
        }
      );
    });
  }

  Future<void> addBank(BuildContext context, AddBankRequestModel addBankRequestModel) async {
    toggleLoading();
    _addBankRepoImpl.addBank(addBankRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) => showCustomSnackBar(context, text: l.message, color: redColor), 
        (r) {
          _addBankResponseModel = r;

          Logger.printSuccess(r.toString());
          notifyListeners();

          // showCustomSnackBar(context, text: r.message!, color: Colors.green);
        }
      );
    });
  }

  Future<void> addCard(BuildContext context, AddCustomerCardRequestModel addCustomerCardRequestModel, String customerId) async {
    toggleLoading();
    await _addCardRepoImpl.customerAddCard(addCustomerCardRequestModel, customerId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => showCustomSnackBar(context, text: l.message, color: redColor),
        (r){
          _addCustomerCardResponseModel = r;
          Logger.printSuccess(r.data.toString());
          notifyListeners();
        }
      );
    });
  }

  Future<void> createPremiumGroup(BuildContext context, CreatePremiumGroupRequestModel createPremiumGroupRequestModel) async {
    toggleLoading();
    _createGroupRepoImpl.createPremiumGroup(createPremiumGroupRequestModel).then((value) {
      toggleLoading();
      return value.fold(
        (l) => showCustomSnackBar(context, text: l.message, color: redColor), 
        (r) {
          _createGroupResponseModel = r;
          notifyListeners();
          createGroupPlan(PlanCreationRequestModel(
            groupId: r.data?.id ?? "",
            monthlyPlanAmount: r.data?.one_month_subscription_price ?? 0,
            quartPlanAmount: r.data?.six_month_subscription_price ?? 0,
            yearlyPlanAmount: r.data?.twelve_month_subscription_price ?? 0,
            productName: r.data?.name ?? "",
          ),);
          context.pop();
          // showCustomSnackBar(context, text: r.message!, color: Colors.green);
        }
      );
    });
  }

  Future<void> createGroupPlan(PlanCreationRequestModel planCreationRequestModel) async {
    _planCreationRepoImpl.groupPlanCreate(planCreationRequestModel).then((value) {
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _planCreationResponseModel = r;
          Logger.printSuccess(r.toString());
          notifyListeners();
        }
      );
    });
  }


  void clearAllData() {
    nameController.clear();
    descriptionController.clear();
    locationController.clear();
    interestsController.clear();
    oneMonthSubController.clear();
    sixMonthSubController.clear();
    twelveMonthSubController.clear();
    promoCodeController.clear();
    discountController.clear();
    _coverImage = File("null");
    _profilePhoto = File("null");
    _privacyIndex = -1;
    notifyListeners();
  }


  Future<void> getInterests(BuildContext context) async {
    toggleLoading();
    await _getInterestsRepoImpl.getInterests("").then((value) {
      toggleLoading();
      value.fold(
        (l) {
          showCustomSnackBar(context, text: l.message, color: redColor);
        }, 
        (r) {
          _getInterestsResponseModel = r;
          notifyListeners();
        }
      );
    });
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
}

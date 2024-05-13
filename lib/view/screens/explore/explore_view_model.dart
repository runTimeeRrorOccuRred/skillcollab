import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/interests/get_interests_repo_impl.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/interests/models/get_personal_interests_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';
// import 'package:skill_colab/utils/snackback.dart';

final exploreViewModel =
    ChangeNotifierProvider((ref) => ExploreViewModel(ref: ref));

class ExploreViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  ExploreViewModel({required this.ref});

  final GetInterestsRepoImpl _getInterestsRepoImpl = GetInterestsRepoImpl();

  //DATA MEMBER
  GetInterestsResponseModel _getInterestsResponseModel =
      const GetInterestsResponseModel();
  List<Interest> _interestFilterList = [];
  GetPersonalInterestResponse _getPersonalInterestResponse = const GetPersonalInterestResponse();

  //GETTERS
  GetInterestsResponseModel get getInterestsResponseModel =>
      _getInterestsResponseModel;
  List<Interest> get interestFilterList => _interestFilterList;
  GetPersonalInterestResponse  get getPersonalInterestResponse => _getPersonalInterestResponse;
  

  //SETTERS
  void setInterestFilterList(List<Interest> data) {
    _interestFilterList = data;
    notifyListeners();
  }

  //OTHER METHODS
  Future<void> getInterest(BuildContext context) async {
    toggleLoading();
    await _getInterestsRepoImpl.getInterests("").then((value) {
      toggleLoading();
      return value.fold(
          (l) =>
            Logger.printError(l.message),
          (r) {
            _getInterestsResponseModel = r;
            _interestFilterList = r.data ?? [];
            Logger.printSuccess(r.toString());
            notifyListeners();
          });
    });
  }


  Future<void> resetSearch(String query) async {
    _interestFilterList = _getInterestsResponseModel.data ?? [];
  }

  Future<void> getPersonalInterest(BuildContext context, GetPersonalInterestRequest getPersonalInterestRequest) async {
    toggleLoading();
    await _getInterestsRepoImpl.getPersonalInterest(getPersonalInterestRequest).then((value) {
      toggleLoading();
      return value.fold(
          (l) =>
            Logger.printError(l.message),
          (r) {
            _getPersonalInterestResponse = r;
            Logger.printSuccess("personal interests response ====> $r");
            notifyListeners();
          });
    });
  }


}

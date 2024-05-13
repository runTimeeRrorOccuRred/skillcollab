// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/search/models/all_group_model.dart';
import 'package:skill_colab/data/remote/search/models/all_people_model.dart';
import 'package:skill_colab/data/remote/search/search_repo_impl.dart';
import 'package:skill_colab/data/remote/user/user_repo_impl.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/with_login_repo_impl.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/utils.dart';

final searchViewModel = ChangeNotifierProvider((ref) => SearchViewModel(ref: ref));

class SearchViewModel extends BaseViewModel {
  Ref ref;
  SearchViewModel({required this.ref});


  // final GetPublicPostsRepoImpl _getPublicPostsRepoImpl = GetPublicPostsRepoImpl();
  final SearchRepoImpl _searchRepoImpl = SearchRepoImpl();
  final WithLoginRepoImpl _withLoginRepoImpl = WithLoginRepoImpl();
  final UserRepoImpl _userRepoImpl = UserRepoImpl();

  /// DATA MEMBER
  // GetPublicPostsResponseModel _publicPostsResponseModel = const GetPublicPostsResponseModel();
  TextEditingController searchController = TextEditingController();
  AllPeopleResponseModel _allPeopleResponseModel = const AllPeopleResponseModel();
  AllGroupResponseModel _allGroupResponseModel = const AllGroupResponseModel();
  GetAllGroupsAndPeopleWithLoginResponseModel _getAllGroupsAndPeopleWithLoginResponseModel = const GetAllGroupsAndPeopleWithLoginResponseModel();
  List<PeopleAndGroupPost> _allDataList = [];
  int _allDataPageNumber = 1;
  int _timeFilterIndex = 0;
  int _feedFilterIndex = 0;

  /// GETTER
  // GetPublicPostsResponseModel get publicPostsResponseModel => _publicPostsResponseModel;
  AllPeopleResponseModel get allPeopleResponseModel => _allPeopleResponseModel;
  AllGroupResponseModel get allGroupResponseModel => _allGroupResponseModel;
  GetAllGroupsAndPeopleWithLoginResponseModel get getAllGroupsAndPeopleWithLoginResponseModel => _getAllGroupsAndPeopleWithLoginResponseModel;
  int get allDataPageNumber => _allDataPageNumber;
  List<PeopleAndGroupPost> get allDataList => _allDataList;
  int get timeFilterIndex => _timeFilterIndex;
  int get feedFilterIndex => _feedFilterIndex;

  void clearSearch(){
    searchController.clear();
    notifyListeners();
  }


  ///SETTER
  void clearData() {
    // _publicPostsResponseModel = const GetPublicPostsResponseModel();
    _allPeopleResponseModel = const AllPeopleResponseModel();
    _allGroupResponseModel = const AllGroupResponseModel();
    _getAllGroupsAndPeopleWithLoginResponseModel = const GetAllGroupsAndPeopleWithLoginResponseModel();
    _timeFilterIndex = 0;
    _allDataList = [];  
    _feedFilterIndex = 0;
    notifyListeners();
  }

  void setTimeFilterIndex(int value) {
    _timeFilterIndex = value;
    notifyListeners();
  }

  void setFeedFilterIndex(int value) {
    _feedFilterIndex = value;
    notifyListeners();
  }

  void setAllDataList(List<PeopleAndGroupPost> data) {
    _allDataList = data;
    toggleLoading();
    Future.delayed(const Duration(seconds: 2), () {
      toggleLoading();
    });
    notifyListeners();
  }

  

  /// OTHER METHODS
  // Future<void> getPublicPosts(BuildContext context, GetPublicPostsRequestModel getPublicPostsRequestModel, {bool load = true}) async {
    
  //   if(load) toggleLoading();

  //   await _getPublicPostsRepoImpl.getPublicPosts(getPublicPostsRequestModel).then((value) {      
  //     return value.fold(
  //       (l) => Logger.printError(l.message), 
  //       (r) async {                  
  //         _publicPostsResponseModel = r;
  //         Logger.printSuccess(r.toString());
  //         // _likeDislikeList.clear();
  //         // for(int i = 0; i < (r.data?.length ?? 0); i++) {
  //         //   _likeDislikeList.add([r.data?[i].likeDislike?.isLike ?? false, r.data?[i].likeDislike?.isDislike ?? false]);
  //         // }
  //         // Logger.printError(_likeDislikeList.toString());
  //         notifyListeners();
  //         if(load) toggleLoading();

  //         // showCustomSnackBar(context, text: "Public Posts fetched successfully", color: Colors.green);
  //       }
  //     );
  //   });
  // }


  Future<void> followUser(BuildContext context, String userId) async {
    _userRepoImpl.followUser(userId).then(
      (value) {
        // toggleFollowLoader();
        return value.fold(
            (l) =>
                Logger.printError(l.message),
            (r) async {
              Logger.printSuccess(r.toString());
              notifyListeners();
          });
      },
    );
  }



  Future<void> unfollowUser(BuildContext context, String userId) async {
    _userRepoImpl.unfollowUser(userId).then(
      (value) {
        // toggleFollowLoader();
        return value.fold(
            (l) =>
                Logger.printError(l.message),
            (r) async {
              Logger.printSuccess(r.toString());
              notifyListeners();
        });
      },
    );
  }



  Future<void> getAllPeople(BuildContext context, AllPeopleRequestModel allPeopleRequestModel, {bool load = true}) async {
    if(load) toggleLoading();
    _searchRepoImpl.getAllPeople(allPeopleRequestModel).then((value) {
      if(load) toggleLoading();
      return value.fold(
        (l) => showCustomSnackBar(context, text: l.message, color: redColor), 
        (r) {
          _allPeopleResponseModel = r;
          notifyListeners();
          Logger.printSuccess(_allPeopleResponseModel.toString());
          Logger.printInfo("people size ====> ${_allPeopleResponseModel.data?.length ?? 0}");
        }
      );
    });
  }


  Future<void> getAllGroup(BuildContext context, AllGroupRequestModel allGroupRequestModel, {bool load = true}) async {
    if(load) toggleLoading();
    _searchRepoImpl.getAllGroups(allGroupRequestModel).then((value) {
      if(load) toggleLoading();
      return value.fold(
        (l) => showCustomSnackBar(context, text: l.message, color: redColor), 
        (r) {
          _allGroupResponseModel = r;
          Logger.printSuccess(_allPeopleResponseModel.toString());
          Logger.printInfo("group size ====> ${_allGroupResponseModel.data?.length ?? 0}");
          notifyListeners();
        }
      );
    });
  }


  Future<void> getAllGroupsAndPeopleWithLogin(BuildContext context, GetAllGroupsAndPeopleWithLoginRequestModel getAllGroupsAndPeopleWithLoginRequestModel, int pageSize, int pageNumber, {bool load = true, bool isDefault = false, bool clear = false}) async {
    if (load) toggleLoading();
    await _withLoginRepoImpl.getAllGroupsAndPeopleWithLogin(getAllGroupsAndPeopleWithLoginRequestModel, pageSize, pageNumber)
        .then((value) {
      if (load) toggleLoading();
      return value.fold((l) {
        showCustomSnackBar(context, text: l.message, color: redColor);
      }, (r) {
        _getAllGroupsAndPeopleWithLoginResponseModel = r;
        if(clear) _allDataList.clear();
        _allDataList.addAll(r.data ?? []);
        Logger.printSuccess(_allDataList.toString());
        notifyListeners();
        Logger.printSuccess(r.toString());
      });
    });
  }


  void incrementPageNumber() {
    _allDataPageNumber++;
    notifyListeners();
  }

  void resetPageNumber() {
    _allDataPageNumber = 1;
    notifyListeners();
  }

  void clearAllDataList() {
    _allDataList = [];
    notifyListeners();
  }
}

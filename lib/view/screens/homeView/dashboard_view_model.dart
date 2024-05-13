// ignore_for_file: avoid_print, avoid_positional_boolean_parameters, avoid_dynamic_calls, unnecessary_statements

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/groups/groupFollowUnfollow/group_follow_unfollow_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/get_public_posts_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/like_dislike_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/data/remote/report/models/report_model.dart';
import 'package:skill_colab/data/remote/report/report_repo_impl.dart';
import 'package:skill_colab/data/remote/user/models/follow_user_model.dart';
import 'package:skill_colab/data/remote/user/models/unfollow_user_model.dart';
import 'package:skill_colab/data/remote/user/user_repo_impl.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsWithLogin/models/get_all_groups_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllPeopleWithLogin/models/get_all_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/with_login_repo_impl.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsAndPeopleWithoutLogin/models/get_all_groups_and_people_without_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllPeopleWithoutLogin/models/get_all_people_without_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/without_login_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/utils.dart';

final dashboardViewModel =
    ChangeNotifierProvider((ref) => DashboardViewModel(ref: ref));

class DashboardViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  DashboardViewModel({required this.ref});

  final Map<String, dynamic> feedsFilterList = {
    "New": "New",
    "Top": "Top",
    "Comment Count": "commentCount",
  };

  final Map<String, dynamic> timeFilterList = {
    "All Time": "allTime",
    "Past hour": "pastHour",
    "Today": "today",
    "Past week": "pastWeel",
    "Past month": "pastMonth",
    "Past Year": "pastYear",
  };

  /// DATA MEMBERS
  ReportResponseModel _reportResponseModel = const ReportResponseModel();
  final GetPublicPostsRepoImpl _getPublicPostsRepoImpl =
      GetPublicPostsRepoImpl();
  final WithoutLoginRepoImpl _withoutLoginRepoImpl = WithoutLoginRepoImpl();
  final WithLoginRepoImpl _withLoginRepoImpl = WithLoginRepoImpl();
  final ReportRepoImpl _reportRepoImpl = ReportRepoImpl();
  final UserRepoImpl _userRepoImpl = UserRepoImpl();
  final GroupFollowUnfollowRepoImpl _groupFollowUnfollowRepoImpl =
      GroupFollowUnfollowRepoImpl();

  GetPublicPostsResponseModel _publicPostsResponseModel =
      const GetPublicPostsResponseModel();
  final LikeDislikeRepoImpl _likeDislikeRepoImpl = LikeDislikeRepoImpl();
  final List<List<bool>> _likeDislikeList = [];
  GetAllGroupsWithoutLoginResponseModel _getAllGroupsWithoutLoginResponseModel =
      const GetAllGroupsWithoutLoginResponseModel();
  GetAllPeopleWithoutLoginResponseModel _getAllPeopleWithoutLoginResponseModel =
      const GetAllPeopleWithoutLoginResponseModel();
  GetAllGroupsAndPeopleWithoutLoginResponseModel
      _getAllGroupsAndPeopleWithoutLoginResponseModel =
      const GetAllGroupsAndPeopleWithoutLoginResponseModel();

  GetAllGroupsWithLoginResponseModel _getAllGroupsWithLoginResponseModel =
      const GetAllGroupsWithLoginResponseModel();
  GetAllPeopleWithLoginResponseModel _getAllPeopleWithLoginResponseModel =
      const GetAllPeopleWithLoginResponseModel();
  GetAllGroupsAndPeopleWithLoginResponseModel
      _getAllGroupsAndPeopleWithLoginResponseModel =
      const GetAllGroupsAndPeopleWithLoginResponseModel();

  FollowUserResponseModel _followUserResponseModel = const FollowUserResponseModel();
  UnfollowUserResponseModel _unfollowUserResponseModel = const UnfollowUserResponseModel();

  int _allGroupsAndPeoplePageSize = 5;
  int _allGroupsPageSize = 10;
  int _allPeoplePageSize = 10;

  int _pageNumber = 1;
  int _peoplePageNumber = 1;
  int _groupPageNumber = 1;

  int _positionAll = -1;
  int _positionPeople = -1;
  int _positionGroup = -1;


  int _timeFilterIndex = 0;
  int _feedFilterIndex = 0;

  GetAllGroupsAndPeopleWithLoginResponseModel allData =
      const GetAllGroupsAndPeopleWithLoginResponseModel();

  GetAllPeopleWithLoginResponseModel allPeopleData =
      const GetAllPeopleWithLoginResponseModel();
  GetAllGroupsWithLoginResponseModel allGroupsData =
      const GetAllGroupsWithLoginResponseModel();


  bool _allLoader = false;
  bool _peopleLoader = false;
  bool _groupLoader = false;  

  bool _paginationLoader = false;

  /// GETTER
  int get positionAll => _positionAll;
  int get positionPeople => _positionPeople;
  int get positionGroup => _positionGroup;
  GetPublicPostsResponseModel get publicPostsResponseModel =>
      _publicPostsResponseModel;
  List<List<bool>> get likeDislikeList => _likeDislikeList;
  GetAllGroupsWithoutLoginResponseModel
      get getAllGroupsWithoutLoginResponseModel =>
      _getAllGroupsWithoutLoginResponseModel;
  GetAllPeopleWithoutLoginResponseModel
      get getAllPeopleWithoutLoginResponseModel =>
      _getAllPeopleWithoutLoginResponseModel;
  GetAllGroupsAndPeopleWithoutLoginResponseModel
      get getAllGroupsAndPeopleWithoutLoginResponseModel =>
          _getAllGroupsAndPeopleWithoutLoginResponseModel;

  GetAllGroupsWithLoginResponseModel get getAllGroupsWithLoginResponseModel =>
      _getAllGroupsWithLoginResponseModel;
  GetAllPeopleWithLoginResponseModel get getAllPeopleWithLoginResponseModel =>
      _getAllPeopleWithLoginResponseModel;
  GetAllGroupsAndPeopleWithLoginResponseModel
      get getAllGroupsAndPeopleWithLoginResponseModel =>
      _getAllGroupsAndPeopleWithLoginResponseModel;
  ReportResponseModel get reportResponseModel => _reportResponseModel;
  FollowUserResponseModel get followUserResponseModel => _followUserResponseModel;
  UnfollowUserResponseModel get unfollowUserResponseModel => _unfollowUserResponseModel;

  List<PeopleAndGroupPost> _allDataList = [];
  List<DashboardPeopleData> _peopleDataList = [];
  List<DashboardGroupModel> _groupDataList = [];

  GetAllGroupsAndPeopleWithLoginResponseModel get getAllData => allData;
  GetAllPeopleWithLoginResponseModel get getAllPeopleData => allPeopleData;
  GetAllGroupsWithLoginResponseModel get getAllGroupsData => allGroupsData;

  int get timeFilterIndex => _timeFilterIndex;
  int get feedFilterIndex => _feedFilterIndex;

  int get pageNumber => _pageNumber;
  int get peoplePageNumber =>_peoplePageNumber;
  int get groupPageNumber => _groupPageNumber;

  List<PeopleAndGroupPost> get allDataList => _allDataList;
  List<DashboardPeopleData> get peopleDataList => _peopleDataList;
  List<DashboardGroupModel> get groupDataList => _groupDataList;


  bool get allLoader => _allLoader;
  bool get peopleLoader => _peopleLoader;
  bool get groupLoader => _groupLoader;

  bool get paginationLoader => _paginationLoader;

  //setters
  void setAllGroupsAndPeople(
      GetAllGroupsAndPeopleWithLoginResponseModel value,) {
    _getAllGroupsAndPeopleWithLoginResponseModel = value;
    notifyListeners();
  }

  void setAllGroups(GetAllGroupsWithLoginResponseModel value) {
    _getAllGroupsWithLoginResponseModel = value;
    notifyListeners();
  }

  void setAllPeople(GetAllPeopleWithLoginResponseModel value) {
    _getAllPeopleWithLoginResponseModel = value;
    print(_getAllPeopleWithLoginResponseModel);
    notifyListeners();
  }

  int get allGroupsAndPeoplePageSize => _allGroupsAndPeoplePageSize;
  int get allGroupsPageSize => _allGroupsPageSize;
  int get allPeoplePageSize => _allPeoplePageSize;

  /// SETTER
  void setLikeDislikeState(int listIndex, int option, bool flag) {
    _likeDislikeList[listIndex][option] = flag;
    notifyListeners();
  }

  void postionControl(int p){
    _positionAll = p;
    notifyListeners();
  }
  
  void postionPeopleControl(int p){
    _positionPeople = p;
    notifyListeners();
  }

  void postionGroupControl(int p){
    _positionGroup = p;
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

  void togglePaginationLoader() {
    _paginationLoader = !_paginationLoader;
    notifyListeners();
  }

  void toggleAllLoader() {
    _allLoader = !_allLoader;
    notifyListeners();
  }

  void togglePeopleLoader() {
    _peopleLoader = !_peopleLoader;
    notifyListeners();
  }

  void toggleGroupLoader() {
    _groupLoader = !_groupLoader;
    notifyListeners();
  }

  void removeOneDashboardAllPost(String id) {
    _allDataList.removeWhere((element) => (element.id ?? "") == id);
    notifyListeners();
  }


  void removeOneDashboardPeoplePost(String id) {
    _peopleDataList.removeWhere((element) => (element.id ?? "") == id);
    notifyListeners();
  }



  void removeOneDashboardGroupPost(String id) {
    _groupDataList.removeWhere((element) => (element.id ?? "") == id);
    notifyListeners();
  }


  void setAllDataList(List<PeopleAndGroupPost> data) {
    _allDataList = data;
    toggleAllLoader();
    Future.delayed(const Duration(seconds: 2), () {
      toggleAllLoader();
    });
    notifyListeners();
  }

  void setPeopleDataList(List<DashboardPeopleData> data) {
    _peopleDataList = data;
    togglePeopleLoader();
    Future.delayed(const Duration(seconds: 2), () {
      togglePeopleLoader();
    });
    notifyListeners();
  }

  void setGroupDataList(List<DashboardGroupModel> data) {
    _groupDataList = data;
    toggleGroupLoader();
    Future.delayed(const Duration(seconds: 2), () {
      toggleGroupLoader();
    });
    notifyListeners();
  }


  /// OTHER METHODS
  Future<void> getPublicPosts(BuildContext context,
      GetPublicPostsRequestModel getPublicPostsRequestModel, int pageSize, int pageNumber,
      {bool load = true,}) async {
    togglePaginationLoader();
    if (load) {
      toggleLoading();
      toggleGroupLoader();
    }

    await _getPublicPostsRepoImpl
        .getPublicPosts(getPublicPostsRequestModel, pageSize, pageNumber)
        .then((value) {
      if (load) {
        toggleLoading();
        toggleGroupLoader();
      }
      togglePaginationLoader();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) async {
        _publicPostsResponseModel = r;
        _groupDataList.addAll(r.data ?? []);
        Logger.printError(_groupDataList.toString());
        Logger.printSuccess(r.toString());
        // _likeDislikeList.clear();
        // for(int i = 0; i < (r.data?.length ?? 0); i++) {
        //   _likeDislikeList.add([r.data?[i].likeDislike?.isLike ?? false, r.data?[i].likeDislike?.isDislike ?? false]);
        // }
        // Logger.printError(_likeDislikeList.toString());
        notifyListeners();

        // showCustomSnackBar(context, text: "Public Posts fetched successfully", color: Colors.green);
      });
    });
  }

  Future<void> likeDislikePost(BuildContext context,
      LikeDislikeRequestModel likeDislikeRequestModel,) async {
    // toggleLoading();
    _likeDislikeRepoImpl.likeDislikePost(likeDislikeRequestModel).then((value) {
      // toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        const GetPublicPostsRequestModel getPublicPostsRequestModel =
            GetPublicPostsRequestModel(
          interests: '',
          searchKey: '',
          timeFilter: 'allTime',
        );
        getPublicPosts(context, getPublicPostsRequestModel, allGroupsAndPeoplePageSize, pageNumber, load: false);
        // showCustomSnackBar(context, text: "Post like dislike state updated successfully", color: Colors.green);
      });
    });
  }



  Future<void> followUser(BuildContext context, String userId, {bool isCallback = false, Future<void>? callback}) async {
    _userRepoImpl.followUser(userId).then(
      (value) {
        // toggleFollowLoader();
        return value.fold(
            (l) =>
                Logger.printError(l.message),
            (r) async {
              _followUserResponseModel = r;
              Logger.printSuccess(r.toString());
              if(isCallback) {
                callback;
              }
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
              _unfollowUserResponseModel = r;
              Logger.printSuccess(r.toString());
              notifyListeners();
        });
      },
    );
  }



  Future<void> followGroup(BuildContext context, String groupId) async {
    await _groupFollowUnfollowRepoImpl.followGroup(groupId).then((value) {
      // toggleLoading();
      return value.fold((l) {
        Logger.printError(l.message);
      }, (r) {
        Logger.printSuccess("Followed Group ======> $r");
        // getFollowersOfGroup(context, groupId, load: false);
        // showCustomSnackBar(context, text: "Followed Group ======> $r", color: Colors.green);
      });
    });
  }


  Future<void> unfollowGroup(BuildContext context, String groupId) async {
    notifyListeners();

    await _groupFollowUnfollowRepoImpl.unfollowGroup(groupId).then((value) {
      // toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        Logger.printSuccess("Unfollowed Group ======> $r");
        // getFollowersOfGroup(context, groupId, load: false);
        // showCustomSnackBar(context, text: "Unfollowed Group ======> $r", color: Colors.green);
      });
    });
  }


  //============ WITHOUT LOGIN APIS ============//
  Future<void> getAllGroupsWithoutLogin(
      BuildContext context,
      GetAllGroupsWithoutLoginRequestModel getAllGroupsWithoutLoginRequestModel,
      int pageSize,
      {bool load = true,}) async {
    if (load) toggleLoading();
    await _withoutLoginRepoImpl
        .getAllGroupsWithoutLogin(
            getAllGroupsWithoutLoginRequestModel, 30,)
        .then((value) {
      if (load) toggleLoading();
      return value.fold((l) {
        showCustomSnackBar(context, text: l.message, color: redColor);
      }, (r) {
        _getAllGroupsWithoutLoginResponseModel = r;
        notifyListeners();
        Logger.printSuccess(r.toString());
      });
    });
  }

  Future<void> getAllPeopleWithoutLogin(
      BuildContext context,
      GetAllPeopleWithoutLoginRequestModel getAllPeopleWithoutLoginRequestModel,
      int pageSize,
      {bool load = true,}) async {
    if (load) toggleLoading();
    await _withoutLoginRepoImpl
        .getAllPeopleWithoutLogin(
            getAllPeopleWithoutLoginRequestModel, 30,)
        .then((value) {
      if (load) toggleLoading();
      return value.fold((l) {
        showCustomSnackBar(context, text: l.message, color: redColor);
      }, (r) {
        _getAllPeopleWithoutLoginResponseModel = r;
                notifyListeners();
        Logger.printSuccess(r.toString());
      });
    });
  }

  Future<void> getAllGroupsAndPeopleWithoutLogin(
      BuildContext context,
      GetAllGroupsAndPeopleWithoutLoginRequestModel getAllGroupsAndPeopleWithoutLoginRequestModel,
      int pageSize,
      {bool load = true,}) async {
    if (load) toggleLoading();
    await _withoutLoginRepoImpl
        .getAllGroupsAndPeopleWithoutLogin(getAllGroupsAndPeopleWithoutLoginRequestModel, 30)
        .then((value) {
      if (load) toggleLoading();
      return value.fold((l) {
        showCustomSnackBar(context, text: l.message, color: redColor);
      }, (r) {
        _getAllGroupsAndPeopleWithoutLoginResponseModel = r;
        notifyListeners();
        Logger.printSuccess(r.toString());
      });
    });
  }

  //============ WITH LOGIN APIS ============//
  Future<void> getAllGroupsWithLogin(BuildContext context, GetAllGroupsWithLoginRequestModel getAllGroupsWithLoginRequestModel, int pageSize, {bool load = true, bool isDefault = false}) async {
    if (load) toggleLoading();
    togglePaginationLoader();
    await _withLoginRepoImpl
        .getAllGroupsWithLogin(getAllGroupsWithLoginRequestModel, pageSize)
        .then((value) {
      togglePaginationLoader();
      if (load) toggleLoading();
      return value.fold((l) {
        // showCustomSnackBar(context, text: l.message, color: redColor);
      }, (r) {
        _getAllGroupsWithLoginResponseModel = r;
        // _groupDataList.addAll(r.data!.map((e) => Dashbo) ?? []) ;
        notifyListeners();
        if (isDefault) {
          allGroupsData = r;
        }
        notifyListeners();
        Logger.printSuccess(r.toString());
      });
    });
  }

  Future<void> getAllPeopleWithLogin( BuildContext context, GetAllPeopleWithLoginRequestModel getAllPeopleWithLoginRequestModel, int pageSize,  int pageNumber, {bool load = true, bool isDefault = false}) async {
    togglePaginationLoader();
    if (load) {
      toggleLoading();
      togglePeopleLoader();
      _getAllPeopleWithLoginResponseModel = const GetAllPeopleWithLoginResponseModel();
    }

    notifyListeners();
    await _withLoginRepoImpl
        .getAllPeopleWithLogin(getAllPeopleWithLoginRequestModel, pageSize, pageNumber)
        .then((value) {
      if (load) {
        toggleLoading();
        togglePeopleLoader();
      }      
      togglePaginationLoader();
      return value.fold((l) {
        showCustomSnackBar(context, text: l.message, color: redColor);
      }, (r) {
        _getAllPeopleWithLoginResponseModel = r;
        _peopleDataList.addAll(r.data ?? []) ;
        notifyListeners();
        if (isDefault) {
          allPeopleData = r;
        }
        Logger.printSuccess(_getAllPeopleWithLoginResponseModel.toString());
        Logger.printInfo(_getAllPeopleWithLoginResponseModel.data?.length.toString() ?? "");
        Logger.printInfo(getAllPeopleWithLoginResponseModel.data?.length.toString() ?? "");
      });
    });
  }

  Future<void> getAllGroupsAndPeopleWithLogin(BuildContext context, GetAllGroupsAndPeopleWithLoginRequestModel getAllGroupsAndPeopleWithLoginRequestModel, int pageSize, int pageNumber, {bool load = true, bool isDefault = false}) async {
    if (load) {
      toggleLoading();
      toggleAllLoader();
    }  
    togglePaginationLoader();

    await _withLoginRepoImpl.getAllGroupsAndPeopleWithLogin(getAllGroupsAndPeopleWithLoginRequestModel, pageSize, pageNumber)
        .then((value) {
      if (load) {
        toggleLoading();
        toggleAllLoader();
      }  
      togglePaginationLoader();
      return value.fold((l) {
        showCustomSnackBar(context, text: l.message, color: redColor);
      }, (r) {
        _getAllGroupsAndPeopleWithLoginResponseModel = r;
        _allDataList.addAll(r.data ?? []) ;
        if (isDefault) {
          allData = r;
        }
        notifyListeners();
        Logger.printSuccess(r.toString());
        Logger.printSuccess(r.data?.length.toString() ?? "");
      });
    });
  }


  Future<void> getReport(BuildContext context, ReportRequestModel reportRequestModel) async {
    toggleLoading();
    await _reportRepoImpl.getReport(reportRequestModel)
        .then((value) {
    toggleLoading();
      return value.fold((l) {
        showCustomSnackBar(context, text: l.message, color: redColor);
      }, (r) {
       _reportResponseModel = r;
        notifyListeners();
        Logger.printSuccess(r.toString());
      });
    });
  }



  Future<void> reportQuestion(BuildContext context, QuestionReportRequestModel questionReportRequestModel) async {
    toggleLoading();
    await _reportRepoImpl.reportQuestion(questionReportRequestModel)
        .then((value) {
    toggleLoading();
      return value.fold((l) {
        showCustomSnackBar(context, text: l.message, color: redColor);
      }, (r) {
       _reportResponseModel = r;
        notifyListeners();
        Logger.printSuccess(r.toString());
      });
    });
  }


  Future<void> reportTutorial(BuildContext context, TutorialReportRequestModel tutorialReportRequestModel) async {
    toggleLoading();
    await _reportRepoImpl.reportTutorial(tutorialReportRequestModel)
        .then((value) {
    toggleLoading();
      return value.fold((l) {
        showCustomSnackBar(context, text: l.message, color: redColor);
      }, (r) {
       _reportResponseModel = r;
        notifyListeners();
        Logger.printSuccess(r.toString());
      });
    });
  }



  void incrementAllGroupsAndPeoplePageSize() {
    _allGroupsAndPeoplePageSize += 10;
    Logger.printWarning(_allGroupsAndPeoplePageSize.toString());
    notifyListeners();
  }

  void incrementAllPeoplePageSize() {
    _allPeoplePageSize += 10;
    notifyListeners();
  }

  void incrementAllGroupsPageSize() {
    _allGroupsPageSize += 10;
    notifyListeners();
  }

  void incrementPageNumber() {
    _pageNumber++;
    notifyListeners();
  }
  void incrementPeoplePageNumber() {
    _peoplePageNumber++;
    notifyListeners();
  }
  void incrementGroupPageNumber() {
    _groupPageNumber++;
    notifyListeners();
  }


  void clearAllDataList() {
    _allDataList = [];
    _pageNumber = 1;
    notifyListeners();
  }

  void clearPeopleDataList() {
    _peopleDataList = [];
    _peoplePageNumber = 1;
    notifyListeners();
  }

  void clearGroupDataList() {
    _groupDataList = [];
    _groupPageNumber = 1;
    notifyListeners();
  }


  void clearData(){
    _allDataList = [];
    _peopleDataList = [];
    _groupDataList = [];
    _pageNumber = 1;
    _peoplePageNumber = 1;
    _groupPageNumber = 1;
    notifyListeners();
  }

  //! This function is to be called when we get back from a single post page
  //! from any posts shown on the dashboard page
  void callAllData(BuildContext context) {
    clearData();

    getAllGroupsAndPeopleWithLogin(
      context,
      GetAllGroupsAndPeopleWithLoginRequestModel(
        interests: '',
        searchKey: '',
        timeFilter: timeFilterList.values.elementAt(_timeFilterIndex),
        feedFilter: feedsFilterList.values.elementAt(_feedFilterIndex),
      ),
      _allGroupsAndPeoplePageSize,
      _pageNumber,
      isDefault: true,
    );

    getAllPeopleWithLogin(
      context,
      GetAllPeopleWithLoginRequestModel(
        interests: '',
        searchKey: '',
        timeFilter: timeFilterList.values.elementAt(_timeFilterIndex),
        feedFilter: feedsFilterList.values.elementAt(_feedFilterIndex),
      ),
      _allPeoplePageSize,
      _peoplePageNumber,
      isDefault: true,
    );

    getPublicPosts(
      context,
      GetPublicPostsRequestModel(
          searchKey: '',
          interests: '',
          timeFilter: timeFilterList.values.elementAt(_timeFilterIndex),
          feedFilter: feedsFilterList.values.elementAt(_feedFilterIndex),
      ),
      _allGroupsPageSize,
      _groupPageNumber,
    );
  }
}

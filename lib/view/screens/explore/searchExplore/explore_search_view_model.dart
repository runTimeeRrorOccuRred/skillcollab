
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/explore/get_explore_repo_impl.dart';
import 'package:skill_colab/data/remote/explore/models/explore_all_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_group_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_people_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_public_post_model.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/logger.dart';

final exploreSearchViewModel = ChangeNotifierProvider((ref) => ExploreSearchViewModel(ref : ref));

class ExploreSearchViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  ExploreSearchViewModel({required this.ref});

  final GetExploreRepoImpl _getExploreRepoImpl = GetExploreRepoImpl();

  // ========= DATA MEMBER ==========//
  ExplorePeopleResponseModel _explorePeopleResponseModel = const ExplorePeopleResponseModel();
  ExploreGroupResponseModel _exploreGroupResponseModel = const ExploreGroupResponseModel();
  ExplorePublicPostResponseModel _explorePublicPostResponseModel = const ExplorePublicPostResponseModel();
  ExploreAllResponseModel _exploreAllResponseModel = const ExploreAllResponseModel();
  List<ExploreData> _allDataList = [];
  List<PeopleDatum> _peopleDataList = [];
  List<GroupDatum> _groupDataList = [];
  List<PostDatum> _postDataList = [];
  int _allDataPageNumber = 1;

  // =======  GETTER ========//
  ExplorePeopleResponseModel get explorePeopleResponseModel => _explorePeopleResponseModel;
  ExploreGroupResponseModel get exploreGroupResponseModel => _exploreGroupResponseModel;
  ExplorePublicPostResponseModel get explorePublicPostResponseModel => _explorePublicPostResponseModel;
  ExploreAllResponseModel get exploreAllResponseModel => _exploreAllResponseModel;
  int get allDataPageNumber => _allDataPageNumber;
  List<ExploreData> get allDataList => _allDataList;
  List<PeopleDatum> get peopleDataList => _peopleDataList;
  List<GroupDatum> get groupDataList => _groupDataList;
  List<PostDatum> get postDataList => _postDataList;

  // ========= SETTER ===========//


  // ================ OTHER METHOD ====================//

  Future<void> getExplorePeople(BuildContext buildContext, ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int pageNumber, {bool load = true, bool isDefault = false}) async {
    if(load)toggleLoading();
    _getExploreRepoImpl.getExplorePeople(explorePeopleRequestModel, pageSize, pageNumber).then((value) {
      if(load)toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message),
        (r) {
          _explorePeopleResponseModel = r;
          _peopleDataList.addAll(r.data ?? []);
          Logger.printSuccess(r.toString());
          notifyListeners();
        }
      );
    });
  }

  Future<void> getExploreGroup(BuildContext buildContext, ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int pageNumber, {bool load = true, bool isDefault = false}) async {
    if(load)toggleLoading();
    _getExploreRepoImpl.getExploreGroup(explorePeopleRequestModel, pageSize, pageNumber).then((value) {
      if(load)toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message),
        (r) {
          _exploreGroupResponseModel = r;
          _groupDataList.addAll(r.data ?? []);
          Logger.printSuccess(r.toString());
          notifyListeners();
        }
      );
    });
  }

  Future<void> getExplorePost(BuildContext buildContext, ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int pageNumber, {bool load = true, bool isDefault = false}) async {
    if(load)toggleLoading();
    _getExploreRepoImpl.getExplorePost(explorePeopleRequestModel, pageSize, pageNumber).then((value) {
      if(load)toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message),
        (r) {
          _explorePublicPostResponseModel = r;
          _postDataList.addAll(r.data ?? []);
          notifyListeners();
          Logger.printWarning(_postDataList.toString());
        }
      );
    });
  }  

  Future<void> getExploreAll(BuildContext buildContext, ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int pageNumber, {bool load = true, bool isDefault = false}) async {
    if(load)toggleLoading();
    _getExploreRepoImpl.getExploreAll(explorePeopleRequestModel, pageSize, pageNumber).then((value) {
      if(load)toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message),
        (r) {
          _exploreAllResponseModel = r;
          if(!isDefault) {
            _allDataList.addAll(r.data ?? []);
          } else {
            _allDataList = [];
            _allDataList.addAll(r.data ?? []);
          }
          Logger.printSuccess(r.toString());
          Logger.printError(_allDataList.toString());
          notifyListeners();
        }
      );
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
    _postDataList = [];
    _groupDataList = [];
    _peopleDataList = [];
    notifyListeners();
  }
}

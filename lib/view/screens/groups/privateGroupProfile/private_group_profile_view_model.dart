// ignore_for_file: avoid_positional_boolean_parameters
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/customerTips/customer_tips_repo_impl.dart';
import 'package:skill_colab/data/remote/customerTips/models/customer_tips_model.dart';
import 'package:skill_colab/data/remote/groups/cancelRequest/cancel_request_repo_impl.dart';
import 'package:skill_colab/data/remote/groups/cancelRequest/models/cancel_request_model.dart';
import 'package:skill_colab/data/remote/groups/getFollowersOfGroup/get_followers_repo_impl.dart';
import 'package:skill_colab/data/remote/groups/getFollowersOfGroup/model/get_followers_model.dart';
import 'package:skill_colab/data/remote/groups/getGroup/get_group_repo_impl.dart';
import 'package:skill_colab/data/remote/groups/getGroup/models/get_group_model.dart';
import 'package:skill_colab/data/remote/groups/getRatings/get_rating_repo_impl.dart';
import 'package:skill_colab/data/remote/groups/getRatings/models/group_rating_response_model.dart';
import 'package:skill_colab/data/remote/groups/groupFollowUnfollow/group_follow_unfollow_repo_impl.dart';
import 'package:skill_colab/data/remote/groups/userFollowStatus/models/user_follow_status_model.dart';
import 'package:skill_colab/data/remote/groups/userFollowStatus/user_follow_status_repo_impl.dart';
import 'package:skill_colab/data/remote/notifications/models/invite_model.dart';
import 'package:skill_colab/data/remote/notifications/notifications_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/get_posts_by_group_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/like_dislike_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/get_question_by_group_repo_impl.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/models/get_question_by_group_model.dart';
import 'package:skill_colab/data/remote/report/models/report_model.dart';
import 'package:skill_colab/data/remote/report/report_repo_impl.dart';
import 'package:skill_colab/data/remote/tips/group_tips/group_tips_repo_impl.dart';
import 'package:skill_colab/data/remote/tips/group_tips/models/group_tips_model.dart';
import 'package:skill_colab/data/remote/tutorial/deleteTutorial/delete_tutorial_repo_impl.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/get_tutorial_by_group_repo_impl.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/models/get_tutorial_by_group_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart' as gd;
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/components/customButton.dart';
import 'package:skill_colab/view/screens/groups/groupTip/group_tip_stripe_webview.dart';
import 'package:video_player/video_player.dart';

final privateGroupProfileViewModel = ChangeNotifierProvider((ref) => PrivateGroupProfileViewModel(ref: ref));

class PrivateGroupProfileViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  PrivateGroupProfileViewModel({required this.ref}) : super();

  final GetFollowersRepoImpl _getFollowersRepoImpl = GetFollowersRepoImpl();
  final GroupFollowUnfollowRepoImpl _groupFollowUnfollowRepoImpl =
      GroupFollowUnfollowRepoImpl();
  final GetPostsByGroupRepoImpl _getPostsByGroupRepoImpl =
      GetPostsByGroupRepoImpl();
  final GetTutorialByGroupRepoImpl _getTutorialByGroupRepoImpl =
      GetTutorialByGroupRepoImpl();
  final GetGroupRepoImpl _getGroupRepoImpl = GetGroupRepoImpl();
  final GetRatingRepoImpl _getRatingRepoImpl = GetRatingRepoImpl();
  final GetQuestionByGroupRepoImpl _getQuestionByGroupRepoImpl =
      GetQuestionByGroupRepoImpl();
  final UserFollowStatusRepoImpl _userFollowStatusRepoImpl = UserFollowStatusRepoImpl();
  final LikeDislikeRepoImpl _likeDislikeRepoImpl = LikeDislikeRepoImpl();
  final GroupTipsRepoImpl _groupTipsRepoImpl = GroupTipsRepoImpl(ApiClient());
  final ReportRepoImpl _reportRepoImpl = ReportRepoImpl();
  final DeleteTutorialRepoImpl _deleteTutorialRepoImpl = DeleteTutorialRepoImpl();
  final CustomerTipsRepoImpl _customerTipsRepoImpl = CustomerTipsRepoImpl();
  final CancelRequestRepoImpl _cancelRequestRepoImpl = CancelRequestRepoImpl();

  /// DATA MEMBER
  GetFollowersModel _getFollowersModel = const GetFollowersModel();
  GetPostsByGroupModel _postsByGroupModel = const GetPostsByGroupModel();
  GetTutorialResponseModel _getTutorialResponseModel =
      const GetTutorialResponseModel();
  GetTutorialResponseModel _getTutorialResponseSearch =
      const GetTutorialResponseModel();
  bool _isGroupFollowed = false;
  gd.GroupDatum? _groupData = const gd.GroupDatum();
  GroupRatingResponseModel _groupRatingResponseModel =
      const GroupRatingResponseModel();
  GetQuestionByGroupModel _getQuestionByGroupModel = const GetQuestionByGroupModel();
  GetQuestionByGroupModel _getQuestionByGroupModelSearch =
      const GetQuestionByGroupModel();
  VideoPlayerController _controller = VideoPlayerController.networkUrl(Uri.parse(""));
  UserFollowStatusResponseModel _userFollowStatusResponseModel = const UserFollowStatusResponseModel();
  GetGroupResponseModel _getGroupResponseModel = const GetGroupResponseModel();
  final NotificationsRepoImpl _notificationsRepoImpl = NotificationsRepoImpl();
  ReportResponseModel _reportResponseModel = const ReportResponseModel();
  CancelRequestResponseModel _cancelRequestResponseModel = const CancelRequestResponseModel();
  
  bool _reportLoader = false;
  int _position = -1;
  final double _aspectRatio = 9/4;
  int _oneStarRating = 0;
  int _twoStarRating = 0;
  int _threeStarRating = 0;
  int _fourStarRating = 0;
  int _fiveStarRating = 0;
  bool _isGroupRated = false;
  final int _groupPostCount = 0;
  final List<bool> _likes = [];
  final List<bool> _dislikes = [];

  bool _tipLoader = false;

  /// GETTER
  GetFollowersModel get getFollowersModel => _getFollowersModel;
  GetPostsByGroupModel get postsByGroupModel => _postsByGroupModel;
  bool get isGroupFollowed => _isGroupFollowed;
  gd.GroupDatum? get groupData => _groupData;
  GroupRatingResponseModel get groupRatingResponseModel =>
      _groupRatingResponseModel;
  GetQuestionByGroupModel get getQuestionByGroupModel =>
      _getQuestionByGroupModel;
  int get oneStarRating => _oneStarRating;
  int get twoStarRating => _twoStarRating;
  int get threeStarRating => _threeStarRating;
  int get fourStarRating => _fourStarRating;
  int get fiveStarRating => _fiveStarRating;
  bool get isGroupRated => _isGroupRated;
  double get aspectRatio => _aspectRatio;
  int get position => _position;
  GetTutorialResponseModel get getTutorialResponseModel =>
      _getTutorialResponseModel;
  GetQuestionByGroupModel get getQuestionSearch =>
      _getQuestionByGroupModelSearch;
  VideoPlayerController get controller => _controller;
  CancelRequestResponseModel get cancelRequestResponseModel => _cancelRequestResponseModel;

  GetTutorialResponseModel get getTutorialSearch => _getTutorialResponseSearch;
  GetGroupResponseModel get getGroupResponseModel => _getGroupResponseModel;
  UserFollowStatusResponseModel get userFollowStatusResponseModel => _userFollowStatusResponseModel;
  ReportResponseModel get reportResponseModel => _reportResponseModel;

  int get groupPostCount => _groupPostCount;

  List<bool> get likes => _likes;
  List<bool> get dislikes => _dislikes;
  bool get reportLoader => _reportLoader;
  bool get tipLoader => _tipLoader;

  /// SETTER
  void setGroupData(gd.GroupDatum datum) {
    Logger.printInfo(datum.toString());
    _groupData = datum;
    notifyListeners();
    Logger.printInfo(_groupData.toString());
  }

  void oneStar(int oneStarRate) {
    _oneStarRating = oneStarRate;
    notifyListeners();
  }

  void twoStar(int twoStarRate) {
    _twoStarRating = twoStarRate;
    notifyListeners();
  }

  void threeStar(int threeStarRate) {
    _threeStarRating = threeStarRate;
    notifyListeners();
  }

  void fourStar(int fourStarRate) {
    _fourStarRating = fourStarRate;
    notifyListeners();
  }

  void fiveStar(int fiveStarRate) {
    _fiveStarRating = fiveStarRate;
    notifyListeners();
  }

  void toggleReportLoader() {
    _tipLoader = !_tipLoader;
    notifyListeners();
  }

  void isGroupRating(bool isGroupSelfRated) {
    _isGroupRated = isGroupSelfRated;
    notifyListeners();
  }

  void setQuestionSearch(
      GetQuestionByGroupModel getQuestionByGroupModelSearch,) {
    _getQuestionByGroupModelSearch = getQuestionByGroupModelSearch;
    notifyListeners();
  }

  void setTutorialSearch(GetTutorialResponseModel getTutorialResponseModel) {
    _getTutorialResponseSearch = getTutorialResponseModel;
    notifyListeners();
  }

  void addLikes(bool likes) {
    _likes.add(likes);
    notifyListeners();
  }

  void addDislikes(bool dislikes) {
    _dislikes.add(dislikes);
    notifyListeners();
  }

  void changeLikes(int index, bool likes) {
    _likes[index] = likes;
    notifyListeners();
  }

  void changeDislikes(int index, bool dislikes) {
    _dislikes[index] = dislikes;
    notifyListeners();
  }
  
  void videoController(String video){
    _controller = VideoPlayerController.networkUrl(Uri.parse(video))..initialize()..play()..setLooping(true);
    // final Size videoSize = _controller.value.size;
    // _aspectRatio = videoSize.width / videoSize.height;
    notifyListeners();
  }

  void toggleTipLoader() {
    _reportLoader = !_reportLoader;
    notifyListeners();
  }

  void postionControl(int p){
    _position = p;
    notifyListeners();
  }

  void disposeController() {
    _controller.dispose();
    _position = -1;
  }

  /// OTHER METHODS
  Future<void> getFollowersOfGroup(BuildContext context, String groupId,
      {bool load = true, bool isOwner = false,}) async {
    if (load) toggleLoading();
    _getFollowersRepoImpl.getFollowersOfGroup(groupId).then((value) {
      if (load) toggleLoading();
      value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _getFollowersModel = r;
        Logger.printInfo((_getFollowersModel.data
                    ?.where((element) =>
                        (element.userId?.id ?? "") == AppConstants.userId,)
                    .toList()
                    .isNotEmpty ??
                false)
            .toString(),);
        Logger.printInfo(_getFollowersModel.data?.toString() ?? "");
        Logger.printInfo(AppConstants.userId);

        if((getFollowersModel.data?.where((element) => (element.userId?.id ?? "") == AppConstants.userId,).toList().isEmpty ?? true) && isOwner) {
          followGroup(context, groupId);
        }

        if(_getFollowersModel.data
                ?.where((element) =>
                    (element.userId?.id ?? "") == AppConstants.userId,).toList().isNotEmpty ?? false) {
          setIsGroupFollowing(_getFollowersModel.data
                ?.where((element) =>
                    (element.userId?.id ?? "") == AppConstants.userId,).toList()[0].status == "accepted",);
        }       
        notifyListeners();
        // showCustomSnackBar(context, text: "Followers fetched successfully", color: Colors.green);
      });
    });
  }

  Future<void> followGroup(BuildContext context, String groupId) async {
  //  if(_isGroupFollowed == false) _isGroupFollowed = !_isGroupFollowed;
    notifyListeners();

    await _groupFollowUnfollowRepoImpl.followGroup(groupId).then((value) {
      // toggleLoading();
      return value.fold((l) {
        Logger.printError(l.message);
        if (l.message == "User is already following the group!") {
          setIsGroupFollowing(true);
        }
      }, (r) {
        Logger.printSuccess("Followed Group ======> $r");
        getFollowersOfGroup(context, groupId, load: false);
        // showCustomSnackBar(context, text: "Followed Group ======> $r", color: Colors.green);
      });
    });
  }

  Future<void> unfollowGroup(BuildContext context, String groupId) async {
    // toggleLoading();
    _isGroupFollowed = !_isGroupFollowed;
    notifyListeners();

    await _groupFollowUnfollowRepoImpl.unfollowGroup(groupId).then((value) {
      // toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        Logger.printSuccess("Unfollowed Group ======> $r");
        getFollowersOfGroup(context, groupId, load: false);
        // showCustomSnackBar(context, text: "Unfollowed Group ======> $r", color: Colors.green);
      });
    });
  }

  Future<void> removeFollower(BuildContext context, String userId) async {
    toggleLoading();
    _groupFollowUnfollowRepoImpl.unfollowGroup(userId).then((value) {
      toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        Logger.printSuccess("Is user removed ======> $r");
        showCustomSnackBar(context,
            text: "Is user removed ======> $r", color: Colors.green,);
      });
    });
  }

  Future<void> getPostsByGroup(
    BuildContext context,
    GetPostsByGroupRequestModel getPostsByGroupRequestModel,
    String groupId,
    {bool load = false,}
  ) async {
    if(load) toggleLoading();
    Logger.printError(getPostsByGroupRequestModel.toString());
    await _getPostsByGroupRepoImpl
        .getPostsByGroup(getPostsByGroupRequestModel, groupId)
        .then((value) {
      if(load) toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _postsByGroupModel = r;
        Logger.printInfo("Get Post Data$r");
        // _likes.clear();
        // _dislikes.clear();

        // _groupPostCount = _postsByGroupModel.data?.length ?? 0;
        // // log("Group Post Count =====> $_groupPostCount");
        // for (int i = 0; i < _groupPostCount; i++) {
        //   if (postsByGroupModel.data?[i].likeDislike?.isLike ?? false == true) {
        //     addLikes(true);
        //     addDislikes(false);
        //   } else if (postsByGroupModel.data?[i].likeDislike?.isDislike ??
        //       false == true) {
        //     addDislikes(true);
        //     addLikes(false);
        //   } else {
        //     addDislikes(false);
        //     addLikes(false);
        //   }
        //   // Logger.printSuccess(
        //   //   "Likes: $_likes\nDislikes: $_dislikes",
        //   // );
        //   // showCustomSnackBar(context, text: "Fetched", color: Colors.green);
        // }
        notifyListeners();
      });
    });
  }

  Future<void> getTutorialByGroup(
    BuildContext context,
    String groupId,
    GetTutorialRequestModel getTutorialRequestModel,
  ) async {
    // toggleLoading();
    _getTutorialByGroupRepoImpl
        .getTutorialByGroup(
            getTutorialRequestModel, groupId,)
        .then((value) {
      // toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _getTutorialResponseModel = r;
        Logger.printSuccess(r.toString());
        notifyListeners();
      });
    });
  }

  Future<void> getTutorialByGroupSearch(
    BuildContext context,
    GetTutorialRequestModel requestModel,
    String groupId,
  ) async {
    // toggleLoading();
    _getTutorialByGroupRepoImpl
        .getTutorialByGroup(requestModel, groupId)
        .then((value) {
      // toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _getTutorialResponseSearch = r;
        Logger.printSuccess(r.toString());
        notifyListeners();
      });
    });
  }

  Future<void> getQuestionByGroup( BuildContext context,
    String groupId,
    GetQuestionByGroupRequestModel getQuestionByGroupRequestModel,
  ) async {
    // toggleLoading();
    _getQuestionByGroupRepoImpl
        .getQuestionByGroup(
            getQuestionByGroupRequestModel, groupId,)
        .then((value) {
      // toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _getQuestionByGroupModel = r;
        notifyListeners();
      });
    });
  }

  Future<void> getQuestionByGroupSearch(
    BuildContext context,
    GetQuestionByGroupRequestModel request,
    String groupId,
  ) async {
    // toggleLoading();
    _getQuestionByGroupRepoImpl
        .getQuestionByGroup(request, groupId)
        .then((value) {
      // toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _getQuestionByGroupModelSearch = r;
        notifyListeners();
      });
    });
  }

  Future<void> getGroupRating(BuildContext context, String groupId,
      {int rating = 0,}) async {
    clearAllData();
    await _getRatingRepoImpl
        .getGroupRating(groupId, rating: rating)
        .then((value) {
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        Logger.printSuccess(r.toString());
        _groupRatingResponseModel = r;
        if(r.data?.isNotEmpty ?? false) {
          calculate();
          Logger.printSuccess(twoStarRating.toString());
          Logger.printSuccess(fourStarRating.toString());
        } else {
          Logger.printSuccess("No ratings added for the group");
        }
        notifyListeners();
      });
    });
  }


  

  Future<void> getGroupDataFromApi(BuildContext context, String groupId) async {
    // toggleLoading();
    await _getGroupRepoImpl.getGroup(groupId).then((value) {
      // toggleLoading();
      return value.fold(
          (l) => showCustomSnackBar(context, text: l.message, color: redColor),
          (r) {
        Logger.printWarning(r.toString());
        _getGroupResponseModel = r;
        notifyListeners();

        final gd.UserId userId = gd.UserId?.fromJson(r.data?.userId?.toJson() ?? {});

        final gd.GroupDatum groupDatum = gd.GroupDatum(
          averageRating: r.data?.averageRating?.toDouble() ?? 0,
          coverPhoto: r.data?.coverPhoto ?? "",
          groupPhoto: r.data?.groupPhoto ?? "",
          createdAt: r.data?.createdAt ?? DateTime.now(),
          updatedAt: r.data?.updatedAt ?? DateTime.now(),
          description: r.data?.description ?? "",
          discount: r.data?.discount ?? "",
          follower: r.data?.followers ?? 0,
          id: r.data?.id ?? "",
          interests: r.data?.interests ?? [],
          location: r.data?.location ?? "",
          name: r.data?.name ?? "",
          oneMonthSubscriptionPrice: r.data?.oneMonthSubscriptionPrice ?? "",
          sixMonthSubscriptionPrice: r.data?.sixMonthSubscriptionPrice ?? "",
          twelveMonthSubscriptionPrice: r.data?.twelveMonthSubscriptionPrice ?? "",
          privacy: r.data?.privacy ?? "",
          productId: r.data?.productId ?? "",
          promoCode: r.data?.promoCode ?? "",
          rating: r.data?.rating ?? 0,
          subscribers: r.data?.subscribers ?? [],
          userId: userId,
        );

        Logger.printError(r.toString());
        Logger.printSuccess(groupDatum.toString());
        _groupData = groupDatum;

        notifyListeners();
      });
    });
  }

  void load() {
    toggleLoading();
  }

  String formatMembers(int number) {
    return number == 1 ? 'Member' : 'Members';
  }

  void setIsGroupFollowing(bool flag) {
    _isGroupFollowed = flag;
    notifyListeners();
  }

  // void removeFollowerLocally(String userId) {
  //   _getFollowersModel = GetFollowersModel(
  //     code: _getFollowersModel.code,
  //     isSuccess: _getFollowersModel.isSuccess,
  //     message: _getFollowersModel.message,
  //     data: _getFollowersModel.data?.where((element) => (element.userId?.id ?? "") != userId).toList() ?? []
  //   );
  // }

  void calculate() {
    for (int i = 0;
        i < (_groupRatingResponseModel.data?[0].reviews?.length ?? 0);
        i++) {
      if (_groupRatingResponseModel.data?[0].reviews?[i].rating == 1) {
        _oneStarRating++;
      } else if (_groupRatingResponseModel.data?[0].reviews?[i].rating == 2) {
        _twoStarRating++;
      } else if (_groupRatingResponseModel.data?[0].reviews?[i].rating == 3) {
        _threeStarRating++;
      } else if (_groupRatingResponseModel.data?[0].reviews?[i].rating == 4) {
        _fourStarRating++;
      } else {
        _fiveStarRating++;
      }
    }
  }

  void clearAllData() {
    _oneStarRating = 0;
    _twoStarRating = 0;
    _threeStarRating = 0;
    _fourStarRating = 0;
    _fiveStarRating = 0;
    notifyListeners();
  }

  void checkGroupRated(String uid) {
    for (int i = 0;
        i < (_groupRatingResponseModel.data?[0].reviews?.length ?? 0);
        i++) {
      if (_groupRatingResponseModel.data?[0].reviews?[i].userId == uid) {
        _isGroupRated = true;
      }
    }
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
        // getPostsByGroup(context, groupData?.id ?? "");
        // showCustomSnackBar(context, text: "Post like dislike state updated successfully",color: Colors.green);
      });
    });
  }



  Future<void> getUserFollowStatus(String groupId) async {
    // toggleLoading();
    await _userFollowStatusRepoImpl.getUserFollowStatus(groupId).then((value) {
      // toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _userFollowStatusResponseModel = r;
          notifyListeners();
          Logger.printSuccess(_userFollowStatusResponseModel.toString());
        }
      );
    });
  }

Future<void> groupTips(BuildContext context, GroupTipsRequestModel groupTipsRequestModel, String consumerId, int amount) async {
    Logger.printError(consumerId);
    toggleLoading();
    _groupTipsRepoImpl.grouptips(groupTipsRequestModel ,consumerId).then((value) {
      toggleLoading();
      return value.fold(
          (l) =>
              showDialog(
            context: context, 
            builder: (BuildContext context) {
            return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: const Center(child: Text("Error", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),)),
            content: SizedBox(
              height: MediaQuery.of(context).size.height / 6.5,
              child: Column(
                children: [
                  
                  Text(l.message, style: TextStyle(color: Colors.grey[600]), textAlign: TextAlign.center,),
                  gapH16,
                  gapH16,
                  gapH16,
                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: const CustomButton(
                        text: "OK",
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          );
          },
          ),
          // ignore: void_checks
          (r) {
        Logger.printSuccess("Tip sent Successfully ======> $r");
        showDialog(
            context: context, 
            builder: (BuildContext context) {
            return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: const Center(child: Text("Tip Message", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: primaryColor),)),
            content: SizedBox(
              height: MediaQuery.of(context).size.height / 6.5,
              child: Column(
                children: [
                  
                  Text("Tip amount of \$$amount sent Successfully.", style: TextStyle(color: Colors.grey[600]), textAlign: TextAlign.center,),
                  gapH16,
                  gapH16,
                  gapH16,
                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: const CustomButton(
                        text: "OK",
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          );
          },
          );
        
        //show dialog
      });
    });
  }


  Future<void> triggerInviteNotification(InviteRequestModel inviteRequestModel) async {
    _notificationsRepoImpl.inviteNotificationTrigger(inviteRequestModel).then((value) {
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          Logger.printSuccess(r);
        }
      );
    });
  }


  Future<void> reportTutorial(ReportRequestModel reportRequestModel) async {
    toggleReportLoader();
    await _reportRepoImpl.getReport(reportRequestModel).then((value) {
      toggleReportLoader();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _reportResponseModel = r;
          notifyListeners();
          Logger.printSuccess(_reportResponseModel.toString());
        }
      );
    });
  }


  Future<void> deleteTutorial(String tutorialId) async {
    // _deleteTutorialLoader = true;
    // notifyListeners();

    await _deleteTutorialRepoImpl.deleteTutorial(tutorialId).then((value) {
      // _deleteTutorialLoader = false;
      // notifyListeners();

      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          Logger.printSuccess(r.toString());
        }
      );
    });
  }


  Future<void> getGroupTipStripeLink(BuildContext context, CustomerTipRequestModel customerTipRequestModel, String customerId) async {
    toggleTipLoader();
    await _customerTipsRepoImpl.getCustomerTipStripeLink(customerTipRequestModel, customerId).then((value) {
      toggleTipLoader();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => GroupTipStripeWebview(
            paymentUrl: r.data?.sessionUrl ?? "", 
            groupId: customerTipRequestModel.groupId ?? "",
            tipAmount: customerTipRequestModel.tipAmount ?? 0,
          ),),);
        }
      );
    });
  }




  Future<void> cancelRequestPrivateGroup(BuildContext context, String groupId) async {
    await _cancelRequestRepoImpl.cancelPrivateGroupRequest(groupId).then((value) {
      return value.fold(
        (l) => showCustomSnackBar(context, text: l.message, color: Colors.red), 
        (r) {
          _cancelRequestResponseModel = r;
          notifyListeners();
        },
      );
    });
  }
}

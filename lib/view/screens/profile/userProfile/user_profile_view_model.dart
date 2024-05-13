// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/data/remote/customerSubscribe/customer_subscribe_repo_impl.dart';
import 'package:skill_colab/data/remote/customerSubscribe/models/customer_subscribe_model.dart';
import 'package:skill_colab/data/remote/payment/add_bank/add_bank_repo_impl.dart';
import 'package:skill_colab/data/remote/payment/add_bank/models/customer_add_bank_model.dart';
import 'package:skill_colab/data/remote/posts/deletePost/delete_post_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/deletePost/models/delete_post_model.dart';
import 'package:skill_colab/data/remote/posts/getPosts/get_posts_repo_impl.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/data/remote/premium/group/plan_creation/models/get_customer_plan_model.dart';
import 'package:skill_colab/data/remote/premium/group/plan_creation/plan_creation_repo_impl.dart';
import 'package:skill_colab/data/remote/tips/user_tips/user_tips_repo_impl.dart';
import 'package:skill_colab/data/remote/user/models/follow_status_user_model.dart';
import 'package:skill_colab/data/remote/user/models/follow_user_model.dart';
import 'package:skill_colab/data/remote/user/models/get_followers_by_user_model.dart';
import 'package:skill_colab/data/remote/user/models/member_of_model.dart';
// import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_model.dart';
import 'package:skill_colab/data/remote/user/models/single_user_model.dart';
import 'package:skill_colab/data/remote/user/models/unfollow_user_model.dart';
import 'package:skill_colab/data/remote/user/user_repo_impl.dart';
import 'package:skill_colab/data/remote/userSubscription/createSubsscriptionPlan/create_user_plan_repo_impl.dart';
import 'package:skill_colab/data/remote/userSubscription/createSubsscriptionPlan/models/create_user_plan_model.dart';
// import 'package:skill_colab/data/remote/userSubscription/editSubscriptionPlan/edit_subsccdription_plan_repo.dart';
import 'package:skill_colab/data/remote/userSubscription/editSubscriptionPlan/edit_subscription_plan_repo_impl.dart';
import 'package:skill_colab/data/remote/userSubscription/editSubscriptionPlan/models/edit_subscription_plan_model.dart';
import 'package:skill_colab/data/remote/userSubscription/subscribeUser/models/subscribe_user_model.dart';
import 'package:skill_colab/data/remote/userSubscription/subscribeUser/subscribe_user_repo_impl.dart';
import 'package:skill_colab/data/remote/userSubscription/subscriptionPlan/models/user_subscription_plan_model.dart';
import 'package:skill_colab/data/remote/userSubscription/subscriptionPlan/user_subscription_plan_repo_impl.dart';
import 'package:skill_colab/data/remote/userSubscription/unsubscribeUser/models/unsubscribe_user_model.dart';
import 'package:skill_colab/data/remote/userSubscription/unsubscribeUser/unsubscribe_user_repo_impl.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/utils/app_sizes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/logger.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/view/components/customButton.dart';
// import 'package:skill_colab/view/screens/profile/userProfile/user_subscribe_payment_webview.dart';
import 'package:video_player/video_player.dart';
// import 'package:skill_colab/utils/logger.dart';
// import 'package:skill_colab/utils/snackback.dart';

final userProfileViewModel =
    ChangeNotifierProvider((ref) => UserProfileViewModel(ref: ref));

class UserProfileViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  UserProfileViewModel({required this.ref});

  final UserRepoImpl _userRepoImpl = UserRepoImpl();
  final GetPostsRepoImpl _getPostsRepoImpl = GetPostsRepoImpl();
  final DeletePostRepoImpl _deletePostRepoImpl = DeletePostRepoImpl();
  final UserSubscriptionPlanRepoImpl _userSubscriptionPlanRepoImpl = UserSubscriptionPlanRepoImpl();
  final PlanCreationRepoImpl _planCreationRepoImpl = PlanCreationRepoImpl();
  final SubscribeUserRepoImpl _subscribeUserRepoImpl = SubscribeUserRepoImpl();
  final UnsubscribeUserRepoImpl _unsubscribeUserRepoImpl = UnsubscribeUserRepoImpl();
  final EditSubscriptionPlanRepoImpl _editSubscriptionPlanRepoImpl = EditSubscriptionPlanRepoImpl(ApiClient());
  final UserTipsRepoImpl _userTipsRepoImpl = UserTipsRepoImpl(ApiClient());
  final CreateUserPlanRepoImpl _createUserPlanRepoImpl = CreateUserPlanRepoImpl();
  final AddBankRepoImpl _addBankRepoImpl = AddBankRepoImpl();
  final CustomerSubscribeRepoImpl _customerSubscribeRepoImpl = CustomerSubscribeRepoImpl();

  /// DATA MEMBERS
  EditUserSubscriptionPlanResponseModel _editUserSubscriptionPlanResponseModel = const EditUserSubscriptionPlanResponseModel();
  GetCustomerPlanResponseModel _getCustomerPlanResponseModel = const GetCustomerPlanResponseModel();
  SingleUserResponseModel _singleUserResponseModel = const SingleUserResponseModel();
  // GetPostsUserResponseModel _getPostsUserResponseModel = GetPostsUserResponseModel();
  GetPostsByUserIdResponseModel _getPostsByUserIdResponseModel = const GetPostsByUserIdResponseModel();
  GetPostsByUserIdResponseModel _getPremiumPostsByUserIdResponseModel = const GetPostsByUserIdResponseModel();
  DeletePostByIdResponseModel? deletePostByIdResponseModel;
  UserSubscriptionPlanResponseModel _userSubscriptionPlanResponseModel = const UserSubscriptionPlanResponseModel();
  FollowUserResponseModel _followUserResponseModel = const FollowUserResponseModel();
  UnfollowUserResponseModel _unfollowUserResponseModel = const UnfollowUserResponseModel();
  FollowStatusUserResponseModel? _followStatusUserResponseModel;
  GetFollowersByUserResponseModel _getFollowersByUserResponseModel = const GetFollowersByUserResponseModel();
  MemberOfResponseModel _memberOfResponseModel = const MemberOfResponseModel();
  bool _followButtonLoader = false;
  bool _subscribeButtonLoader = false;
  VideoPlayerController _controller = VideoPlayerController.networkUrl(Uri.parse(""));
  CreateUserPlanResponseModel _createUserPlanResponseModel = const CreateUserPlanResponseModel();
  bool _createUserPlanLoader = false;
  AddBankResponseModel _addBankResponseModel = const AddBankResponseModel();
  CustomerSubscribeResponseModel _customerSubscribeResponseModel = const CustomerSubscribeResponseModel();

  int _positionAll = -1;
  final double _aspectRatio = 9/4;

  SubscribeUserResponseModel _subscribeUserResponseModel = const SubscribeUserResponseModel();
  UnsubscribeUserResponseModel _unsubscribeUserResponseModel = const UnsubscribeUserResponseModel();

  int _publicPostsLength = 0;
  int _premiumPostsLength = 0;
  bool _getPaymentLinkLoader = false;  

  /// GETTERS
  double get aspectRatio => _aspectRatio;
  int get positionAll => _positionAll;
  VideoPlayerController get controller => _controller;
  SingleUserResponseModel get singleUserResponseModel =>
      _singleUserResponseModel;
  // GetPostsUserResponseModel get getPostsUserResponseModel => _getPostsUserResponseModel;
  GetPostsByUserIdResponseModel get getPostsByUserIdResponseModel =>
      _getPostsByUserIdResponseModel;
  GetPostsByUserIdResponseModel get getPremiumPostsByUserIdResponseModel => _getPremiumPostsByUserIdResponseModel;
  FollowUserResponseModel get followUserResponseModel => _followUserResponseModel;
  UnfollowUserResponseModel get unfollowUserResponseModel => _unfollowUserResponseModel;
  FollowStatusUserResponseModel? get followStatusUserResponseModel => _followStatusUserResponseModel;
  GetFollowersByUserResponseModel get getFollowersByUserResponseModel => _getFollowersByUserResponseModel;
  MemberOfResponseModel get memberOfResponseModel => _memberOfResponseModel;
  bool get followButtonLoader => _followButtonLoader;
  bool get subscribeButtonLoader => _subscribeButtonLoader;
  UserSubscriptionPlanResponseModel get userSubscriptionPlanResponseModel => _userSubscriptionPlanResponseModel;
  GetCustomerPlanResponseModel get getCustomerPlanResponseModel => _getCustomerPlanResponseModel;
  SubscribeUserResponseModel get subscribeUserResponseModel => _subscribeUserResponseModel;
  UnsubscribeUserResponseModel get unsubscribeUserResponseModel => _unsubscribeUserResponseModel;
  EditUserSubscriptionPlanResponseModel get editUserSubscriptionPlanResponseModel => _editUserSubscriptionPlanResponseModel;
  CreateUserPlanResponseModel get createUserPlanResponseModel => _createUserPlanResponseModel;
  bool get createUserPlanLoader => _createUserPlanLoader;
  AddBankResponseModel get addBankResponseModel => _addBankResponseModel;
  CustomerSubscribeResponseModel get customerSubscribeResponseModel => _customerSubscribeResponseModel;

  int get publicPostsLength => _publicPostsLength;
  int get premiumPostsLength => _premiumPostsLength;
  bool get getPaymentLinkLoader => _getPaymentLinkLoader;

  /// SETTERS
  void toggleFollowLoader() {
    _followButtonLoader = !_followButtonLoader;
    notifyListeners();
  }

  void toggleSubscribeLoader() {
    _subscribeButtonLoader = !_subscribeButtonLoader;
    notifyListeners();
  }

  void videoController(String video){
    _controller = VideoPlayerController.networkUrl(Uri.parse(video))..initialize()..play()..setLooping(true);
    // final Size videoSize = _controller.value.size;
    // _aspectRatio = videoSize.width / videoSize.height;
    notifyListeners();
  }

  void postionControl(int p){
    _positionAll = p;
    notifyListeners();
  }

  void togglePaymentLinkLoader() {
    _getPaymentLinkLoader = !_getPaymentLinkLoader;
    notifyListeners();
  }

  void disposeController() {
    _controller.dispose();
    _positionAll = -1;
  }



  /// OTHER METHODS
  Future<void> getUserById(BuildContext context, String userId, {bool load = true}) async {
    if(load) toggleLoading();
    await _userRepoImpl.getSingleUser(userId).then((value) {
      if(load) toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
        _singleUserResponseModel = r;
        Logger.printSuccess(r.toString());
        notifyListeners();
      });
    });
  }

  Future<void> deletePost(BuildContext context, String postId) async{
    Logger.printInfo(postId);
    toggleLoading();
    notifyListeners();
    await _deletePostRepoImpl.deletePost(postId).then((value) {
      toggleLoading();
      return value.fold(
        (l) {
          Logger.printError(l.message);
        }, 
        (r) {
          deletePostByIdResponseModel = r;
          Logger.printSuccess(r.message.toString());
        // getPostsByUserId(context, getPostsByUserIdRequestModel, userId)
      });

    });
  }

  // Future<void> getSelfPost(BuildContext context, GetPostsUserRequestModel getPostsUserRequestModel) async {
  //   // toggleLoading();
  //   await _getPostsRepoImpl.getPostsOfSelf(getPostsUserRequestModel).then((value) {
  //     // toggleLoading();
  //     return value.fold(
  //       (l) => Logger.printError(l.message),
  //       (r) {
  //         _getPostsUserResponseModel = r;
  //         Logger.printSuccess(r.toString());
  //         notifyListeners();
  //       }
  //     );
  //   });
  // }

  Future<void> getPostsByUserId(BuildContext context,GetPostsByUserIdRequestModel getPostsByUserIdRequestModel, String userId, {bool load = true}) async {
    if(load) toggleLoading();
    _getPostsRepoImpl.getPostsByUserId(getPostsByUserIdRequestModel, userId).then((value) {
      if(load) toggleLoading();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
          if(getPostsByUserIdRequestModel.privacy == "public") {
            _publicPostsLength = r.data?.length ?? 0;
            _getPostsByUserIdResponseModel = r;
          } else {
            _getPremiumPostsByUserIdResponseModel = r;
            _premiumPostsLength = r.data?.length ?? 0;
          }
          Logger.printSuccess(r.toString());
          Logger.printSuccess(r.data!.length.toString());
          notifyListeners();
      });
    });
  }

  Future<void> customerPlan(BuildContext context, String productId, {bool load = true}) async {
    if(load) toggleSubscribeLoader();
    _planCreationRepoImpl.getCustomerPlan(GetCustomerPlanRequestModel(product: productId)).then((value) {
      if(load) toggleSubscribeLoader();
      return value.fold(
          (l) =>
              Logger.printError(l.message),
          (r) {
          _getCustomerPlanResponseModel = r;
          Logger.printSuccess(r.toString());
          notifyListeners();
      });
    });
  }

  Future<void> followUser(BuildContext context, String userId) async {
    toggleFollowLoader();
    _userRepoImpl.followUser(userId).then(
      (value) {
        toggleFollowLoader();
        return value.fold(
            (l) =>
                Logger.printError(l.message),
            (r) async {
              _followUserResponseModel = r;
              followStatusUser(userId);

          Logger.printSuccess(r.toString());
          notifyListeners();
        });
      },
    );
  }

  Future<void> unfollowUser(BuildContext context, String userId) async {
    toggleFollowLoader();
    _userRepoImpl.unfollowUser(userId).then(
      (value) {
        toggleFollowLoader();
        return value.fold(
            (l) =>
                Logger.printError(l.message),
            (r) async {
              _unfollowUserResponseModel = r;
              followStatusUser(userId);
              Logger.printSuccess(r.toString());
              notifyListeners();
        });
      },
    );
  }
  
  Future<void> followStatusUser(String userId, {bool load = true}) async {
    if(load) toggleFollowLoader();
    _userRepoImpl.followStatusUser(userId).then(
      (value) {
        if(load) toggleFollowLoader();
        return value.fold(
            (l)=> Logger.printError(l.message),
                // Logger.printError(l.message),
            (r) async {
              Logger.printSuccess("this is the id of the user $userId");
              _followStatusUserResponseModel = r;
              Logger.printSuccess(r.toString());
              notifyListeners();
        });
      },
    );
  }


  Future<void> getFollowersByUser(String userId, {bool load = true}) async {
    toggleLoading();
    _userRepoImpl.getFollowersByUserModel(userId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _getFollowersByUserResponseModel = r;
          Logger.printSuccess(r.toString());
          notifyListeners();
        }
      );
    });
  }


  Future<void> getUserMemberOfList(String userId, {bool load = true}) async {
    toggleLoading();
    _userRepoImpl.getUserMemberOfList(userId).then((value) {
      toggleLoading();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _memberOfResponseModel = r;
          notifyListeners();
          Logger.printSuccess(_memberOfResponseModel.toString());
        }
      );
    });
  }

  Future<void> userSubscriptionPlan(BuildContext context, UserSubscriptionPlanRequestModel userSubscriptionPlanRequestModel)async{
    _userSubscriptionPlanRepoImpl.subscriptionPlan(userSubscriptionPlanRequestModel).then((value) {
      return value.fold(
        (l) => showCustomSnackBar(context, text: "${l.message}\nPlease try again", color: Colors.red),
        (r) {
          showCustomSnackBar(context, text: "Subscription Plan Added", color: Colors.green);
          _userSubscriptionPlanResponseModel = r;
          Logger.printSuccess(r.toString());
          notifyListeners();
          context.pop();
        }
      );
    });
  }

  Future<void> subscribeUser(BuildContext context, SubscribeUserRequestModel subscribeUserRequestModel, String customerId) async {
    toggleSubscribeLoader();
    _subscribeUserRepoImpl.subscribeUser(subscribeUserRequestModel, customerId).then((value) {
      toggleSubscribeLoader();
      return value.fold(
        (l) { 
          // if (_followStatusUserResponseModel?.data?.isFollow == false) {
          //   followUser(context, ref.read(userProfileViewModel).singleUserResponseModel.data?.id ?? '');
          //   followStatusUser(ref.read(userProfileViewModel).singleUserResponseModel.data?.id ?? '', load: false);
          // }
          // getUserById(context, ref.read(userProfileViewModel).singleUserResponseModel.data?.id ?? '', load: false);
          context.pop();
          context.pop();
          showCustomSnackBar(context, text: "${l.message}\nPlease try again", color: Colors.red);
        },
        (r) async {
          _subscribeUserResponseModel = r;
          // showCustomSnackBar(context, text: "Subscribed ${r.data?.firstName} ${r.data?.lastName}", color: Colors.green);
          Logger.printSuccess(r.toString());
          getUserById(context, _singleUserResponseModel.data?.id ?? '');
          if (_followStatusUserResponseModel?.data?.isFollow == false) {
            await followUser(context, _singleUserResponseModel.data?.id ?? '').then((value) async {
              await followStatusUser(_singleUserResponseModel.data?.id ?? '').then((value) {
                showCustomSnackBar(context, text: "Subscription Successful", color: Colors.green);
                context.pop();
                context.pop();
                notifyListeners();
              });
            });            
          }          
          notifyListeners();
        }
      );
    });
  }

  Future<void> unsubscribeUser(BuildContext context, UnsubscribeUserRequestModel unsubscribeUserRequestModel, String customerId) async {
    toggleSubscribeLoader();
    _unsubscribeUserRepoImpl.unsubscribeUser(unsubscribeUserRequestModel, customerId).then((value) {
      toggleSubscribeLoader();
      return value.fold(
        (l) => showCustomSnackBar(context, text: "${l.message}\nPlease try again", color: Colors.red), 
        (r) {
          _unsubscribeUserResponseModel = r;
          showCustomSnackBar(context, text: "Unsubscribed ${r.data?.firstName} ${r.data?.lastName}", color: Colors.green);
          // if (_followStatusUserResponseModel?.data?.isFollow == true) {
          //   followUser(context, r.data?.id ?? '');
          //   followStatusUser(r.data?.id ?? '', load: false);
          // }
          getUserById(context, r.data?.id ?? '', load: false);
          Logger.printSuccess(r.toString());
          notifyListeners();
          context.pop();
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

  Future<void> updateCustomerPlan(BuildContext context, EditUserSubscriptionPlanRequestModel editUserSubscriptionPlanRequestModel) async {
    toggleSubscribeLoader();
    await _editSubscriptionPlanRepoImpl.updateSubscriptionPlan(editUserSubscriptionPlanRequestModel).then((value){
      toggleSubscribeLoader();
      return value.fold(
        (l) {
        showCustomSnackBar(context, text: "${l.message}\nPlease try again", color: Colors.red);
        Logger.printError(l.message);
      }, (r) {
        _editUserSubscriptionPlanResponseModel = r;
         Logger.printSuccess(r.data.toString());
        //  showCustomSnackBar(context, text: 'Subcription Plan Updated', color: Colors.green);
         notifyListeners();        
      });
      
    });
  }

  void clearCustomerPlan(){
    _getCustomerPlanResponseModel = const GetCustomerPlanResponseModel();
    notifyListeners();
  }

Future<void> userTips(BuildContext context, userTipsRequestModel, String consumerId, int amount) async {
    toggleLoading();
    _userTipsRepoImpl.usertips(userTipsRequestModel,consumerId).then((value) {
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


  Future<void> createUserPlan(BuildContext context, CreateUserPlanRequestModel createUserPlanRequestModel) async {
    _createUserPlanLoader = true;
    notifyListeners();

    await _createUserPlanRepoImpl.createUserPlan(createUserPlanRequestModel).then((value) {      
      return value.fold(
        (l) {
          Logger.printError(l.message);
          _createUserPlanLoader = false;
          notifyListeners();
        }, 
        (r) async {
          _createUserPlanResponseModel = r;
          notifyListeners();
          Logger.printSuccess(_createUserPlanResponseModel.toString());
          customerPlan(context, createUserPlanResponseModel.data?.productId ?? '');

          await getUserById(context, createUserPlanRequestModel.userId ?? "", load: false).then((value) {
          
            // if(singleUserResponseModel.data?.productId != null && (singleUserResponseModel.data?.productId?.isNotEmpty ?? true)) {
            //   Future.delayed(Duration(seconds: 5), () {
                
            //   });
            // }
            customerPlan(context, singleUserResponseModel.data?.productId ?? '');
            Future.delayed(const Duration(seconds: 5), () {
              _createUserPlanLoader = false;
              notifyListeners();
              customerPlan(context, singleUserResponseModel.data?.productId ?? '');
              Navigator.pop(context);              
            });
          });
        }
      );
    });
  }

  Future<void> getCustomerSubscribeStripeLink(BuildContext context, CustomerSubscribeRequestModel customerSubscribeRequestModel, String customerId) async {
    togglePaymentLinkLoader();
    await _customerSubscribeRepoImpl.customerSubscribeStripeLink(customerSubscribeRequestModel, customerId).then((value) {
      togglePaymentLinkLoader();
      return value.fold(
        (l) => Logger.printError(l.message), 
        (r) {
          _customerSubscribeResponseModel = r;
          notifyListeners();                
        }
      );
    });
  }

}

// ignore_for_file: avoid_dynamic_calls, body_might_complete_normally_nullable, deprecated_member_use, always_declare_return_types, use_build_context_synchronously


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/data/remote/groups/userFollowStatus/models/follow_status_action_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/box_shadow.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/bottom_navigation_provider.dart';
import 'package:skill_colab/view/components/guestLoginRequestWidget.dart';
import 'package:skill_colab/view/components/shimmer.dart';
import 'package:skill_colab/view/screens/notifications/notifications_view_model.dart';

class NotficationView extends ConsumerStatefulWidget {
  const NotficationView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NotficationViewState();
}

class _NotficationViewState extends ConsumerState<NotficationView> {  

  late NotificationsViewModel _viewModel;
     @override
  void initState() {
    super.initState();
    _loadNotificationStatus();
  }

   _loadNotificationStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      AppConstants.isNotificationToggled = prefs.getBool('isNotification') ?? true;
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(notificationsViewModel);
    return PopScope(
      onPopInvoked: (didPop) => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Notifications',
            style: TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        leading: InkWell(
            onTap: () {
              if(context.canPop()) {
                context.pop();
              } else {
                ref.read(bottomNavigationProvider).changeSelectedIndex(0);
              }
            },
            child: Container(
              padding:
                  const EdgeInsets.only(
                left: 10,
                top: 10,
                bottom: 10,
              ),
              decoration:
                  const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: primaryColor,
                size: 20,
              ),
            ),
          ),
        ),
        body: AppConstants.usertype == 1 ? _viewModel.loading 
        ? const Center(child: CircularProgressIndicator(color: primaryColor,),)
        : StreamBuilder(
          stream: FirebaseFirestore.instance.collection("users")
              .doc(AppConstants.userId)
              .collection("notifications")
              .orderBy("timestamp", descending: true)
              .snapshots(),
          builder: (context, snapshot) {
      
            if (!snapshot.hasData) return SizedBox(child: ShimmerWidgets.chatShimmerWidget(context),);
      
            return snapshot.data?.docs.isEmpty ?? true 
            ? const Center(child: Text("No Notifications :(", style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600, fontSize: 16),),):
            AppConstants.isNotificationToggled==false? const Center(
              child: Padding( padding:  EdgeInsets.all(8.0), child: Text("To see the list of push notifications, you might first need to turn on SkillColab notifications in your app's settings.",style: TextStyle(color: primaryColor, fontWeight: FontWeight.w600, fontSize: 16),textAlign: TextAlign.center,),
              ),
            )
            : ListView.separated(
              separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Divider(color: Colors.grey[400],),
                );
              },
              itemCount: snapshot.data?.docs.length ?? 0,
              itemBuilder: (context, index) {
                if(snapshot.data?.docs[index]['payload']['type'] == 'Follow') {
                  return GestureDetector(
                    onTap: () {
                      context.pushNamed(AppRoute.profileView.name, extra: {
                        "userId": snapshot.data?.docs[index]['payload']['userId'],
                        "isSelfProfile": false,
                        },
                      );
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: snapshot.data?.docs[index]['payload']['profilePhoto'] == null || !(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "").contains("https://")
                            ? Image.asset("assets/icons/user.png").image
                            : NetworkImage(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "https://cdn.icon-icons.com/icons2/3065/PNG/512/profile_user_account_icon_190938.png"),
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                      // title: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                      title: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          gapH10,
                          SvgPicture.asset("assets/icons/followed-user.svg", height: 20, width: 20, color: primaryColor,),
                          Text(
                            ref.read(notificationsViewModel).formatDateTime(DateTime.fromMillisecondsSinceEpoch((snapshot.data?.docs[index]['timestamp'] as Timestamp).millisecondsSinceEpoch)),
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  );
                } else if(snapshot.data?.docs[index]['payload']['type'] == "Subscribe") {
                  return ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoute.profileView.name, extra: {
                          "userId": snapshot.data?.docs[index]['payload']['userId'],
                          "isSelfProfile": false,
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundImage: snapshot.data?.docs[index]['payload']['profilePhoto'] == null || !(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "").contains("https://")
                            ? Image.asset("assets/icons/user.png").image
                            : NetworkImage(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "https://cdn.icon-icons.com/icons2/3065/PNG/512/profile_user_account_icon_190938.png"),
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                    ),
                    onTap: () {
                      context.pushNamed(
                          AppRoute.premiumGroupProfileView.name,
                          extra: {'groupDetails': GroupDatum(id: snapshot.data?.docs[index]['payload']['typeId'] ?? ""), 'isSelfGroup': true},
                        );
                    },
                    title: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        gapH10,
                        // SvgPicture.asset("assets/icons/.svg", height: 20, width: 20, color: Colors.redAccent,),
                        const Icon(Icons.add_reaction_outlined, color: primaryColor,),
                        Text(
                          ref.read(notificationsViewModel).formatDateTime(DateTime.fromMillisecondsSinceEpoch((snapshot.data?.docs[index]['timestamp'] as Timestamp).millisecondsSinceEpoch)),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                } else if(snapshot.data?.docs[index]['payload']['type'] == "UnFollow") {
                  return GestureDetector(
                    onTap: () {
                      context.pushNamed(AppRoute.profileView.name, extra: {
                        "userId": snapshot.data?.docs[index]['payload']['userId'],
                        "isSelfProfile": false,
                        },
                      );
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: snapshot.data?.docs[index]['payload']['profilePhoto'] == null || !(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "").contains("https://")
                            ? Image.asset("assets/icons/user.png").image
                            : NetworkImage(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "https://cdn.icon-icons.com/icons2/3065/PNG/512/profile_user_account_icon_190938.png"),
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                      title: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          gapH10,
                          SvgPicture.asset("assets/icons/unfollowed-user.svg", height: 20, width: 20, color: Colors.redAccent,),
                          Text(
                            ref.read(notificationsViewModel).formatDateTime(DateTime.fromMillisecondsSinceEpoch((snapshot.data?.docs[index]['timestamp'] as Timestamp).millisecondsSinceEpoch)),
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  );
                } else if(snapshot.data?.docs[index]['payload']['type'] == "GroupUnFollow") {
                  return ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoute.profileView.name, extra: {
                          "userId": snapshot.data?.docs[index]['payload']['userId'],
                          "isSelfProfile": false,
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundImage: snapshot.data?.docs[index]['payload']['profilePhoto'] == null || !(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "").contains("https://")
                            ? Image.asset("assets/icons/user.png").image
                            : NetworkImage(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "https://cdn.icon-icons.com/icons2/3065/PNG/512/profile_user_account_icon_190938.png"),
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                    ),
                    title: GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          AppRoute.publicGroupProfileView.name,
                          extra: {'groupDetails': GroupDatum(id: snapshot.data?.docs[index]['payload']['typeId'] ?? ""), 'isSelfGroup': true},
                        );
                      },
                      child: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                    ),
                    onTap: () {
                      context.pushNamed(
                        AppRoute.publicGroupProfileView.name,
                        extra: {'groupDetails': GroupDatum(id: snapshot.data?.docs[index]['payload']['typeId'] ?? ""), 'isSelfGroup': true},
                      );
                    },
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        gapH10,
                        SvgPicture.asset("assets/icons/unfollowed-user.svg", height: 20, width: 20, color: Colors.redAccent,),
                        Text(
                          ref.read(notificationsViewModel).formatDateTime(DateTime.fromMillisecondsSinceEpoch((snapshot.data?.docs[index]['timestamp'] as Timestamp).millisecondsSinceEpoch)),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                } else if(snapshot.data?.docs[index]['payload']['type'] == 'GroupFollow') {
                  return ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoute.profileView.name, extra: {
                          "userId": snapshot.data?.docs[index]['payload']['userId'],
                          "isSelfProfile": false,
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundImage: snapshot.data?.docs[index]['payload']['profilePhoto'] == null || !(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "").contains("https://")
                            ? Image.asset("assets/icons/user.png").image
                            : NetworkImage(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "https://cdn.icon-icons.com/icons2/3065/PNG/512/profile_user_account_icon_190938.png"),
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                    ),
                    onTap: () {
                      context.pushNamed(
                        AppRoute.publicGroupProfileView.name,
                        extra: {'groupDetails': GroupDatum(id: snapshot.data?.docs[index]['payload']['typeId'] ?? ""), 'isSelfGroup': true},
                      );
                    },
                    title: GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          AppRoute.publicGroupProfileView.name,
                          extra: {'groupDetails': GroupDatum(id: snapshot.data?.docs[index]['payload']['typeId'] ?? ""), 'isSelfGroup': true},
                        );
                      },
                      child: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                    ),
                    trailing: SizedBox(
                      child: snapshot.data?.docs[index]['payload']['groupType'] == 'private'
                        ? SizedBox(
                          width: 100,
                          child: Row(
                              children: [
                                InkWell(
                                  splashColor: kWhite,
                                  borderRadius: BorderRadius.circular(40),
                                  onTap: () {
                                    final FollowStatusActionRequestModel followStatusActionRequestModel = FollowStatusActionRequestModel(
                                      isAccept: true,
                                      userId: snapshot.data?.docs[index]['payload']['userId'],
                                    );
      
                                    _viewModel.followGroupAction(followStatusActionRequestModel, snapshot.data?.docs[index]['payload']['typeId']);
      
                                    FirebaseFirestore.instance.collection('users').doc(AppConstants.userId).collection('notifications').doc(snapshot.data?.docs[index].id).delete();
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: primaryColor,
                                      boxShadow: [CustomBoxShadow()],
                                    ),
                                    child: const Icon(Icons.done, color: kWhite, size: 25,),
                                  ),
                                ),
                                gapW10,
                                InkWell(
                                  splashColor: kWhite,
                                  borderRadius: BorderRadius.circular(40),
                                  onTap: () {
                                    final FollowStatusActionRequestModel followStatusActionRequestModel = FollowStatusActionRequestModel(
                                      isAccept: false,
                                      userId: snapshot.data?.docs[index]['payload']['userId'],
                                    );
      
                                    _viewModel.followGroupAction(followStatusActionRequestModel, snapshot.data?.docs[index]['payload']['typeId']);
      
                                    FirebaseFirestore.instance.collection('users').doc(AppConstants.userId).collection('notifications').doc(snapshot.data?.docs[index].id).delete();
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.red[600],
                                      boxShadow: [CustomBoxShadow()],
                                    ),
                                    child: const Icon(Icons.close, color: kWhite, size: 25,),
                                  ),
                                ),
                              ],   
                            ),
                        )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              gapH10,
                              SvgPicture.asset("assets/icons/followed-user.svg", height: 20, width: 20, color: primaryColor,),
                              Text(
                                ref.read(notificationsViewModel).formatDateTime(DateTime.fromMillisecondsSinceEpoch((snapshot.data?.docs[index]['timestamp'] as Timestamp).millisecondsSinceEpoch)),
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                    ),
                  );
                } else if(snapshot.data?.docs[index]['payload']['type'] == 'GroupRequest') {
                  return ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoute.profileView.name, extra: {
                          "userId": snapshot.data?.docs[index]['payload']['userId'],
                          "isSelfProfile": false,
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundImage: snapshot.data?.docs[index]['payload']['profilePhoto'] == null || !(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "").contains("https://")
                            ? Image.asset("assets/icons/user.png").image
                            : NetworkImage(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "https://cdn.icon-icons.com/icons2/3065/PNG/512/profile_user_account_icon_190938.png"),
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                    ),
                    onTap: () {
                      context.pushNamed(
                        AppRoute.publicGroupProfileView.name,
                        extra: {'groupDetails': GroupDatum(id: snapshot.data?.docs[index]['payload']['typeId'] ?? ""), 'isSelfGroup': true},
                      );
                    },
                    title: GestureDetector(
                      onTap: () {
                        context.pushNamed(
                          AppRoute.publicGroupProfileView.name,
                          extra: {'groupDetails': GroupDatum(id: snapshot.data?.docs[index]['payload']['typeId'] ?? ""), 'isSelfGroup': true},
                        );
                      },
                      child: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                    ),
                    trailing: Visibility(
                      visible: !(snapshot.data?.docs[index]['message'].toString().contains("accepted") ?? true),
                      child: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            InkWell(
                              splashColor: kWhite,
                              borderRadius: BorderRadius.circular(40),
                              onTap: () {
                                final FollowStatusActionRequestModel followStatusActionRequestModel = FollowStatusActionRequestModel(
                                  isAccept: true,
                                  userId: snapshot.data?.docs[index]['payload']['userId'],
                                );
                    
                                _viewModel.followGroupAction(followStatusActionRequestModel, snapshot.data?.docs[index]['payload']['typeId']);
                    
                                FirebaseFirestore.instance.collection('users').doc(AppConstants.userId).collection('notifications').doc(snapshot.data?.docs[index].id).delete();
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: primaryColor,
                                  boxShadow: [CustomBoxShadow()],
                                ),
                                child: const Icon(Icons.done, color: kWhite, size: 25,),
                              ),
                            ),
                            gapW10,
                            InkWell(
                              splashColor: kWhite,
                              borderRadius: BorderRadius.circular(40),
                              onTap: () {
                                final FollowStatusActionRequestModel followStatusActionRequestModel = FollowStatusActionRequestModel(
                                  isAccept: false,
                                  userId: snapshot.data?.docs[index]['payload']['userId'],
                                );
                    
                                _viewModel.followGroupAction(followStatusActionRequestModel, snapshot.data?.docs[index]['payload']['typeId']);
                    
                                FirebaseFirestore.instance.collection('users').doc(AppConstants.userId).collection('notifications').doc(snapshot.data?.docs[index].id).delete();
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.red[600],
                                  boxShadow: [CustomBoxShadow()],
                                ),
                                child: const Icon(Icons.close, color: kWhite, size: 25,),
                              ),
                            ),
                          ],   
                        ),
                      ),
                    ),
                  );
                } else if(snapshot.data?.docs[index]['payload']['type'] == "Like") {
                  return ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoute.profileView.name, extra: {
                          "userId": snapshot.data?.docs[index]['payload']['userId'],
                          "isSelfProfile": false,
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundImage: snapshot.data?.docs[index]['payload']['profilePhoto'] == null || !(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "").contains("https://")
                            ? Image.asset("assets/icons/user.png").image
                            : NetworkImage(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "https://cdn.icon-icons.com/icons2/3065/PNG/512/profile_user_account_icon_190938.png"),
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                    ),
                    onTap: () {
                      if(snapshot.data?.docs[index]['message'].toString().contains("post") ?? false) {
                        context.pushNamed(AppRoute.sinlgePost.name, extra: snapshot.data?.docs[index]['payload']['typeId']); 
                      } else if(snapshot.data?.docs[index]['message'].toString().contains("question") ?? false) {
                        _viewModel.getSingleQuestionData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                          context.pushNamed(AppRoute.questionDetailView.name, extra: _viewModel.getSingleQuestionResponseModel.data![0]);
                        });
                      } else {
                        _viewModel.getSingleTutorialData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                          context.pushNamed(AppRoute.tutorialDetailView.name, extra: _viewModel.getSingleTutorialResponseModel.data![0]);
                        });
                      }
                    },
                    title: GestureDetector(
                      onTap: () {
                        if(snapshot.data?.docs[index]['message'].toString().contains("post") ?? false) {
                          context.pushNamed(AppRoute.sinlgePost.name, extra: snapshot.data?.docs[index]['payload']['typeId']); 
                        } else if(snapshot.data?.docs[index]['message'].toString().contains("question") ?? false) {
                          _viewModel.getSingleQuestionData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                            context.pushNamed(AppRoute.questionDetailView.name, extra: _viewModel.getSingleQuestionResponseModel.data![0]);
                          });
                        } else {
                          _viewModel.getSingleTutorialData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                            context.pushNamed(AppRoute.tutorialDetailView.name, extra: _viewModel.getSingleTutorialResponseModel.data![0]);
                          });
                        }
                      },
                      child: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        gapH10,
                        const Icon(Icons.favorite_rounded, color: primaryColor,),
                        Text(
                          ref.read(notificationsViewModel).formatDateTime(DateTime.fromMillisecondsSinceEpoch((snapshot.data?.docs[index]['timestamp'] as Timestamp).millisecondsSinceEpoch)),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                } else if(snapshot.data?.docs[index]['payload']['type'] == "Chat") {
                  return ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoute.profileView.name, extra: {
                          "userId": snapshot.data?.docs[index]['payload']['userId'],
                          "isSelfProfile": false,
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundImage: snapshot.data?.docs[index]['payload']['profilePhoto'] == null || !(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "").contains("https://")
                            ? Image.asset("assets/icons/user.png").image
                            : NetworkImage(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "https://cdn.icon-icons.com/icons2/3065/PNG/512/profile_user_account_icon_190938.png"),
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                    ),
                    onTap: () async {
                      // await _viewModel.getUserById(context, snapshot.data?.docs[index]['payload']['userId']);
                      context.pushNamed(AppRoute.chatroomLoader.name, extra: snapshot.data?.docs[index]['payload']['userId']);
                    },                    
                    title: GestureDetector(
                      onTap: () async {
                        // await _viewModel.getUserById(context, snapshot.data?.docs[index]['payload']['userId']);
                        context.pushNamed(AppRoute.chatroomLoader.name, extra: snapshot.data?.docs[index]['payload']['userId']);
                      },
                      child: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        gapH10,
                        const Icon(Icons.comment_rounded, color: primaryColor,),
                        Text(
                          ref.read(notificationsViewModel).formatDateTime(DateTime.fromMillisecondsSinceEpoch((snapshot.data?.docs[index]['timestamp'] as Timestamp).millisecondsSinceEpoch)),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                } else if(snapshot.data?.docs[index]['payload']['type'] == "Comment") {
                  return ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoute.profileView.name, extra: {
                          "userId": snapshot.data?.docs[index]['payload']['userId'],
                          "isSelfProfile": false,
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundImage: snapshot.data?.docs[index]['payload']['profilePhoto'] == null || !(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "").contains("https://")
                            ? Image.asset("assets/icons/user.png").image
                            : NetworkImage(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "https://cdn.icon-icons.com/icons2/3065/PNG/512/profile_user_account_icon_190938.png"),
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                    ),
                    onTap: () {
                      if(snapshot.data?.docs[index]['message'].toString().contains("post") ?? false) {
                        context.pushNamed(AppRoute.sinlgePost.name, extra: snapshot.data?.docs[index]['payload']['typeId']);
                      } else if(snapshot.data?.docs[index]['message'].toString().contains("question") ?? false) {
                        _viewModel.getSingleQuestionData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                          context.pushNamed(AppRoute.questionDetailView.name, extra: _viewModel.getSingleQuestionResponseModel.data![0]);
                        });
                      } else {
                        _viewModel.getSingleTutorialData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                          context.pushNamed(AppRoute.tutorialDetailView.name, extra: _viewModel.getSingleTutorialResponseModel.data![0]);
                        });
                      }
                    },
                    // title: Text("8013123948 liked your post", style: TextStyle(color: kWhite),),
                    title: GestureDetector(
                      onTap: () {
                        if(snapshot.data?.docs[index]['message'].toString().contains("post") ?? false) {
                          context.pushNamed(AppRoute.sinlgePost.name, extra: snapshot.data?.docs[index]['payload']['typeId']);
                        } else if(snapshot.data?.docs[index]['message'].toString().contains("question") ?? false) {
                          _viewModel.getSingleQuestionData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                            context.pushNamed(AppRoute.questionDetailView.name, extra: _viewModel.getSingleQuestionResponseModel.data![0]);
                          });
                        } else {
                          _viewModel.getSingleTutorialData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                            context.pushNamed(AppRoute.tutorialDetailView.name, extra: _viewModel.getSingleTutorialResponseModel.data![0]);
                          });
                        }
                      },
                      child: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        gapH10,
                        const Icon(Icons.comment_rounded, color: primaryColor,),
                        Text(
                          ref.read(notificationsViewModel).formatDateTime(DateTime.fromMillisecondsSinceEpoch((snapshot.data?.docs[index]['timestamp'] as Timestamp).millisecondsSinceEpoch)),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                } else if(snapshot.data?.docs[index]['payload']['type'] == "Invite") {
                  return ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoute.profileView.name, extra: {
                          "userId": snapshot.data?.docs[index]['payload']['userId'],
                          "isSelfProfile": false,
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundImage: snapshot.data?.docs[index]['payload']['profilePhoto'] == null || !(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "").contains("https://")
                            ? Image.asset("assets/icons/user.png").image
                            : NetworkImage(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "https://cdn.icon-icons.com/icons2/3065/PNG/512/profile_user_account_icon_190938.png"),
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                    ),
                    onTap: () {
                      if(snapshot.data?.docs[index]['message'].toString().contains("post") ?? false) {
                        context.pushNamed(AppRoute.sinlgePost.name, extra: snapshot.data?.docs[index]['payload']['typeId']);
                      } else if(snapshot.data?.docs[index]['message'].toString().contains("question") ?? false) {
                        _viewModel.getSingleQuestionData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                          context.pushNamed(AppRoute.questionDetailView.name, extra: _viewModel.getSingleQuestionResponseModel.data![0]);
                        });
                      } else {
                        _viewModel.getSingleTutorialData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                          context.pushNamed(AppRoute.tutorialDetailView.name, extra: _viewModel.getSingleTutorialResponseModel.data![0]);
                        });
                      }
                    },
                    // title: Text("8013123948 liked your post", style: TextStyle(color: kWhite),),
                    title: GestureDetector(
                      onTap: () {
                        if(snapshot.data?.docs[index]['message'].toString().contains("post") ?? false) {
                          context.pushNamed(AppRoute.sinlgePost.name, extra: snapshot.data?.docs[index]['payload']['typeId']);
                        } else if(snapshot.data?.docs[index]['message'].toString().contains("question") ?? false) {
                          _viewModel.getSingleQuestionData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                            context.pushNamed(AppRoute.questionDetailView.name, extra: _viewModel.getSingleQuestionResponseModel.data![0]);
                          });
                        } else {
                          _viewModel.getSingleTutorialData(snapshot.data?.docs[index]['payload']['typeId']).then((value) {
                            context.pushNamed(AppRoute.tutorialDetailView.name, extra: _viewModel.getSingleTutorialResponseModel.data![0]);
                          });
                        }
                      },
                      child: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                    ),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        gapH10,
                        const Icon(Icons.comment_rounded, color: primaryColor,),
                        Text(
                          ref.read(notificationsViewModel).formatDateTime(DateTime.fromMillisecondsSinceEpoch((snapshot.data?.docs[index]['timestamp'] as Timestamp).millisecondsSinceEpoch)),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                } else if(snapshot.data?.docs[index]['payload']['type'] == "UnSubscribe") {
                  return ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoute.profileView.name, extra: {
                          "userId": snapshot.data?.docs[index]['payload']['userId'],
                          "isSelfProfile": false,
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundImage: snapshot.data?.docs[index]['payload']['profilePhoto'] == null || !(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "").contains("https://")
                            ? Image.asset("assets/icons/user.png").image
                            : NetworkImage(snapshot.data?.docs[index]['payload']['profilePhoto'] ?? "https://cdn.icon-icons.com/icons2/3065/PNG/512/profile_user_account_icon_190938.png"),
                        backgroundColor: Colors.white,
                        radius: 25,
                      ),
                    ),
                    onTap: () {
                      context.pushNamed(
                          AppRoute.premiumGroupProfileView.name,
                          extra: {'groupDetails': GroupDatum(id: snapshot.data?.docs[index]['payload']['typeId'] ?? ""), 'isSelfGroup': true},
                        );
                    },
                    title: _viewModel.styleSentence(snapshot.data?.docs[index]['message'] ?? ""),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        gapH10,
                        // SvgPicture.asset("assets/icons/.svg", height: 20, width: 20, color: Colors.redAccent,),
                        const Icon(Icons.person_remove_outlined, color: primaryColor,),
                        Text(
                          ref.read(notificationsViewModel).formatDateTime(DateTime.fromMillisecondsSinceEpoch((snapshot.data?.docs[index]['timestamp'] as Timestamp).millisecondsSinceEpoch)),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                }
              },
            );
          },
        ) : GuestLoginRequestWidget(text: "to see notifications",),
      ),
    );
  }
}

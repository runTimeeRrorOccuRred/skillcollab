// ignore_for_file: unused_field, file_names, deprecated_member_use, unused_local_variable, unnecessary_null_comparison, avoid_redundant_argument_values, avoid_print, prefer_final_locals


import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
// import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/domain/providers/firebase_messaging_provider.dart';
import 'package:skill_colab/routes/app_routes.dart';
// import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/components/bottom_navigation_provider.dart';
import 'package:skill_colab/view/screens/chat/chatroomList/chatroom_list_view.dart';
import 'package:skill_colab/view/screens/explore/explore_view.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/notifications/notifications_view.dart';
import 'package:skill_colab/view/screens/search/search_view.dart';
import 'package:skill_colab/view/screens/search/search_view_model.dart';

class BottomNavigation extends ConsumerStatefulWidget {
  const BottomNavigation({super.key});

  @override
  ConsumerState<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends ConsumerState<BottomNavigation> {

  int currNotifications = 0;
  bool showNotificationsBadge = false; 

  void handleRoute(Map<String, dynamic>  message){
    Logger.printError(message.toString());
    // Map<String, dynamic> jsonMap = jsonDecode(payload.payload!);
    if(message['type'] == 'post'){
      GoRouter.of(context).pushNamed(AppRoute.sinlgePost.name, extra: message['typeId']);
    } else if(message['type'] == 'user'){
      GoRouter.of(context).pushNamed(AppRoute.profileView.name, extra: {"userId" : AppConstants.userId, "isSelfProfile": true});
    } else if(message['type'] == 'group'){
      if(message['typePrivacy'] == 'public'){
        GoRouter.of(context).pushNamed(AppRoute.notificationGroupLoader.name, extra: message['typeId']);
      } else if(message['typePrivacy'] == 'private'){
        GoRouter.of(context).pushNamed(AppRoute.notificationsView.name);
      } else {
        GoRouter.of(context).pushNamed(AppRoute.notificationGroupLoader.name, extra: message['typeId']);
      }
    } else if(message['type'] == 'chat'){
      GoRouter.of(context).pushNamed(AppRoute.chatroomLoader.name, extra: message['typeId']);
    } else {
      GoRouter.of(context).pushNamed(AppRoute.notificationsView.name);
    }
  } 

  @override
  void initState() {
    super.initState();

    // ignore: no_leading_underscores_for_local_identifiers
    Stream<RemoteMessage> _stream = FirebaseMessaging.onMessageOpenedApp;
    _stream.listen((RemoteMessage event) async {
      // handleRoute(event.data);
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final FirebaseMessagingProvider firebaseMessagingProvider = FirebaseMessagingProvider(
        context: context,
      );
      await firebaseMessagingProvider.init();
      await firebaseMessagingProvider.setupFirebaseConfig();

      firebaseMessagingProvider.requestPermissionsLocalNotification();

      //! NEEDED FOR TERMINATED STATE
      // FirebaseMessaging.instance.getInitialMessage();

      //! ON TAP FUNCTION WHEN APP IS IN BACKGROUND
      // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      //   if(message.notification != null) {
      //     context.pushNamed(AppRoute.notificationsView.name);
      //   }
      // });

      //! FOREGROUND
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        Logger.printError('Got a message whilst in the foreground!');
        Logger.printError('Message data: ${message.data}');

        if (message.notification != null) {
          Logger.printError('Message also contained a notification: ${message.notification?.body ?? ""}');
          firebaseMessagingProvider.showNotification(message, message.notification!);
        }
      });

      

      FirebaseMessaging.onBackgroundMessage((RemoteMessage message) {
        Logger.printError('Got a message whilst in the BACKGROUND!');
        Logger.printError('Message data: ${message.data}');        

        if (message.notification != null) {
          Logger.printError('Message also contained a notification: ${message.notification?.body ?? ""}');
          firebaseMessagingProvider.showNotification(message, message.notification!);
        } else {
          throw Exception("error in bg notification");
        }

        throw Exception("error in bg notification");

      });
    });
    
  }

  DateTime? currentBackPressTime;
  
  bool _isSelected = false;
  // int _selectedIndex = 0;
  String _title = "Home";
  void _onItemTapped(int index) {
    setState(() {
      ref.read(bottomNavigationProvider).changeSelectedIndex(index);

      if(index > 0) {
        ref.read(dashboardViewModel).setTimeFilterIndex(0);
        ref.read(dashboardViewModel).setFeedFilterIndex(0);
      }

      if(index != 1) {
        ref.read(searchViewModel).clearData();
      }

      if (index == 0) {
        _title = "Home";
        _isSelected = false;
      } else if (index == 1) {
        _title = "Search";
        _isSelected = true;
        ref.read(dashboardViewModel).clearData();
      } else if (index == 2) {
        _title = "";
        _isSelected = true;
        ref.read(dashboardViewModel).clearData();
      } else if (index == 3) {
        _title = "Chat";
        _isSelected = true;
        ref.read(dashboardViewModel).clearData();
      } else {
        setState(() {
          showNotificationsBadge = false;
        });
        _title = "Alert";
        _isSelected = true;
        ref.read(dashboardViewModel).clearData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _viewModel = ref.watch(bottomNavigationProvider);
    return AppConstants.userId.isNotEmpty ? StreamBuilder(
      stream: FirebaseFirestore.instance.collection("users").doc(AppConstants.userId).collection("notifications").snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {        

        //ANCHOR - NotificationsBadge
        //! Handling the state of the badge for Notifications
        final int notificationsLength = snapshot.data?.docs.length ?? 0;
        if(notificationsLength > currNotifications && _viewModel.selectedIndex != 4) {
          currNotifications = notificationsLength;
          showNotificationsBadge = true;
        }

        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar : true,
          resizeToAvoidBottomInset: true,
          body: PopScope(
            canPop: false,
            onPopInvoked: (didPop) async{
              
              final DateTime now = DateTime.now();
              if (ref.watch(bottomNavigationProvider).selectedIndex > 0) {
                ref.read(bottomNavigationProvider).changeSelectedIndex(0);
                // ignore: void_checks
                return Future.value(false);
              }

              else if(MediaQuery.of(context).viewInsets.bottom > 0) {
                SystemChannels.textInput.invokeMethod('TextInput.hide');
                // ignore: void_checks
                return Future.value(false);
              } else if(currentBackPressTime == null || now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
                  currentBackPressTime = now;
                  Fluttertoast.showToast(msg: "Press Again Exit", gravity: ToastGravity.SNACKBAR,);
                  return Future.value(false);
              }
              
               else {
                SystemNavigator.pop();
                // ignore: void_checks
               
              }
              // Logger.printInfo(_viewModel.selectedIndex.toString());
            },
            child: Column(
              children: [
                if (_viewModel.selectedIndex == 0)
                  const Expanded(child: DashboardView())
                else if (_viewModel.selectedIndex == 1)
                  const Expanded(
                    child: SearchView(),
                  )
                else if (_viewModel.selectedIndex == 2)
                  const Expanded(child: ExploreView())
                  
                else if (_viewModel.selectedIndex == 3)
                  const Expanded(child: ChatroomListView())
                else
                  const Expanded(child: NotficationView()),
              ],
            ),
//             child: IndexedStack(
//   index: _viewModel.selectedIndex,
//   children:   [
//     Expanded(child: DashboardView()), // Index 0
//     Expanded(child: SearchView()), // Index 1
//     Expanded(child: ExploreView()), // Index 2
//     Expanded(child: ChatroomListView()), // Index 3
//     Expanded(child: NotficationView()), // For any other index
//   ],
// ),
          ),
          bottomNavigationBar: 
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              height: ref.watch(bottomNavigationProvider).containerHeight,
              color: Colors.transparent,
              transform: Matrix4.translationValues(0, ref.watch(bottomNavigationProvider).offset, 0),
              child: DotNavigationBar(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(
                      0.5,
                    ),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
                enablePaddingAnimation: false,
                selectedItemColor: primaryColor,
                marginR: const EdgeInsets.only(top: 72),
                paddingR: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                // margin: EdgeInsets.symmetric(vertical: 10),
                unselectedItemColor: Colors.grey,
                // showSelectedLabels: false,
                // showUnselectedLabels: false,
                itemPadding: const EdgeInsets.only(bottom: 10, right: 8, top: 8),
                items: [
                  DotNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/home.svg',
                      color: _viewModel.selectedIndex == 0 ? primaryColor : Colors.grey,
                    ),
                  ),
                  DotNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: _viewModel.selectedIndex == 1 ? primaryColor : Colors.grey,
                    ),
                  ),
                  DotNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/navigation.svg',
                      color: _viewModel.selectedIndex == 2 ? primaryColor : Colors.grey,
                    ),
                  ),
                  DotNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/comment.svg',
                      color: _viewModel.selectedIndex == 3 ? primaryColor : Colors.grey,
                    ),
                  ),
                  DotNavigationBarItem(
                    icon: Stack(                      
                      children: [
                        SvgPicture.asset(
                          'assets/icons/alert.svg',
                          color: _viewModel.selectedIndex == 4 ? primaryColor : Colors.grey,
                        ),
                        Visibility(
                          visible: showNotificationsBadge,
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                currentIndex: _viewModel.selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
             
           
           
        );
      },
    ) : Scaffold(
          extendBody: true,
          extendBodyBehindAppBar : true,
          resizeToAvoidBottomInset: true,
          body: PopScope(
            canPop: false,
            onPopInvoked: (didPop) {
              final DateTime now = DateTime.now();
              if(ref.watch(bottomNavigationProvider).selectedIndex > 0) {
                setState(() {
                  ref.watch(bottomNavigationProvider).changeSelectedIndex(0);
                });
                // return Future.value(false);
              } else if(currentBackPressTime == null || now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
                  currentBackPressTime = now;
                  Fluttertoast.showToast(msg: "Press Again Exit", gravity: ToastGravity.SNACKBAR,);
                  // return Future.value(false);
              } else{
                SystemNavigator.pop();
              }
            },
            child: Column(
              children: [
                if (_viewModel.selectedIndex == 0)
                  const Expanded(child: DashboardView())
                else if (_viewModel.selectedIndex == 1)
                  const Expanded(
                    child: SearchView(),
                  )
                else if (_viewModel.selectedIndex == 2)
                  const Expanded(child: ExploreView())
                else if (_viewModel.selectedIndex == 3)
                  const Expanded(child: ChatroomListView())
                else
                  const Expanded(child: NotficationView()),
              ],
            ),
          ),
          bottomNavigationBar: 
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              height: ref.watch(bottomNavigationProvider).containerHeight,
              color: Colors.transparent,
              transform: Matrix4.translationValues(0, ref.watch(bottomNavigationProvider).offset, 0),
              child: DotNavigationBar(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(
                      0.5,
                    ),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
                enablePaddingAnimation: false,
                selectedItemColor: primaryColor,
                marginR: const EdgeInsets.only(top: 72),
                paddingR: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                // margin: EdgeInsets.symmetric(vertical: 10),
                unselectedItemColor: Colors.grey,
                // showSelectedLabels: false,
                // showUnselectedLabels: false,
                itemPadding: const EdgeInsets.only(bottom: 10, right: 8, top: 8),
                items: [
                  DotNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/home.svg',
                      color: _viewModel.selectedIndex == 0 ? primaryColor : Colors.grey,
                    ),
                  ),
                  DotNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: _viewModel.selectedIndex == 1 ? primaryColor : Colors.grey,
                    ),
                  ),
                  DotNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/navigation.svg',
                      color: _viewModel.selectedIndex == 2 ? primaryColor : Colors.grey,
                    ),
                  ),
                  DotNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/comment.svg',
                      color: _viewModel.selectedIndex == 3 ? primaryColor : Colors.grey,
                    ),
                  ),
                  DotNavigationBarItem(
                    icon: Stack(                      
                      children: [
                        SvgPicture.asset(
                          'assets/icons/alert.svg',
                          color: _viewModel.selectedIndex == 4 ? primaryColor : Colors.grey,
                        ),
                        // Visibility(
                        //   visible: showNotificationsBadge,
                        //   child: Container(
                        //     height: 12,
                        //     width: 12,
                        //     decoration: BoxDecoration(
                        //       color: Colors.redAccent,
                        //       borderRadius: BorderRadius.circular(12),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
                currentIndex: _viewModel.selectedIndex,
                onTap: _onItemTapped,
              ),
            ),
             
           
           
        );
  }

  Function(bool)? onPopInvoked() {
    final DateTime now = DateTime.now();
    if(ref.watch(bottomNavigationProvider).selectedIndex > 0) {
      setState(() {
        ref.watch(bottomNavigationProvider).changeSelectedIndex(0);
      });
      // return Future.value(false);
    } else {
      if (currentBackPressTime == null || now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
        currentBackPressTime = now;
        Fluttertoast.showToast(msg: "Press Again Exit", gravity: ToastGravity.SNACKBAR,);
        // return Future.value(false);
      }
    }
    return null; 
    // return Future.value(true);
  }
}

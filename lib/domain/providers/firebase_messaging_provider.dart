// ignore_for_file: subtype_of_sealed_class, depend_on_referenced_packages, directives_ordering

import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class FirebaseMessagingProvider{

  BuildContext? context;
  FirebaseMessagingProvider({this.context});

  Future<void> init() async {
    await setupFirebaseConfig();

    requestPermissionsLocalNotification();

    ///check when app opened first time without click
    FirebaseMessaging.instance.getInitialMessage().then(navigate);

    ///check when app opened first time with click
    FirebaseMessaging.onMessageOpenedApp.listen(navigate);

    /// check when app is in foreground
    // FirebaseMessaging.onMessage.listen(navigate);
  }

  void requestPermissionsLocalNotification() {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  Future<void> setupFirebaseConfig() async {
    // If you're going to use other Firebase services in the background, such as Firestore,
    // make sure you call `initializeApp` before using other Firebase services.

    await Firebase.initializeApp();

    /// Background
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    /// Permission
    await FirebaseMessaging.instance.requestPermission();

    /// Update the iOS foreground notification presentation options to allow
    /// heads up notifications.
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('mipmap/ic_launcher');

    /// Note: permissions aren't requested here just to demonstrate that can be
    /// done later
    final DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      onDidReceiveLocalNotification: (
        int id,
        String? title,
        String? body,
        String? payload,
      ) async {},
    );

    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      macOS: initializationSettingsIOS,
    );
    try {
      await flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: (NotificationResponse payload) async {
          Logger.printSuccess("PAYLOAD ====> ${payload.payload}");
          if (payload.payload?.isNotEmpty ?? false) {
            final Map<String, dynamic> jsonMap = jsonDecode(payload.payload!);
            handleRoute(jsonMap);
          } else {
            GoRouter.of(context!).pushNamed(AppRoute.notificationsView.name);
          }
        },
      );
    } catch (e) {
      Logger.printWarning(e.toString());
    }
  }

  void handleRoute(Map<String, dynamic>  message){
    Logger.printError(message.toString());
    // Map<String, dynamic> jsonMap = jsonDecode(payload.payload!);
    if(message['type'] == 'post'){
      GoRouter.of(context!).pushNamed(AppRoute.sinlgePost.name, extra: message['typeId']);
    } else if(message['type'] == 'user'){
      GoRouter.of(context!).pushNamed(AppRoute.profileView.name, extra: {"userId" : AppConstants.userId, "isSelfProfile": true});
    } else if(message['type'] == 'group'){
      if(message['typePrivacy'] == 'public'){
        GoRouter.of(context!).pushNamed(AppRoute.notificationGroupLoader.name, extra: message['typeId']);
      } else if(message['typePrivacy'] == 'private'){
        GoRouter.of(context!).pushNamed(AppRoute.notificationsView.name);
      } else {
        GoRouter.of(context!).pushNamed(AppRoute.notificationGroupLoader.name, extra: message['typeId']);
      }
    } else if(message['type'] == 'chat'){
      GoRouter.of(context!).pushNamed(AppRoute.chatroomLoader.name, extra: message['typeId']);
    } else {
      GoRouter.of(context!).pushNamed(AppRoute.notificationsView.name);
    }
  }

  Future<void> onRecieveNotification(RemoteMessage message) async {
    if (message.notification == null) return;

    /// switch case
    await showNotification(message, message.notification!);
  }

  Future<void> showNotification(RemoteMessage message, RemoteNotification notification,) async {
    // if (Platform.isIOS) return;

    var payloadJson = jsonEncode(message.data);
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'your channel id',
      'your channel name',
      channelDescription: 'your channel description',
      importance: Importance.max,
      priority: Priority.high,
      // icon: "assets/logos/wndo_logo_ios.png",
      fullScreenIntent: true,
      ticker: 'ticker',
      playSound: false,
    );

    const DarwinNotificationDetails iOSNotificationDetails =
        DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      threadIdentifier: "thread3",

      // attachments: <DarwinNotificationAttachment>[
      //   DarwinNotificationAttachment('assets/logos/wndo_logo_ios.png')
      // ],
    );
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSNotificationDetails,
    );
    await flutterLocalNotificationsPlugin.show(
      6,
      notification.title ?? '',
      notification.body,
      platformChannelSpecifics,
      payload: payloadJson
    );
  }

  Future<void> navigate(RemoteMessage? message) async {
    await Future.delayed(const Duration(seconds: 3));
    if (message?.notification == null) return;
    handleRoute(message?.data ?? {});
  }

  NotificationDetails notificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails('channelId', 'channelName',
          importance: Importance.max,),
      iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
          threadIdentifier: "thread3",),
    );
  }

  Future<void> showLocalNotification({
    int id = 6,
    String? title,
    String? body,
    String? payload,
  }) async {
    return FlutterLocalNotificationsPlugin()
        .show(id, title, body, notificationDetails());
  }
}

/// TOP-LEVEL FUNCTION
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  try {
    FirebaseMessagingProvider _firebaseMsgProvider = FirebaseMessagingProvider();
    _firebaseMsgProvider.navigate(message);
  } catch (e) {
    Logger.printWarning(e.toString());
  }

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
      ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<MacOSFlutterLocalNotificationsPlugin>()
      ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
}

// ignore_for_file: nullable_type_in_catch_clause


import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:skill_colab/core/constants.dart';
// import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/utils/utils.dart';
import 'package:skill_colab/view/screens/splash/splash_view_model.dart';
import 'package:uni_links/uni_links.dart';


class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> with BaseScreenView {
  late SplashViewModel _viewModel;

  // ignore: unused_field
  late StreamSubscription _sub;

  Future<void> initUniLinks() async {
    // ... check initialUri

    // Attach a listener to the stream
    _sub = linkStream.listen((String? link) {
      // Use the uri and warn the user, if it is not correct
      Logger.printSuccess("Data ====> $link");
      if((link ?? "").contains("skill-")) {
        final String deepLink = link?.split("skill-").last ?? "";
        context.pushNamed(AppRoute.sinlgePost.name, extra: "skill-$deepLink");
      }
    }, onError: (err) {
      Logger.printError("Link error ====> $err");
    },);

    // NOTE: Don't forget to call _sub.cancel() in dispose()
  }

  @override
  void initState() {
    super.initState();

    initUniLinks();
    
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      _viewModel = ref.read(splashViewModel);
      _viewModel.attachView(this);
      _viewModel.getAccessToken(context);

      final String? token = await FirebaseMessaging.instance.getToken();
      AppConstants.fcmToken = token ?? "";
      Logger.printError(AppConstants.fcmToken);
      Logger.printSuccess("FCM Token: $token");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            gapH60,
            gapH60,
            // Image.asset("assets/images/logo_highres.png", height: 80, width: 80,),
            Image.asset(
              "assets/images/logo_full_high_res.png",
              height: 200,
              width: 300,
            ),
            gapH60,
            Lottie.asset("assets/animations/loading.json",
                height: 100, width: 100, frameRate: FrameRate(60),),
          ],
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen

    context.replaceNamed(
      appRoute.name,
      // {"fid": NavBarScreens.data[1].id},
    );
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    final snackBar = SnackBar(
      backgroundColor: color,
      content: Text(message),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          ScaffoldMessenger.of(context).clearSnackBars();
          // Some code to undo the change.
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // TODO: implement showSnackbar
  }

  @override
  void pushReplacementToScreen(AppRoute appRoute,
      {Map<String, String>? params,}) {
    // TODO: implement pushReplacementToScreen
  }
}

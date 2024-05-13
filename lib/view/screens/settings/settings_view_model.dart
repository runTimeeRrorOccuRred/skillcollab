import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/services/shared_preference_service.dart';
import 'package:skill_colab/utils/colors.dart';
import 'package:skill_colab/view/screens/homeView/dashboard_view_model.dart';
import 'package:skill_colab/view/screens/myGroups/my_groups_view_model.dart';
import 'package:skill_colab/view/screens/profile/userProfile/user_profile_view_model.dart';

final settingsViewModel =
    ChangeNotifierProvider((ref) => SettingsViewModel(ref: ref));

class SettingsViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  SettingsViewModel({required this.ref});

  Future<void> settingsTileOnTap(BuildContext context, int index) async {
    if (index == 0) {
      context.pushNamed(
        AppRoute.profileView.name,
        extra: {
          "userId": AppConstants.userId,
          "isSelfProfile": true,
        },
      );
    } else if (index == 1) {
      context.pushNamed(AppRoute.earningsView.name);
    } else if (index == 3) {
      context.pushNamed(AppRoute.toggleNotificationView.name);
    } else if (index == 5) {
      context.pushNamed(AppRoute.termsOfService.name);
    } else if (index == 4) {
      context.pushNamed(AppRoute.privacyPolicy.name);
    } else if (index == 2) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: kWhite,
            title: const Text(
              "Reset Password",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,),
            ),
            content: const Text(
              "Are you sure you want reset your password? ",
              style: TextStyle(color: primaryColor),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "No",
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  context.pushNamed(AppRoute.resetPassword.name);
                  Navigator.pop(context);
                },
                child: const Text(
                  "Yes",
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ],
          );
        },
      );
    } else if (index == 6) {
      ref.read(dashboardViewModel).clearData();
      ref.read(myGroupsViewModel).clearData();
      SharedPreferenceService.clearAll();
      AppConstants.userId = "";
      AppConstants.token = "";
      ref.read(userProfileViewModel).clearCustomerPlan();
      GoogleSignIn().disconnect().then(
        (value) async {
          await GoogleSignIn().signOut();
          await FirebaseAuth.instance.signOut();
        } 
      );
      GoRouter.of(context).goNamed(AppRoute.onboarding.name);
    }
  }
}

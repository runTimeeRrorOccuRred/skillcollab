// ignore_for_file: use_build_context_synchronously, avoid_dynamic_calls

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/refreshToken/models/refresh_token_model.dart';
import 'package:skill_colab/data/remote/refreshToken/refresh_token_repo_impl.dart';
import 'package:skill_colab/domain/providers/self_provider.dart';
import 'package:skill_colab/helpers/base_screen_view.dart';
import 'package:skill_colab/helpers/base_view_model.dart';
import 'package:skill_colab/routes/app_routes.dart';
import 'package:skill_colab/services/shared_preference_service.dart';
import 'package:skill_colab/utils/snackback.dart';
import 'package:skill_colab/utils/utils.dart';

final splashViewModel = ChangeNotifierProvider((ref) => SplashViewModel(ref: ref));

class SplashViewModel extends BaseViewModel<BaseScreenView> {
  Ref ref;
  SplashViewModel({required this.ref});

  final RefreshTokenRepoImpl _refreshTokenRepoImpl = RefreshTokenRepoImpl();

  /// DATA MEMBERS
  

  //==================GETTER======================//
  

  /// OTHER METHODS
  Future<void> getAccessToken(BuildContext context, {String initUrl = ""}) async {
    final String? refreshtoken = SharedPreferenceService.getString(AppConstants.refreshToken);
    Logger.printSuccess("REFRESH TOKEN =====> $refreshtoken");

    _refreshTokenRepoImpl.refreshAccessToken(RefreshTokenRequestModel(refreshToken: refreshtoken)).then((value) {
      return value.fold(
        (l) {
          Logger.printError("ERROR WITH REFRESH TOKEN, MIGHT BE NEW LOGIN OR SESSION IS EXPIRED");

          final String? authtoken = SharedPreferenceService.getString(AppConstants.refreshToken);
          Logger.printSuccess("AUTH TOKEN =====> $authtoken");

          AppConstants.usertype = SharedPreferenceService.getInt(AppConstants.usertypePref) ?? 0;
          Logger.printSuccess("USER TYPE =====> ${AppConstants.usertype}");

          if(authtoken != null) {
            showCustomSnackBar(context, text: "Your session has expired!\nPlease login again", color: kGrey);            
          }

          context.goNamed(AppRoute.onboarding.name);
        },
        (r) async {
          AppConstants.token = r.accessToken!;
          SharedPreferenceService.setString(
            AppConstants.authToken,
            AppConstants.token,
          );
          SharedPreferenceService.setString(
            AppConstants.refreshToken,
            r.refreshToken!,
          );    
          SharedPreferenceService.setString(
            "profilephoto",
            AppConstants.userProfilePhoto,
          );


          AppConstants.usertype = SharedPreferenceService.getInt(AppConstants.usertypePref) ?? 0;
          Logger.printSuccess("USER TYPE =====> ${AppConstants.usertype}");

          AppConstants.userId = SharedPreferenceService.getString(AppConstants.userIdPref) ?? "";
          await ref.read(selfDataProvider).getUserById(context, AppConstants.userId); 


          //TODO: Change this into model and repo impl
          final Response response = await ApiClient().get("${AppConstants.baseUrl}users/fetch?userId=${AppConstants.userId}");
          Logger.printError(response.data.toString());

          if (
            (ref.read(selfDataProvider).singleUserResponseModel.data?.email == null 
            || ref.read(selfDataProvider).singleUserResponseModel.data?.email == '' )
            && (ref.read(selfDataProvider).singleUserResponseModel.data?.userName ==  null
            || ref.read(selfDataProvider).singleUserResponseModel.data?.userName == '') 
          ){
            context.pushReplacementNamed(AppRoute.editProfile.name, extra: true);
          } else if(response.data['data']['isBan'] == true){
            context.goNamed(AppRoute.bannedUser.name);
          } else if(response.data['data']['isEmailVerified'] == false) {
            context.goNamed(AppRoute.onboarding.name);
          } else {

            /// GET THE CARD LIST OF THE USER
            // ref.read(selfDataProvider).getCardList(context, response.data['data']['customerId'] ?? "");

            if(initUrl.contains("skill-")) {
              //! DO NOTHING
            } else {
              context.goNamed(AppRoute.navigationView.name);
            }            

            FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
              context.goNamed(AppRoute.onboarding.name);
            });
          }
        }
      );
    });    
  }

}

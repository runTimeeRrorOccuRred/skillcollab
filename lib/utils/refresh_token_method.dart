import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/refreshToken/models/refresh_token_model.dart';
import 'package:skill_colab/data/remote/refreshToken/refresh_token_repo_impl.dart';
import 'package:skill_colab/services/shared_preference_service.dart';
import 'package:skill_colab/utils/utils.dart';

/// This function is to call refresh token if auth is expired while using the app
/// 
/// TO BE USED INSIDE APIS ONLY

Future<void> refreshAuthToken() async {
  final String? refreshToken = SharedPreferenceService.getString(AppConstants.refreshToken);
  
  RefreshTokenRepoImpl().refreshAccessToken(RefreshTokenRequestModel(refreshToken: refreshToken)).then((value) {
    return value.fold(
      (l) => Logger.printError(l.message), 
      (r) {
        Logger.printSuccess(r.toString());

        AppConstants.token = r.accessToken!;
        SharedPreferenceService.setString(
          AppConstants.authToken,
          AppConstants.token,
        );
        SharedPreferenceService.setString(
          AppConstants.refreshToken,
          r.refreshToken!,
        );      

        AppConstants.userId = SharedPreferenceService.getString(AppConstants.userIdPref) ?? "";
      }
    );
  });
}

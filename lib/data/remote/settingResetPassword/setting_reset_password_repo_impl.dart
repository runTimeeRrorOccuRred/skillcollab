import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/settingResetPassword/models/setting_reset_password_model.dart';
import 'package:skill_colab/data/remote/settingResetPassword/setting_reset_password_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class SettingResetPasswordRepoImpl implements SettingResetPasswordRepo{
  final ApiClient _apiClient;
  SettingResetPasswordRepoImpl(this._apiClient);
  
 @override
 Future<Either<ApiException, ResetPasswordResponse>> settingResetPassword(
      ResetPasswordRequest resetPasswordRequest,) async {
    try {
      final response = await _apiClient.post(
        path: "${AppConstants.baseUrl}auth/reset-password",
        data: resetPasswordRequest.toJson(),
      );
      Logger.write(response.toString());
      return Right(ResetPasswordResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

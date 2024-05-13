import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/settingResetPassword/models/setting_reset_password_model.dart';

abstract class SettingResetPasswordRepo {
  Future<Either<ApiException, ResetPasswordResponse>> settingResetPassword( ResetPasswordRequest resetPasswordRequest);
}

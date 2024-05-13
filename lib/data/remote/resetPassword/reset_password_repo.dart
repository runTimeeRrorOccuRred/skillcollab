// ignore: eol_at_end_of_file
import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/resetPassword/models/reset_password_model.dart';

abstract class ResetPasswordRepo {
  Future<Either<ApiException, ResetPasswordResponseModel>> resetPassword(ResetPasswordRequestModel resetPasswordRequestModel);
}

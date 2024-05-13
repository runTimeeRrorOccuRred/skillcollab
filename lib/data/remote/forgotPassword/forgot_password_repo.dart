import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/forgotPassword/models/forgot_password_model.dart';
import 'package:skill_colab/data/remote/forgotPassword/models/forgot_verify_model.dart';

abstract class ForgotPasswordRepo {
  Future<Either<ApiException, int>> sendEmailForgotPassword(ForgotPasswordRequestModel forgotPasswordRequestModel);
  Future<Either<ApiException, ForgotVerifyResponseModel>> forgotVerifyOtp(ForgotVerifyRequestModel forgotVerifyRequestModel);
}

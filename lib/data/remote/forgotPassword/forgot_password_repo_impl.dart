import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/forgotPassword/forgot_password_repo.dart';
import 'package:skill_colab/data/remote/forgotPassword/models/forgot_password_model.dart';
import 'package:skill_colab/data/remote/forgotPassword/models/forgot_verify_model.dart';
import 'package:skill_colab/utils/logger.dart';

class ForgotPasswordRepoImpl implements ForgotPasswordRepo {

  @override
  Future<Either<ApiException, int>> sendEmailForgotPassword(ForgotPasswordRequestModel forgotPasswordRequestModel) async {
    try {
      final Response response = await ApiClient().post(path: "${AppConstants.baseUrl}auth/forgot-password", data: forgotPasswordRequestModel.toJson());
      log("================= API RESPONSE =================");
      if(response.statusCode != 204) {
        Logger.printError(response.data);
      }
      Logger.printSuccess("Email Sent");
      return Right(response.statusCode!);
    } catch(e) {
      log("================= API EXCEPTION =================");
      log(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ForgotVerifyResponseModel>> forgotVerifyOtp(ForgotVerifyRequestModel forgotVerifyRequestModel) async {
    try {
      final Response response = await ApiClient().post(path: "${AppConstants.baseUrl}auth/forgot-verify", data: forgotVerifyRequestModel.toJson());
      log("================= API RESPONSE =================");
      Logger.printSuccess(response.data.toString());
      return Right(ForgotVerifyResponseModel.fromJson(response.data));
    } catch(e) {
      log("================= API EXCEPTION =================");
      log(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

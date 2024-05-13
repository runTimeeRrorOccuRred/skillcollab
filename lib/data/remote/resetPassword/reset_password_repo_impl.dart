// ignore_for_file: eol_at_end_of_file

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/resetPassword/models/reset_password_model.dart';
import 'package:skill_colab/data/remote/resetPassword/reset_password_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class ResetPasswordRepoImpl implements ResetPasswordRepo {

  @override
  Future<Either<ApiException, ResetPasswordResponseModel>> resetPassword(ResetPasswordRequestModel resetPasswordRequestModel) async {
    try {
      final Response response = await Dio().post("${AppConstants.baseUrl}auth/new-password", data: resetPasswordRequestModel.toJson());
      log("================= API RESPONSE =================");
      return Right(ResetPasswordResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
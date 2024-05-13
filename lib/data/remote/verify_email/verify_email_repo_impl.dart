import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/verify_email/models/verify_email_model.dart';
import 'package:skill_colab/data/remote/verify_email/verify_email_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class VerifyEmailRepoImpl implements VerifyEmailRepo {

  @override
  Future<Either<ApiException, VerifyEmailResponseModel>> verifyEmail(VerifyEmailRequestModel verifyEmailRequestModel) async {
    try {
      Logger.printWarning("token ====> ${AppConstants.token}");
      Logger.printWarning("otp ====> ${verifyEmailRequestModel.otp}");
      
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}auth/verify-email",
        data: jsonEncode({"otp": verifyEmailRequestModel.otp}),
      );

      Logger.printWarning("verify email response =====> ${response.data}");

      return Right(VerifyEmailResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

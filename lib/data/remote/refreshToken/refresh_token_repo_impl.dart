import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/refreshToken/models/refresh_token_model.dart';
import 'package:skill_colab/data/remote/refreshToken/refresh_token_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class RefreshTokenRepoImpl implements RefreshTokenRepo {

  @override
  Future<Either<ApiException, RefreshTokenResponseModel>> refreshAccessToken(RefreshTokenRequestModel refreshTokenRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}auth/refresh-tokens",
        data: refreshTokenRequestModel.toJson(),
      );

      Logger.printSuccess("refreshed token response ====> ${response.data}");

      return Right(RefreshTokenResponseModel.fromJson(response.data));

    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/refreshToken/models/refresh_token_model.dart';

abstract class RefreshTokenRepo {
  Future<Either<ApiException, RefreshTokenResponseModel>> refreshAccessToken(RefreshTokenRequestModel refreshTokenRequestModel);
}

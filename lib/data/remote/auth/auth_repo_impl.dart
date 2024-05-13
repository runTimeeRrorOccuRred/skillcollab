import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/core/endpoints.dart';
import 'package:skill_colab/data/remote/auth/auth_repo.dart';
import 'package:skill_colab/data/remote/auth/models/login_model.dart';
import 'package:skill_colab/data/remote/auth/models/register_model.dart';
import 'package:skill_colab/data/remote/auth/models/username_validator_model.dart';
import 'package:skill_colab/utils/utils.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiClient _apiClient;

  AuthRepoImpl(this._apiClient);

  @override
  Future<Either<ApiException, LoginResponseModel>> login(
    LoginRequest loginRequest,
  ) async {
    try {
      final response = await _apiClient.post(
        path: "${AppConstants.baseUrl}$loginEndpoint",
        data: loginRequest.toJson(),
      );

      Logger.printSuccess(response.toString());
      return Right(LoginResponseModel.fromJson(response.data!));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, RegistrationResponse>> registration(
    RegistrationRequest registrationRequest,
  ) async {
    try {
      final response = await _apiClient.post(
        path: "${AppConstants.baseUrl}$registrationEndpoint",
        data: registrationRequestToJson(registrationRequest),
      );

      AppConstants.token = RegistrationResponse.fromJson(response.data!).accessToken!;
      Logger.printWarning("access token ====> ${AppConstants.token}");

      final sendEmailResponse = await _apiClient.post(
        path: "${AppConstants.baseUrl}auth/send-verification-email",
        data: jsonEncode({"email": registrationRequest.email}),
      );

      Logger.printWarning("SEND VERIFICATION STATUS CODE =====> ${sendEmailResponse.statusCode}");

      log("register response data =====> $response");
      Logger.printSuccess(response.toString());
      return Right(RegistrationResponse.fromJson(response.data!));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
  
  @override
  Future<Either<ApiException, UsernameValidatorResponse>> usernamevalidation(UsernameValidatorRequest usernameValidatorRequest) async{
    try {
      final response = await _apiClient.post(
        path: "${AppConstants.baseUrl}$usernameverification",
        data: usernameValidatorRequestToJson(usernameValidatorRequest),
      );
      Logger.printSuccess(response.toString());
      return Right(UsernameValidatorResponse.fromJson(response.data!));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

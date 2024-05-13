import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/firebaseLogin/firebase_login_repo.dart';
import 'package:skill_colab/data/remote/firebaseLogin/models/firebase_login_model.dart';
import 'package:skill_colab/utils/logger.dart';

class FirebaseLoginRepoImpl implements FirebaseLoginRepo {
  final ApiClient _apiClient;

  FirebaseLoginRepoImpl(this._apiClient);
  @override
  Future<Either<ApiException, FirebaseLoginResponse>> firebaseLogin(
    FirebaseLoginRequest firebaseLoginRequest,
  ) async {
    try {
      final Response response = await _apiClient.post(
        path: "${AppConstants.baseUrl}auth/firebase-login",
        data: firebaseLoginRequest.toJson(),
      );
      Logger.printSuccess("Firebase Login Response ====> ${response.data}");
      return Right(FirebaseLoginResponse.fromJson(response.data));
    } catch (e) {
      log(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/interests/get_interests_repo.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/interests/models/get_personal_interests_model.dart';
import 'package:skill_colab/utils/utils.dart';

class GetInterestsRepoImpl implements GetInterestsRepo {

  @override
  Future<Either<ApiException, GetInterestsResponseModel>> getInterests(String name) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}users/interest/list",
        data: {},
      );
      Logger.printSuccess(response.data.toString());
      return Right(GetInterestsResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetPersonalInterestResponse>> getPersonalInterest(GetPersonalInterestRequest getPersonalInterestRequest) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}users/personal-interest/list",
        data: getPersonalInterestRequest.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(GetPersonalInterestResponse.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

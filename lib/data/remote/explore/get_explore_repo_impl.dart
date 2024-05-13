
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/explore/get_explore_repo.dart';
import 'package:skill_colab/data/remote/explore/models/explore_all_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_group_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_people_model.dart';
import 'package:skill_colab/data/remote/explore/models/explore_public_post_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GetExploreRepoImpl implements GetExploreRepo{

  @override
  Future<Either<ApiException, ExplorePeopleResponseModel>> getExplorePeople(ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int page) async {
    Logger.printInfo("${AppConstants.baseUrl}users/fetch-interest-people");
    try {
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}users/fetch-interest-people?page=$page&pageSize=$pageSize",
        data: explorePeopleRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      //  await ApiClient().get("${AppConstants.baseUrl}group/get-post-of-user/$userId");
      Logger.printSuccess(response.data.toString());
      return Right(ExplorePeopleResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ExploreGroupResponseModel>> getExploreGroup(ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int page) async{
    // Logger.printInfo("${AppConstants.baseUrl}users/fetch-interest-group");
    try {
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}group/fetch-interest-group?page=$page&pageSize=$pageSize",
        data: explorePeopleRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      //  await ApiClient().get("${AppConstants.baseUrl}group/get-post-of-user/$userId");
      Logger.printSuccess(response.data.toString());
      return Right(ExploreGroupResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ExplorePublicPostResponseModel>> getExplorePost(ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int page) async {
    // Logger.printInfo("${AppConstants.baseUrl}users/fetch-interest-people");
    try {
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}group/fetch-interest-post?page=$page&pageSize=$pageSize",
        data: explorePeopleRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      //  await ApiClient().get("${AppConstants.baseUrl}group/get-post-of-user/$userId");
      Logger.printSuccess(response.data.toString());
      return Right(ExplorePublicPostResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ExploreAllResponseModel>> getExploreAll(ExplorePeopleRequestModel explorePeopleRequestModel, int pageSize, int page) async {
    try {
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}users/fetch-interest-people-group-post?page=$page&pageSize=$pageSize",
        data: explorePeopleRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      //  await ApiClient().get("${AppConstants.baseUrl}group/get-post-of-user/$userId");
      Logger.printSuccess(response.data.toString());
      return Right(ExploreAllResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError('Catch$e');
      return Left(ApiException(e.toString()));
    }
  }
}

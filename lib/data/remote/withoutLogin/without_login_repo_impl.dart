
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsAndPeopleWithoutLogin/models/get_all_groups_and_people_without_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllPeopleWithoutLogin/models/get_all_people_without_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/without_login_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class WithoutLoginRepoImpl implements WithoutLoginRepo {

  @override
  Future<Either<ApiException, GetAllGroupsWithoutLoginResponseModel>> getAllGroupsWithoutLogin(
      GetAllGroupsWithoutLoginRequestModel getAllGroupsWithoutLoginRequestModel,
      int pageSize,) async {
    try {
      final Response response = await Dio().post(
          "${AppConstants.baseUrl}group/get-without-all-group?page=1&pageSize=$pageSize",
          data: getAllGroupsWithoutLoginRequestModel.toJson(),
      );

      Logger.printWarning("get all groups without login =====> ${response.data}");

      return Right(GetAllGroupsWithoutLoginResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }


  @override
  Future<Either<ApiException, GetAllPeopleWithoutLoginResponseModel>> getAllPeopleWithoutLogin(GetAllPeopleWithoutLoginRequestModel getAllPeopleWithoutLoginRequestModel, int pageSize) async {
    try {
      final Response response = await Dio().post(
          "${AppConstants.baseUrl}users/get-without-all-people?page=1&pageSize=$pageSize",
          data: getAllPeopleWithoutLoginRequestModel.toJson(),
      );

      Logger.printWarning("get all people without login =====> ${response.data}");

      return Right(GetAllPeopleWithoutLoginResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }


  @override
  Future<Either<ApiException, GetAllGroupsAndPeopleWithoutLoginResponseModel>>
      getAllGroupsAndPeopleWithoutLogin(
          GetAllGroupsAndPeopleWithoutLoginRequestModel
              getAllGroupsAndPeopleWithoutLoginRequestModel,
          int pageSize,) async {
    try {
      final Response response = await ApiClient().post(
          path:
              "${AppConstants.baseUrl}users/get-without-all-people-group?page=1&pageSize=$pageSize",
          data: getAllGroupsAndPeopleWithoutLoginRequestModel.toJson(),);

      Logger.printWarning("get all groups and people without login =====> ${response.data}");

      return Right(GetAllGroupsAndPeopleWithoutLoginResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

// ignore_for_file: avoid_print

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
// import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsWithLogin/models/get_all_groups_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllPeopleWithLogin/models/get_all_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/with_login_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class WithLoginRepoImpl implements WithLoginRepo {

  @override
  Future<Either<ApiException, GetAllGroupsWithLoginResponseModel>> getAllGroupsWithLogin(GetAllGroupsWithLoginRequestModel getAllGroupsWithLoginRequestModel, int pageSize) async {
    try { 
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}group/get-all-group?page=1&pageSize=$pageSize",
        data: getAllGroupsWithLoginRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );

      Logger.printWarning("get all groups with login =====> ${response.data}");

      return Right(GetAllGroupsWithLoginResponseModel.fromJson(response.data));
    } catch(e) {
      // Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetAllPeopleWithLoginResponseModel>> getAllPeopleWithLogin(GetAllPeopleWithLoginRequestModel getAllPeopleWithLoginRequestModel, int pageSize, int page) async {
    try { 
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}users/get-all-people?page=$page&pageSize=$pageSize",
        data: getAllPeopleWithLoginRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );

      Logger.printWarning("get all people with login =====> ${response.data}");

      return Right(GetAllPeopleWithLoginResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetAllGroupsAndPeopleWithLoginResponseModel>> getAllGroupsAndPeopleWithLogin(GetAllGroupsAndPeopleWithLoginRequestModel getAllGroupsAndPeopleWithLoginRequestModel, int pageSize, int page) async {
    try { 
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}users/get-all-people-group?page=$page&pageSize=$pageSize",
        data: getAllGroupsAndPeopleWithLoginRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );

      Logger.printWarning("get all groups and people with login =====> ${response.data}");
      // ignore: avoid_dynamic_calls
      print(response.data[0]);

      return Right(GetAllGroupsAndPeopleWithLoginResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/search/models/all_group_model.dart';
import 'package:skill_colab/data/remote/search/models/all_people_model.dart';
import 'package:skill_colab/data/remote/search/search_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class SearchRepoImpl implements SearchRepo {

  @override
  Future<Either<ApiException, AllPeopleResponseModel>> getAllPeople(AllPeopleRequestModel allPeopleRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}users/all-people?page=1&pageSize=40",
        data: allPeopleRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());

      return Right(AllPeopleResponseModel.fromJson(response.data));

    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, AllGroupResponseModel>> getAllGroups(AllGroupRequestModel allGroupRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/get-all-group?page=1&pageSize=10",
        data: allGroupRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());
      // Logger.printError(response.data['data'][0]['userId'].toString());

      return Right(AllGroupResponseModel.fromJson(response.data));

    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

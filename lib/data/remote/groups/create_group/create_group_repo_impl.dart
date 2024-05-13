import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/create_group/create_group_repo.dart';
import 'package:skill_colab/data/remote/groups/create_group/models/create_group_model.dart';
import 'package:skill_colab/utils/utils.dart';

class CreateGroupRepoImpl implements CreateGroupRepo {

  @override
  Future<Either<ApiException, CreateGroupResponseModel>> createGroup(CreateGroupRequestModel createGroupRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/create-group",
        data: createGroupRequestModel.toJson(),
      );

      Logger.printSuccess("create group response ====> ${response.data}");

      return Right(CreateGroupResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }  
  
  @override
  Future<Either<ApiException, CreateGroupResponseModel>> createPremiumGroup(CreatePremiumGroupRequestModel createGroupRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/create-group",
        data: createGroupRequestModel.toJson(),
      );

      Logger.printSuccess("create premium group response ====> ${response.data}");

      return Right(CreateGroupResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

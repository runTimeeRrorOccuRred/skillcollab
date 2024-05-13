import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/groups/getGroup/get_group_repo.dart';
import 'package:skill_colab/data/remote/groups/getGroup/models/get_group_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GetGroupRepoImpl implements GetGroupRepo {

  @override
  Future<Either<ApiException, GetGroupResponseModel>> getGroup(String groupId) async {
    try {
      Logger.printWarning("${AppConstants.baseUrl}group/get-group/$groupId");
      final Response response = await ApiClient().get("${AppConstants.baseUrl}group/get-group/$groupId");
      // Logger.printWarning("status code ======> ${response.statusCode}");
      Logger.printSuccess(response.data.toString());
      Logger.printSuccess(GetGroupResponseModel.fromJson(response.data).toString());
      return Right(GetGroupResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

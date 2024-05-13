import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/groupAccess/group_access_repo.dart';
import 'package:skill_colab/data/remote/groups/groupAccess/models/group_access_model.dart';
import 'package:skill_colab/utils/utils.dart';

class GroupAccessRepoImpl implements GroupAccessRepo {

  @override
  Future<Either<ApiException, GroupAccessResponseModel>> groupAccess(GroupAccessRequestModel groupAccessRequestModel) async {
    Logger.printSuccess("${AppConstants.baseUrl}payment/group-access-content");
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/group-access-content",
        data: groupAccessRequestModel.toJson(),
      );

      Logger.printSuccess("group access response ====> ${response.data}");

      return Right(GroupAccessResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }  
}

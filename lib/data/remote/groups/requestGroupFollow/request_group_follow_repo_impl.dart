import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/requestGroupFollow/models/request_group_follow_model.dart';
import 'package:skill_colab/data/remote/groups/requestGroupFollow/request_group_follow_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class ReequestGroupFollowRepoImpl implements ReequestGroupFollowRepo {

  @override
  Future<Either<ApiException, RequestGroupFollowResponseModel>> requestGroupFollow(String groupId) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/follow-group/$groupId",
        data: {},
      );
      Logger.printSuccess(response.data.toString());
      return Right(RequestGroupFollowResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

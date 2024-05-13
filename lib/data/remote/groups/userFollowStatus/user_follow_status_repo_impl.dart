import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/userFollowStatus/models/follow_status_action_model.dart';
import 'package:skill_colab/data/remote/groups/userFollowStatus/models/user_follow_status_model.dart';
import 'package:skill_colab/data/remote/groups/userFollowStatus/user_follow_status_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class UserFollowStatusRepoImpl implements UserFollowStatusRepo {

  @override
  Future<Either<ApiException, UserFollowStatusResponseModel>> getUserFollowStatus(String groupId) async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}group/user-pending-status/$groupId");
      Logger.printSuccess(response.data.toString());
      return Right(UserFollowStatusResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, FollowStatusActionResponseModel>> followStatusAction(FollowStatusActionRequestModel followStatusActionRequestModel, String groupId) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/accept-request/$groupId",
        data: followStatusActionRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(FollowStatusActionResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

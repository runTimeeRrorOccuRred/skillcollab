// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/removeFollower/models/remove_follower_model.dart';
import 'package:skill_colab/data/remote/groups/removeFollower/remove_follower_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class RemoveFollowerRepoImpl implements RemoveFollowerRepo {

  @override
  Future<Either<ApiException, bool>> removeFollower(RemoveFollowerRequestModel removeFollowerRequestModel, String groupId) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/unfollow-group-user/$groupId",
        data: removeFollowerRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(response.data['isSuccess']);
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/groupFollowUnfollow/group_follow_unfollow_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class GroupFollowUnfollowRepoImpl implements GroupFollowUnfollowRepo {

  @override
  Future<Either<ApiException, bool>> followGroup(String groupId) async {
    Logger.printError("${AppConstants.baseUrl}group/follow-group/$groupId");
    try {
      final Response response = await ApiClient().post(path: "${AppConstants.baseUrl}group/follow-group/$groupId", data: {});
      Logger.printSuccess(response.data.toString());
      return Right(response.data['isSuccess']);
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, bool>> unfollowGroup(String groupId) async {
    try {
      final Response response = await ApiClient().post(path: "${AppConstants.baseUrl}group/unfollow-group/$groupId", data: {});
      Logger.printSuccess(response.data.toString());
      return Right(response.data['isSuccess']);
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

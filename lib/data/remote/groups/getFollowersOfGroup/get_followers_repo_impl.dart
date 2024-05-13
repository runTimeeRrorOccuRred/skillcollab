import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/getFollowersOfGroup/get_followers_repo.dart';
import 'package:skill_colab/data/remote/groups/getFollowersOfGroup/model/get_followers_model.dart';
import 'package:skill_colab/utils/utils.dart';

class GetFollowersRepoImpl implements GetFollowersRepo {

  @override
  Future<Either<ApiException, GetFollowersModel>> getFollowersOfGroup(String groupId) async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}group/get-followers-by-group/$groupId");
      Logger.printSuccess(response.data.toString());
      return Right(GetFollowersModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

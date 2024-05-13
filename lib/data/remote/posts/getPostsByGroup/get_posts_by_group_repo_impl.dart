import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/get_posts_by_group_repo.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';
import 'package:skill_colab/utils/utils.dart';

class GetPostsByGroupRepoImpl implements GetPostsByGroupRepo {

  @override
  Future<Either<ApiException, GetPostsByGroupModel>> getPostsByGroup(GetPostsByGroupRequestModel getPostsByGroupRequestModel, String groupId) async {
    Logger.printInfo("${AppConstants.baseUrl}group/post-by-group/$groupId?page=1&pageSize=40");
    try {
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}group/post-by-group/$groupId?page=1&pageSize=40",
        data: getPostsByGroupRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(GetPostsByGroupModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/getPosts/get_posts_repo.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_model.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_single_post_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GetPostsRepoImpl implements GetPostsRepo {

  @override
  Future<Either<ApiException, GetPostsUserResponseModel>> getPostsOfSelf(GetPostsUserRequestModel getPostsUserRequestModel) async {
    try {
      final Response response = await Dio().get(
        "${AppConstants.baseUrl}group/get-post-by-user",
        data: getPostsUserRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(GetPostsUserResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetPostsByUserIdResponseModel>> getPostsByUserId(GetPostsByUserIdRequestModel getPostsByUserIdRequestModel, String userId) async {
    Logger.printInfo("${AppConstants.baseUrl}group/get-post-of-user/$userId");
    try {
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}group/get-post-of-user/$userId",
        data: getPostsByUserIdRequestModel.toJson(),
        // options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"})
      );
      //  await ApiClient().get("${AppConstants.baseUrl}group/get-post-of-user/$userId");
      Logger.printSuccess(response.data.toString());
      return Right(GetPostsByUserIdResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetSinglePostResponseModel>> getSinglePostData(String postId) async {
    try {
      final Response response = await Dio().get(
        "${AppConstants.baseUrl}group/post/$postId",
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(GetSinglePostResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

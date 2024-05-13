import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/createPost/create_post_repo.dart';
import 'package:skill_colab/data/remote/posts/createPost/models/create_post_model.dart';
import 'package:skill_colab/utils/utils.dart';

class CreatePostRepoImpl implements CreatePostRepo {

  @override
  Future<Either<ApiException, CreatePostResponseModel>> createPost(CreatePostRequestModel createPostRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/post",
        data: createPostRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());
      return Right(CreatePostResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
  
  @override
  Future<Either<ApiException, CreatePostResponseModel>> createUserPost(CreateUserPostRequestModel createUserPostRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}users/post", // Sayak da make change on the api to group--user
        data: createUserPostRequestModel.toJson(),
      );

      Logger.printError("=========>$createUserPostRequestModel");

      Logger.printSuccess(response.data.toString());
      return Right(CreatePostResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
  
}

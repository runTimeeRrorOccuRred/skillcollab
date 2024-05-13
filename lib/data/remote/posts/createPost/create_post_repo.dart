import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/createPost/models/create_post_model.dart';

abstract class CreatePostRepo {
  Future<Either<ApiException, CreatePostResponseModel>> createPost(CreatePostRequestModel createPostRequestModel);
  Future<Either<ApiException, CreatePostResponseModel>> createUserPost(CreateUserPostRequestModel createUserPostRequestModel);
}

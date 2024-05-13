import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_model.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_single_post_model.dart';

abstract class GetPostsRepo {
  Future<Either<ApiException, GetPostsUserResponseModel>> getPostsOfSelf(GetPostsUserRequestModel getPostsUserRequestModel);
  Future<Either<ApiException, GetPostsByUserIdResponseModel>> getPostsByUserId(GetPostsByUserIdRequestModel getPostsByUserIdRequestModel, String userId);
  Future<Either<ApiException, GetSinglePostResponseModel>> getSinglePostData(String postId);
}

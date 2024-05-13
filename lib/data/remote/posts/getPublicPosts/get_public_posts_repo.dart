import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';

abstract class GetPublicPostsRepo {
  Future<Either<ApiException, GetPublicPostsResponseModel>> getPublicPosts(GetPublicPostsRequestModel getPublicPostsRequestModel,  int pageSize, int page);
}

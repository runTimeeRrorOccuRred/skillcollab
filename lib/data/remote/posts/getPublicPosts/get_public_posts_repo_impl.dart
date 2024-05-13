import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/get_public_posts_repo.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
// import 'package:skill_colab/utils/refresh_token_method.dart';
import 'package:skill_colab/utils/utils.dart';

class GetPublicPostsRepoImpl implements GetPublicPostsRepo {

  @override
  Future<Either<ApiException, GetPublicPostsResponseModel>> getPublicPosts(GetPublicPostsRequestModel getPublicPostsRequestModel,  int pageSize, int page) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/get-public-posts?page=$page&pageSize=$pageSize",
        data: getPublicPostsRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());

      return Right(GetPublicPostsResponseModel.fromJson(response.data));
    } catch(e) {
      // refreshAuthToken().then((value) => getPublicPosts(getPublicPostsRequestModel));
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

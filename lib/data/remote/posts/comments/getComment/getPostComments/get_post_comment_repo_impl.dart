import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/comments/getComment/getPostComments/get_post_comment_repo.dart';
import 'package:skill_colab/data/remote/posts/comments/getComment/getPostComments/model/get_post_comment_model.dart';
import 'package:skill_colab/utils/utils.dart';

class GetPostCommentRepoImpl implements GetPostCommentRepo {

  @override
  Future<Either<ApiException, GetPostCommentModel>> getPostComments(String postId) async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}group/post/get-comments/$postId");
      Logger.printSuccess(response.data.toString());
      return Right(GetPostCommentModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

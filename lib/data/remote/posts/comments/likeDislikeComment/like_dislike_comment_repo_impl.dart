import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/comments/likeDislikeComment/like_dislike_comment_repo.dart';
import 'package:skill_colab/data/remote/posts/comments/likeDislikeComment/models/like_dislike_comment_model.dart';
import 'package:skill_colab/utils/utils.dart';

class LikeDislikeCommentRepoImpl implements LikeDislikeCommentRepo {

  @override
  Future<Either<ApiException, LikeDislikeCommentResponseModel>> likeDislikeComment(LikeDislikeCommentRequestModel likeDislikeCommentRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/comment/like-dislike",
        data: likeDislikeCommentRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());

      return Right(LikeDislikeCommentResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

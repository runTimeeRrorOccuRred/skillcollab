import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/comments/comment_likedislike/models/question_comment_likedislike_model.dart';
import 'package:skill_colab/data/remote/questions/comments/comment_likedislike/question_comment_likedislike_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class QuestionCommentLikeDislikeRepoImpl implements QuestionCommentLikeDislikeRepo {

  @override
  Future<Either<ApiException, QuestionCommentLikeDislikeResponseModel>> likeDislikeQuestionComment(QuestionCommentLikeDislikeRequestModel questionCommentLikeDislikeRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/comment/like-dislike",
        data: questionCommentLikeDislikeRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(QuestionCommentLikeDislikeResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

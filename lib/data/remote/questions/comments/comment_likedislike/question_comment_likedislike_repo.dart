import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/comments/comment_likedislike/models/question_comment_likedislike_model.dart';

abstract class QuestionCommentLikeDislikeRepo {
  Future<Either<ApiException, QuestionCommentLikeDislikeResponseModel>> likeDislikeQuestionComment(QuestionCommentLikeDislikeRequestModel questionCommentLikeDislikeRequestModel);
}

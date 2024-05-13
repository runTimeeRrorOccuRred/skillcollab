import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/comments/get_comment/models/get_question_comment_model.dart';

abstract class GetQuestionCommentRepo {
  Future<Either<ApiException, GetQuestionCommentResponseModel>> getQuestionComment(String questionId);
}

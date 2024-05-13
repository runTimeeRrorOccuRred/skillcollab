import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/comments/add_comment/models/question_comment_model.dart';

abstract class QuestionCommentRepo{
  Future<Either<ApiException, AddQuestionCommentResponseModel>> addQuestionComment(AddQuestionCommentRequestModel addQuestionCommentRequestModel);
}

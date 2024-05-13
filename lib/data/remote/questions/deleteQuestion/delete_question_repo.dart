import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/deleteQuestion/models/delete_question_model.dart';

abstract class DeleteQuestionRepo{
  Future<Either<ApiException, DeleteQuestionResponseModel>> deleteQuestion(String questionId);
}
import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/createQuestions/models/create_question_model.dart';

abstract class CreateQuestionRepo{
  Future<Either<ApiException, CreateQuestionResponseModel>> createQuestion(CreateQuestionRequestModel createQuestionRequestModel);
}

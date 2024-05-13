import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/getSingleQuestion/models/get_single_question_model.dart';

abstract class GetSingleQuestionRepo {
  Future<Either<ApiException, GetSingleQuestionResponseModel>> getSingleQuestionData(String questionId);
}

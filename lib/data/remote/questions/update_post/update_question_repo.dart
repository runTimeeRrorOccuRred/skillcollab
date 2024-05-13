import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/questions/update_post/models/update_question_model.dart';

abstract class UpdateQuestionRepo {
  Future<Either<ApiException, UpdateQuestionResponseModel>> updateQuestion( UpdateQuestionRequestModel updateQuestionRequestModel,String questionId);
}

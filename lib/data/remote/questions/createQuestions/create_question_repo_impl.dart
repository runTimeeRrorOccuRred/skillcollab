import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/createQuestions/create_question_repo.dart';
import 'package:skill_colab/data/remote/questions/createQuestions/models/create_question_model.dart';
import 'package:skill_colab/utils/logger.dart';

class CreateQuestionRepoImpl implements CreateQuestionRepo {

  @override
  Future<Either<ApiException, CreateQuestionResponseModel>> createQuestion(CreateQuestionRequestModel createQuestionRequestModel) async{
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/create-question",
        data: createQuestionRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());
      return Right(CreateQuestionResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

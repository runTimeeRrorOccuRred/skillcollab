import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/deleteQuestion/delete_question_repo.dart';
import 'package:skill_colab/data/remote/questions/deleteQuestion/models/delete_question_model.dart';
import 'package:skill_colab/utils/logger.dart';

class DeleteQuestionRepoImpl implements DeleteQuestionRepo{
  @override
  Future<Either<ApiException, DeleteQuestionResponseModel>> deleteQuestion(String questionId) async {
    try {
      final Response response = await Dio().delete(
        "${AppConstants.baseUrl}group/remove/question/$questionId",
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      // Logger.printSuccess(response.data);
      return Right(DeleteQuestionResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

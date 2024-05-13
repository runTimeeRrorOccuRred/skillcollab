import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/getSingleQuestion/get_single_question_repo.dart';
import 'package:skill_colab/data/remote/questions/getSingleQuestion/models/get_single_question_model.dart';
import 'package:skill_colab/utils/utils.dart';

class GetSingleQuestionRepoImpl implements GetSingleQuestionRepo {

  @override
  Future<Either<ApiException, GetSingleQuestionResponseModel>> getSingleQuestionData(String questionId) async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}group/question/$questionId");
      Logger.printSuccess(response.data.toString());
      return Right(GetSingleQuestionResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

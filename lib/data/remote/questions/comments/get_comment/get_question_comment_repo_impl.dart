import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/questions/comments/get_comment/get_question_comment_repo.dart';
import 'package:skill_colab/data/remote/questions/comments/get_comment/models/get_question_comment_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GetQuestionCommentRepoImpl implements GetQuestionCommentRepo{

  @override
  Future<Either<ApiException, GetQuestionCommentResponseModel>> getQuestionComment(String questionId) async{
    try {
      final Response response = await Dio().get(
        "${AppConstants.baseUrl}group/question/get-comments/$questionId",
        data: {},
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(GetQuestionCommentResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

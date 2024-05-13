import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/comments/add_comment/models/question_comment_model.dart';
import 'package:skill_colab/data/remote/questions/comments/add_comment/question_comment_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class QuestionCommentRepoImpl implements QuestionCommentRepo {

  @override
  Future<Either<ApiException, AddQuestionCommentResponseModel>> addQuestionComment(AddQuestionCommentRequestModel addQuestionCommentRequestModel) async{
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/question/add-comment",
        data: addQuestionCommentRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());
      return Right(AddQuestionCommentResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

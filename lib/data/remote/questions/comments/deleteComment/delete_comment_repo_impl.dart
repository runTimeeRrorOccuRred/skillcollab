import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/comments/deleteComment/models/delete_comment_model.dart';
import 'package:skill_colab/data/remote/questions/comments/deleteComment/delete_comment_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class DeleteCommentRepoImpl implements DeleteCommentRepo{
  @override
  Future<Either<ApiException, DeleteCommentResponseModel>> deleteComment(DeleteCommentRequestModel deleteCommentRequestModel, String commentId) async {
    try {
      final Response response = await Dio().delete(
        "${AppConstants.baseUrl}group/question/remove-comment/$commentId",
        data: deleteCommentRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      // Logger.printSuccess(response.data);
      return Right(DeleteCommentResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
  
  @override
  Future<Either<ApiException, DeleteCommentResponseModel>> deleteCommentQuestion(DeleteCommentQuestionRequestModel deleteCommentQuestionRequestModel, String commentId) async {
    try {
      final Response response = await Dio().delete(
        "${AppConstants.baseUrl}group/question/remove-comment/$commentId",
        data: deleteCommentQuestionRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      // Logger.printSuccess(response.data);
      return Right(DeleteCommentResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

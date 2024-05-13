import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/tutorial/comments/add_comment/models/tutorial_comment_model.dart';
import 'package:skill_colab/data/remote/tutorial/comments/add_comment/tutorial_comment_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class TutorialCommentRepoImpl implements TutorialCommentRepo {

  @override
  Future<Either<ApiException, TutorialAddCommentResponseModel>> addTutorialComment(TutorialAddCommentRequestModel tutorialAddCommentRequestModel) async{
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/tutorial/add-comment",
        data: tutorialAddCommentRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());
      return Right(TutorialAddCommentResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

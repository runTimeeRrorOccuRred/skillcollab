import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tutorial/comments/get_comment/get_tutorial_comment_repo.dart';
import 'package:skill_colab/data/remote/tutorial/comments/get_comment/models/get_tutorial_comment_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GetTutorialCommentRepoImpl implements GetTutorialCommentRepo{

  @override
  Future<Either<ApiException, TutorialGetCommentResponseModel>> getTutorialComment(String tutorialId) async{
    try {
      final Response response = await Dio().get(
        "${AppConstants.baseUrl}group/tutorial/get-comments/$tutorialId",
        data: {},
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(TutorialGetCommentResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tutorial/comments/add_comment/models/tutorial_comment_model.dart';
import 'package:skill_colab/data/remote/tutorial/comments/comment_likedislike/models/tutorial_comment_likedislike_model.dart';
import 'package:skill_colab/data/remote/tutorial/comments/comment_likedislike/tutorial_comment_like_dislike_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class TutorialCommentLikeDislikeRepoImpl implements TutorialCommentLikeDislikeRepo {

  @override
  Future<Either<ApiException, TutorialAddCommentResponseModel>> likeDislikeTutorialComment(TutorialCommentLikeDislikeRequestModel tutorialCommentLikeDislikeRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/comment/like-dislike",
        data: tutorialCommentLikeDislikeRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(TutorialAddCommentResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

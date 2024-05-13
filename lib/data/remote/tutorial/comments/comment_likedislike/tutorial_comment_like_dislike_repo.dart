import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/tutorial/comments/add_comment/models/tutorial_comment_model.dart';
import 'package:skill_colab/data/remote/tutorial/comments/comment_likedislike/models/tutorial_comment_likedislike_model.dart';

abstract class TutorialCommentLikeDislikeRepo {
  Future<Either<ApiException, TutorialAddCommentResponseModel>> likeDislikeTutorialComment(TutorialCommentLikeDislikeRequestModel tutorialCommentLikeDislikeRequestModel);
}

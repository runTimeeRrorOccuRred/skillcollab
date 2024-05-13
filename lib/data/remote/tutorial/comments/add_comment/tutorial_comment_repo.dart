import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/tutorial/comments/add_comment/models/tutorial_comment_model.dart';

abstract class TutorialCommentRepo{
  Future<Either<ApiException, TutorialAddCommentResponseModel>> addTutorialComment(TutorialAddCommentRequestModel tutorialAddCommentRequestModel);
}

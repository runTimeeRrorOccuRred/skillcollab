import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/tutorial/comments/get_comment/models/get_tutorial_comment_model.dart';

abstract class GetTutorialCommentRepo {
  Future<Either<ApiException, TutorialGetCommentResponseModel>> getTutorialComment(String tutorialId);
}

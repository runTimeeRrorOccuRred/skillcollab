import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';

abstract class DeleteTutorialRepo {
  Future<Either<ApiException, bool>> deleteTutorial(String tutorialId);
}
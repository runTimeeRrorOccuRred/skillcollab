import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/tutorial/getSingleTutorial/models/get_single_tutorial_model.dart';

abstract class GetSingleTutorialRepo {
  Future<Either<ApiException, GetSingleTutorialResponseModel>> getSingleTutorialData(String tutorialId);
}

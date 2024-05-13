import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tutorial/updateTutorial/models/update_tutorial_model.dart';

abstract class UpdateTutorialRepo {
  Future<Either<ApiException, UpdateTutorialResponseModel>> updateTutorial(UpdateTutorialRequestModel updateTutorialRequestModel, String tutorialId);
}
import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/tutorial/createTutorial/models/create_tutorial_model.dart';

abstract class CreateTutorialRepo{
  Future<Either<ApiException, CreateTutorialResponseModel>> createTutorial(CreateTutorialRequestModel createTutorialRequestModel);
}

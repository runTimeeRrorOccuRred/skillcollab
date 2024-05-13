import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/tutorial/createTutorial/create_tutorial_repo.dart';
import 'package:skill_colab/data/remote/tutorial/createTutorial/models/create_tutorial_model.dart';
import 'package:skill_colab/utils/logger.dart';

class CreateTutorialRepoImpl implements CreateTutorialRepo {

  @override
  Future<Either<ApiException, CreateTutorialResponseModel>> createTutorial(CreateTutorialRequestModel createTutorialRequestModel) async{
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/create-tutorial",
        data: createTutorialRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());
      return Right(CreateTutorialResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

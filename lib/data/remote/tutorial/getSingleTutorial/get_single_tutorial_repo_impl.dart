import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tutorial/getSingleTutorial/get_single_tutorial_repo.dart';
import 'package:skill_colab/data/remote/tutorial/getSingleTutorial/models/get_single_tutorial_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GetSingleTutorialRepoImpl implements GetSingleTutorialRepo {

  @override
  Future<Either<ApiException, GetSingleTutorialResponseModel>> getSingleTutorialData(String tutorialId) async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}group/tutorial/$tutorialId");
      Logger.printSuccess(response.data.toString());
      return Right(GetSingleTutorialResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
  
}

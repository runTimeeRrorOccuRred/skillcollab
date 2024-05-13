import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tutorial/deleteTutorial/delete_tutorial_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class DeleteTutorialRepoImpl implements DeleteTutorialRepo {

  @override
  Future<Either<ApiException, bool>> deleteTutorial(String tutorialId) async {
    try {
      final Response response = await ApiClient().delete("${AppConstants.baseUrl}group/remove/tutorial/$tutorialId");
      Logger.printSuccess(response.data.toString());
      return const Right(true);
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
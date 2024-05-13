import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tutorial/updateTutorial/models/update_tutorial_model.dart';
import 'package:skill_colab/data/remote/tutorial/updateTutorial/update_tutorial_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class UpdateTutorialRepoImpl implements UpdateTutorialRepo {

  @override
  Future<Either<ApiException, UpdateTutorialResponseModel>> updateTutorial(UpdateTutorialRequestModel updateTutorialRequestModel, String tutorialId) async {
    try {
      final Response response = await ApiClient().patch(
        "${AppConstants.baseUrl}/group/update-tutorial/$tutorialId", 
        updateTutorialRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(UpdateTutorialResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
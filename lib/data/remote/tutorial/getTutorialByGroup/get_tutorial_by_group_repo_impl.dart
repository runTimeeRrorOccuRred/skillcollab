import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/get_tutorial_by_group_repo.dart';
import 'package:skill_colab/data/remote/tutorial/getTutorialByGroup/models/get_tutorial_by_group_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GetTutorialByGroupRepoImpl implements GetTutorialByGroupRepo{

  @override
  Future<Either<ApiException, GetTutorialResponseModel>> getTutorialByGroup(GetTutorialRequestModel getTutorialRequestModel, String groupId) async{
    try {
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}group/view-tutorial-by-group/$groupId",
        data: getTutorialRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(GetTutorialResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

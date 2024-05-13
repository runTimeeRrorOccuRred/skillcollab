import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/get_question_by_group_repo.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/models/get_question_by_group_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GetQuestionByGroupRepoImpl implements GetQuestionByGroupRepo{

  @override
  Future<Either<ApiException, GetQuestionByGroupModel>> getQuestionByGroup(GetQuestionByGroupRequestModel getQuestionByGroupRequestModel, String groupId) async{
    try {
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}group/view-question-by-group/$groupId",
        data: getQuestionByGroupRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(GetQuestionByGroupModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

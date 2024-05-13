import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/questions/update_post/models/update_question_model.dart';
import 'package:skill_colab/data/remote/questions/update_post/update_question_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class UpdateQuestionRepoImpl implements UpdateQuestionRepo {
  final ApiClient _apiClient;
  UpdateQuestionRepoImpl(this._apiClient);
  @override
  Future<Either<ApiException, UpdateQuestionResponseModel>> updateQuestion( UpdateQuestionRequestModel updateQuestionRequestModel,String questionId) async {
    try {
      final response = await _apiClient.patch(
        "${AppConstants.baseUrl}group/update-question/$questionId",
        updateQuestionRequestModel.toJson(),
      );
      Logger.write(response.toString());
      return Right(UpdateQuestionResponseModel.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

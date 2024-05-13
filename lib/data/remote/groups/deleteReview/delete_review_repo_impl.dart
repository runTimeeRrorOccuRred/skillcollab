import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/groups/deleteReview/delete_review_repo.dart';
import 'package:skill_colab/data/remote/groups/deleteReview/models/delete_review_models.dart';
import 'package:skill_colab/utils/logger.dart';

class DeleteReviewRepoImpl implements DeleteReviewRepo{
  @override
  Future<Either<ApiException, DeleteReviewResponseModel>> deleteReview(DeleteReviewRequestModel deleteReviewRequestModel ,String reviewId) async {
    try {
      final Response response = await Dio().delete(
        "${AppConstants.baseUrl}group/remove-group-rating/$reviewId",
        data: deleteReviewRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      return Right(DeleteReviewResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

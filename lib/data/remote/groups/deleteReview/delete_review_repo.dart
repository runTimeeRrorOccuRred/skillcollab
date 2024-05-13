import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/deleteReview/models/delete_review_models.dart';

abstract class DeleteReviewRepo{
  Future<Either<ApiException, DeleteReviewResponseModel>> deleteReview(DeleteReviewRequestModel deleteReviewRequestModel, String reviewId);
}

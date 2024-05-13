import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/getRatings/models/group_rating_response_model.dart';

abstract class GetRatingRepo {
  Future<Either<ApiException, GroupRatingResponseModel>> getGroupRating(String groupId);
}

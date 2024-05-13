// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/addRating/models/add_group_rating_request_model.dart';

abstract class AddGroupRatingRepo {
  Future<Either<ApiException, AddGroupRatingRequestModel>> addGroupRating(AddGroupRatingRequestModel addGroupRatingRequestModel, String groupId);
}

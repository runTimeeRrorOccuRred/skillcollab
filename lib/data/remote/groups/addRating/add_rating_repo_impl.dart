import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/addRating/add%20_rating_repo.dart';
import 'package:skill_colab/data/remote/groups/addRating/models/add_group_rating_request_model.dart';
import 'package:skill_colab/utils/utils.dart';

class AddGroupRatingRepoImpl implements AddGroupRatingRepo {

  @override
  Future<Either<ApiException, AddGroupRatingRequestModel>> addGroupRating(AddGroupRatingRequestModel addGroupRatingRequestModel, String groupId) async {
    Logger.printSuccess("${AppConstants.baseUrl}group/rating-group/$groupId");
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/rating-group/$groupId",
        data: addGroupRatingRequestModel.toJson(),
      );

      Logger.printSuccess("create group response ====> ${response.data}");

      return Right(AddGroupRatingRequestModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }  
}

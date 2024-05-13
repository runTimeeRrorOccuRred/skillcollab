import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/groups/getRatings/get_rating_repo.dart';
import 'package:skill_colab/data/remote/groups/getRatings/models/group_rating_response_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GetRatingRepoImpl implements GetRatingRepo {

  @override
  Future<Either<ApiException, GroupRatingResponseModel>> getGroupRating(String groupId, {int rating = 0}) async {
    // ignore: avoid_print
    print("${AppConstants.baseUrl}group/get-group-rating/$groupId");
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/get-group-rating/$groupId",
        data: {
          "ratingFilter": rating,
        },
      );
      // Logger.printWarning("status code ======> ${response.statusCode}");
      Logger.printSuccess(response.data.toString());
      return Right(GroupRatingResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

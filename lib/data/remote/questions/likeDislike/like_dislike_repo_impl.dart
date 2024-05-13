// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/likeDislike/like_Dislike_repo.dart';
import 'package:skill_colab/data/remote/questions/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/utils/utils.dart';

class LikeDislikeRepoImpl implements LikeDislikeRepo {
  @override
  Future<Either<ApiException, LikeDislikeResponseModel>> likeDislikeQuestion(
      LikeDislikeRequestModel likeDislikeRequestModel,) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/question/like-dislike",
        data: likeDislikeRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(response.data['isSuccess']);
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

// ignore_for_file: file_names, avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tutorial/likeDislike/likeDislike_repo.dart';
import 'package:skill_colab/data/remote/tutorial/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/utils/logger.dart';

class TutorialLikeDislikeRepoImpl implements TutorialLikeDislikeRepo {
  @override
  Future<Either<ApiException, LikeDislikeTutorialResponseModel>>
      likeDislikeTutorial(
    LikeDislikeTutorialRequestModel likeDislikeRequestModel,
  ) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/tutorial/like-dislike",
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

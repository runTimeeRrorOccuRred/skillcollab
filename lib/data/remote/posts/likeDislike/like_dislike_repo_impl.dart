// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/like_dislike_repo.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';
import 'package:skill_colab/utils/utils.dart';

class LikeDislikeRepoImpl implements LikeDislikeRepo {

  @override
  Future<Either<ApiException, bool>> likeDislikePost(LikeDislikeRequestModel likeDislikeRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/post/like-dislike",
        data: likeDislikeRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(response.data['isSuccess']);
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

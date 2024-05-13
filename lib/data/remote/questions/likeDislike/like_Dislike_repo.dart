// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/questions/likeDislike/models/like_dislike_model.dart';

abstract class LikeDislikeRepo {
  Future<Either<ApiException, LikeDislikeResponseModel>> likeDislikeQuestion(
    LikeDislikeRequestModel likeDislikeRequestModel,
  );
}

// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tutorial/likeDislike/models/like_dislike_model.dart';

abstract class TutorialLikeDislikeRepo {
  Future<Either<ApiException, LikeDislikeTutorialResponseModel>>
      likeDislikeTutorial(
    LikeDislikeTutorialRequestModel likeDislikeRequestModel,
  );
}

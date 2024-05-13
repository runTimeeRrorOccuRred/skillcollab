import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/likeDislike/models/like_dislike_model.dart';

abstract class LikeDislikeRepo {
  Future<Either<ApiException, bool>> likeDislikePost(LikeDislikeRequestModel likeDislikeRequestModel);
}

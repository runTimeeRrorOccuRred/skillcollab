import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/comments/likeDislikeComment/models/like_dislike_comment_model.dart';

abstract class LikeDislikeCommentRepo {
  Future<Either<ApiException, LikeDislikeCommentResponseModel>> likeDislikeComment(LikeDislikeCommentRequestModel likeDislikeCommentRequestModel);
}

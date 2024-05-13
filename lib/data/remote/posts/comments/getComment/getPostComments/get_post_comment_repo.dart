import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/comments/getComment/getPostComments/model/get_post_comment_model.dart';

abstract class GetPostCommentRepo {
  Future<Either<ApiException, GetPostCommentModel>> getPostComments(String postId);
}

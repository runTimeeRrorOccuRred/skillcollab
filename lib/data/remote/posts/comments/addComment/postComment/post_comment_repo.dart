import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/comments/addComment/postComment/models/post_comment_model.dart';

abstract class PostCommentRepo {
  Future<Either<ApiException, bool>> addPostComment(PostCommentRequestModel postCommentRequestModel);
}

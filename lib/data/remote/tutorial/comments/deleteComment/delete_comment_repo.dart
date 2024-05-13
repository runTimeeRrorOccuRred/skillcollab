import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/comments/deleteComment/models/delete_comment_model.dart';

abstract class DeleteCommentRepo{
  Future<Either<ApiException, DeleteCommentResponseModel>> deleteComment(DeleteCommentTutorialRequestModel deleteCommentTutorialRequestModel, String commentId);
}

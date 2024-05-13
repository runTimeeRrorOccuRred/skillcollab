import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/posts/comments/editComment/models/edit_comment_model.dart';

abstract class UpdateCommentRepo {
  Future<Either<ApiException, EditCommentResponseModel>> updateComment( EditCommentRequestModel editCommentRequestModel, String commentId);

}

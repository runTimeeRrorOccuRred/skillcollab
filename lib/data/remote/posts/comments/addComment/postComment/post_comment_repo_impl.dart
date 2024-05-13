// ignore_for_file: avoid_dynamic_calls

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/comments/addComment/postComment/models/post_comment_model.dart';
import 'package:skill_colab/data/remote/posts/comments/addComment/postComment/post_comment_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class PostCommentRepoImpl implements PostCommentRepo {

  @override
  Future<Either<ApiException, bool>> addPostComment(PostCommentRequestModel postCommentRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}group/post/add-comment",
        data: postCommentRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(response.data['isSuccess']);
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

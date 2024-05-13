
import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/posts/comments/editComment/models/edit_comment_model.dart';
import 'package:skill_colab/data/remote/questions/comments/editComment/edit_comment_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class UpdateCommentRepoImpl implements UpdateCommentRepo{
  final ApiClient _apiClient;
  UpdateCommentRepoImpl(this._apiClient);
  @override
  Future<Either<ApiException, EditCommentResponseModel>> updateComment(EditCommentRequestModel editCommentRequestModel,String commentId) async {
    try {
      final response = await _apiClient.patch(
        "${AppConstants.baseUrl}group/question/edit-comment/$commentId",
        editCommentRequestModel.toJson(),
      );
      // Logger.write(response.toString());
      return Right(EditCommentResponseModel.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

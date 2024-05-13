
import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/posts/updatePost/modles/update_post_model.dart';
import 'package:skill_colab/data/remote/posts/updatePost/update_post_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class UpdatePostRepoImpl implements UpdatePostRepo{
  final ApiClient _apiClient;
  UpdatePostRepoImpl(this._apiClient);
  @override
  Future<Either<ApiException, EditPostResponse>> updatePost(
      EditPostResquest editPostResquest,String postId,) async {
    try {
      final response = await _apiClient.patch(
        "${AppConstants.baseUrl}group/update-post/$postId",
        editPostResquest.toJson(),
      );
      Logger.write(response.toString());
      return Right(EditPostResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

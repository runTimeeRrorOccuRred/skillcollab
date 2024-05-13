import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/deletePost/delete_post_repo.dart';
import 'package:skill_colab/data/remote/posts/deletePost/models/delete_post_model.dart';
import 'package:skill_colab/utils/logger.dart';

class DeletePostRepoImpl implements DeletePostRepo{
  @override
  Future<Either<ApiException, DeletePostByIdResponseModel>> deletePost(String postId) async {
    try {
      final Response response = await Dio().delete(
        "${AppConstants.baseUrl}group/remove/post/$postId",
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      // Logger.printSuccess(response.data);
      return Right(DeletePostByIdResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

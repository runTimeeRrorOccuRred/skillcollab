import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/deletePost/models/delete_post_model.dart';

abstract class DeletePostRepo{
  Future<Either<ApiException, DeletePostByIdResponseModel>> deletePost(String postId);
}

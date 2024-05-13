import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/posts/updatePost/modles/update_post_model.dart';

abstract class UpdatePostRepo {
  Future<Either<ApiException, EditPostResponse>> updatePost( EditPostResquest editPostResquest,String postId);

}

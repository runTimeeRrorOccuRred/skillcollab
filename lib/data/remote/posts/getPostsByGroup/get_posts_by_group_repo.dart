import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';

abstract class GetPostsByGroupRepo {
  Future<Either<ApiException, GetPostsByGroupModel>> getPostsByGroup(GetPostsByGroupRequestModel getPostsByGroupRequestModel, String groupId);
}

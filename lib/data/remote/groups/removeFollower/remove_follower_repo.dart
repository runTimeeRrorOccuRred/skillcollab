import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/removeFollower/models/remove_follower_model.dart';

abstract class RemoveFollowerRepo {
  Future<Either<ApiException, bool>> removeFollower(RemoveFollowerRequestModel removeFollowerRequestModel, String groupId);
}

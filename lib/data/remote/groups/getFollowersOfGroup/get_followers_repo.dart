import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/getFollowersOfGroup/model/get_followers_model.dart';

abstract class GetFollowersRepo {
  Future<Either<ApiException, GetFollowersModel>> getFollowersOfGroup(String groupId);
}

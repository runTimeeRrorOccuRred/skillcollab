import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';

abstract class GroupFollowUnfollowRepo {
  Future<Either<ApiException, bool>> followGroup(String groupId);
  Future<Either<ApiException, bool>> unfollowGroup(String groupId);
}

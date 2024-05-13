import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/userFollowStatus/models/follow_status_action_model.dart';
import 'package:skill_colab/data/remote/groups/userFollowStatus/models/user_follow_status_model.dart';

abstract class UserFollowStatusRepo {
  Future<Either<ApiException, UserFollowStatusResponseModel>> getUserFollowStatus(String groupId);
  Future<Either<ApiException, FollowStatusActionResponseModel>> followStatusAction(FollowStatusActionRequestModel followStatusActionRequestModel, String groupId);
}

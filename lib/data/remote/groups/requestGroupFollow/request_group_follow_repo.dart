import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/requestGroupFollow/models/request_group_follow_model.dart';

abstract class ReequestGroupFollowRepo {
  Future<Either<ApiException, RequestGroupFollowResponseModel>> requestGroupFollow(String groupId);
}

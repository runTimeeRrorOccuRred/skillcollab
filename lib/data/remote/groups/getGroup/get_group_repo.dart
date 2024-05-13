import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/getGroup/models/get_group_model.dart';

abstract class GetGroupRepo {
  Future<Either<ApiException, GetGroupResponseModel>> getGroup(String groupId);
}

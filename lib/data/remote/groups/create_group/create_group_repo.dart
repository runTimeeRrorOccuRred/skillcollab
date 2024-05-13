import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/create_group/models/create_group_model.dart';

abstract class CreateGroupRepo {
  Future<Either<ApiException, CreateGroupResponseModel>> createGroup(CreateGroupRequestModel createGroupRequestModel);
  Future<Either<ApiException, CreateGroupResponseModel>> createPremiumGroup(CreatePremiumGroupRequestModel createGroupRequestModel);
}

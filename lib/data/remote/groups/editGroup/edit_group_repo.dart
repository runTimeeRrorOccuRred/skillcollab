import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/editGroup/models/edit_group_model.dart';

abstract class EditGroupRepo {
  Future<Either<ApiException, EditGroupResponseModel>> editGroup(EditGroupRequestModel editGroupRequestModel, String groupId);
}

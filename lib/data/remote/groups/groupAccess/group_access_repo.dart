// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/groupAccess/models/group_access_model.dart';

abstract class GroupAccessRepo {
  Future<Either<ApiException, GroupAccessResponseModel>> groupAccess(GroupAccessRequestModel groupAccessRequestModel);
}

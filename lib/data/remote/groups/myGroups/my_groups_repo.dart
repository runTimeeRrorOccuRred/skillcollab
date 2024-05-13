import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/group_pin_unpin_model.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/my_group_interest_model.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/my_groups_model.dart';

abstract class MyGroupsRepo {
  Future<Either<ApiException, MyGroupsResponseModel>> getMyGroups();
  Future<Either<ApiException, GroupPinUnpinResponseModel>> togglePinUnpinGroup(GroupPinUnpinRequestModel groupPinUnpinRequestModel);
  Future<Either<ApiException, MyGroupInterestResponseModel>> getMyInterestGroups(MyGroupInterestRequestModel myGroupInterestRequestModel);
}

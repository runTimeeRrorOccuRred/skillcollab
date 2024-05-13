import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/edit_group_plan_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/group_subscribe_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/group_unsubscribe_model.dart';

abstract class GroupSubscribeRepo {
  Future<Either<ApiException, GroupSubscribeResponseModel>> subscribeGroup(GroupSubscribeRequestModel groupSubscribeRequestModel, String customerId);
  Future<Either<ApiException, GroupUnubscribeResponseModel>> unSubscribeGroup(GroupUnubscribeRequestModel groupUnubscribeRequestModel, String customerId);
  Future<Either<ApiException, EditGroupPlanResponseModel>> editGroupPlan(EditGroupPlanRequestModel editGroupPlanRequestModel);
}
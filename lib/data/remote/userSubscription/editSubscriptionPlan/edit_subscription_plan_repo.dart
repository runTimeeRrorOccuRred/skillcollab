import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/userSubscription/editSubscriptionPlan/models/edit_subscription_plan_model.dart';

abstract class EditSubscriptionPlanRepo {
  Future<Either<ApiException, EditUserSubscriptionPlanResponseModel>> updateSubscriptionPlan( EditUserSubscriptionPlanRequestModel editUserSubscriptionPlanRequestModel);
}

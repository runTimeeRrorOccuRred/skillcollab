import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/userSubscription/subscriptionPlan/models/user_subscription_plan_model.dart';

abstract class UserSubscriptionPlanRepo{
  Future<Either<ApiException, UserSubscriptionPlanResponseModel>> subscriptionPlan(UserSubscriptionPlanRequestModel userSubscriptionPlanRequestModel);
}

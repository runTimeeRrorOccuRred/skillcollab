import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/userSubscription/subscriptionPlan/models/user_subscription_plan_model.dart';
import 'package:skill_colab/data/remote/userSubscription/subscriptionPlan/user_subscription_plan_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class UserSubscriptionPlanRepoImpl implements UserSubscriptionPlanRepo{

  @override
  Future<Either<ApiException, UserSubscriptionPlanResponseModel>> subscriptionPlan(UserSubscriptionPlanRequestModel userSubscriptionPlanRequestModel) async{
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/user-sub-plan",
        data: userSubscriptionPlanRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());
      return Right(UserSubscriptionPlanResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
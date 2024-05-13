import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/userSubscription/editSubscriptionPlan/edit_subscription_plan_repo.dart';
import 'package:skill_colab/data/remote/userSubscription/editSubscriptionPlan/models/edit_subscription_plan_model.dart';
import 'package:skill_colab/utils/logger.dart';

class EditSubscriptionPlanRepoImpl implements EditSubscriptionPlanRepo{
  final ApiClient _apiClient;
  EditSubscriptionPlanRepoImpl(this._apiClient);
  @override
  Future<Either<ApiException, EditUserSubscriptionPlanResponseModel>> updateSubscriptionPlan( EditUserSubscriptionPlanRequestModel editUserSubscriptionPlanRequestModel) async {
    try {
      final response = await _apiClient.patch(
        "${AppConstants.baseUrl}payment/user-edit-sub-plan",
        editUserSubscriptionPlanRequestModel.toJson(),
      );
      Logger.printSuccess(response.toString());
      return Right(EditUserSubscriptionPlanResponseModel.fromJson(response.data!));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

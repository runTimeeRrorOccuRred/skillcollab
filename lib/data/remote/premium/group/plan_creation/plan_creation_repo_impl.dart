import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/premium/group/plan_creation/models/get_customer_plan_model.dart';
import 'package:skill_colab/data/remote/premium/group/plan_creation/models/plan_creation_model.dart';
import 'package:skill_colab/data/remote/premium/group/plan_creation/plan_creation_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class PlanCreationRepoImpl implements PlanCreationRepo {

  @override
  Future<Either<ApiException, PlanCreationResponseModel>> groupPlanCreate(PlanCreationRequestModel planCreationRequestModel) async {

    Logger.printInfo(planCreationRequestModel.toString());

    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/group-sub-plan",
        data: planCreationRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());

      return Right(PlanCreationResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetCustomerPlanResponseModel>> getCustomerPlan(GetCustomerPlanRequestModel getCustomerPlanRequestModel) async {

    Logger.printInfo(getCustomerPlanRequestModel.toString());
        
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/customer-plan-list",
        data: getCustomerPlanRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());

      return Right(GetCustomerPlanResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
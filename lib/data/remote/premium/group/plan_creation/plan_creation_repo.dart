import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/premium/group/plan_creation/models/get_customer_plan_model.dart';
import 'package:skill_colab/data/remote/premium/group/plan_creation/models/plan_creation_model.dart';

abstract class PlanCreationRepo {
  Future<Either<ApiException, PlanCreationResponseModel>> groupPlanCreate(PlanCreationRequestModel planCreationRequestModel);
  Future<Either<ApiException, GetCustomerPlanResponseModel>> getCustomerPlan(GetCustomerPlanRequestModel getCustomerPlanRequestModel);
}
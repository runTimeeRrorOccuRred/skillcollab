import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/userSubscription/createSubsscriptionPlan/models/create_user_plan_model.dart';

abstract class CreateUserPlanRepo {
  Future<Either<ApiException, CreateUserPlanResponseModel>> createUserPlan(CreateUserPlanRequestModel createUserPlanRequestModel);
}
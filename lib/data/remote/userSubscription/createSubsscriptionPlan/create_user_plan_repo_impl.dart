import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/userSubscription/createSubsscriptionPlan/create_user_plan_repo.dart';
import 'package:skill_colab/data/remote/userSubscription/createSubsscriptionPlan/models/create_user_plan_model.dart';
import 'package:skill_colab/utils/logger.dart';

class CreateUserPlanRepoImpl implements CreateUserPlanRepo {

  @override
  Future<Either<ApiException, CreateUserPlanResponseModel>> createUserPlan(CreateUserPlanRequestModel createUserPlanRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/user-sub-plan",
        data: createUserPlanRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());
      return Right(CreateUserPlanResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/group_subscribe_repo.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/edit_group_plan_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/group_subscribe_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/group_unsubscribe_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GroupSubscribeRepoImpl implements GroupSubscribeRepo {

  @override
  Future<Either<ApiException, GroupSubscribeResponseModel>> subscribeGroup(GroupSubscribeRequestModel groupSubscribeRequestModel, String customerId) async {
    Logger.printInfo("${AppConstants.baseUrl}payment/group-subscribe/$customerId");
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/group-subscribe/$customerId",
        data: groupSubscribeRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());

      return Right(GroupSubscribeResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GroupUnubscribeResponseModel>> unSubscribeGroup(GroupUnubscribeRequestModel groupUnubscribeRequestModel, String customerId) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/group-unsubscribe/$customerId",
        data: groupUnubscribeRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());

      return Right(GroupUnubscribeResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditGroupPlanResponseModel>> editGroupPlan(EditGroupPlanRequestModel editGroupPlanRequestModel) async {
    try {
      final Response response = await ApiClient().patch(
        "${AppConstants.baseUrl}payment/group-edit-sub-plan", 
        editGroupPlanRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(EditGroupPlanResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
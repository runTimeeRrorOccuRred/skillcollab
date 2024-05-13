import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/group_pin_unpin_model.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/my_group_interest_model.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/my_groups_model.dart';
import 'package:skill_colab/data/remote/groups/myGroups/my_groups_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class MyGroupsRepoImpl implements MyGroupsRepo {

  @override
  Future<Either<ApiException, MyGroupsResponseModel>> getMyGroups() async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}group/get-groups-by-user?page=1&pageSize=50");
      // Logger.printWarning("status code ======> ${response.statusCode}");
      Logger.printSuccess(response.data.toString());
      return Right(MyGroupsResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GroupPinUnpinResponseModel>> togglePinUnpinGroup(GroupPinUnpinRequestModel groupPinUnpinRequestModel) async {
    try {
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}group/group-pin-unpin",
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
        data: groupPinUnpinRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());

      return Right(GroupPinUnpinResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, MyGroupInterestResponseModel>> getMyInterestGroups(MyGroupInterestRequestModel myGroupInterestRequestModel) async {
    try {
      final Response response = await ApiClient().get(
        "${AppConstants.baseUrl}users/fetch-user-interest-group",
       // data: myGroupInterestRequestModel.toJson()
      );

      Logger.printSuccess(response.data.toString());

      return Right(MyGroupInterestResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

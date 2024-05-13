import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/groups/cancelRequest/cancel_request_repo.dart';
import 'package:skill_colab/data/remote/groups/cancelRequest/models/cancel_request_model.dart';
import 'package:skill_colab/utils/logger.dart';

class CancelRequestRepoImpl implements CancelRequestRepo {

  @override
  Future<Either<ApiException, CancelRequestResponseModel>> cancelPrivateGroupRequest(String groupId)async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}/group/cancel-request/$groupId",
        data: {},
      );

      Logger.printSuccess(response.data.toString());

      return Right(CancelRequestResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

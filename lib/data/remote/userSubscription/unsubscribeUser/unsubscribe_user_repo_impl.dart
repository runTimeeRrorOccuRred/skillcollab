import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/userSubscription/unsubscribeUser/models/unsubscribe_user_model.dart';
import 'package:skill_colab/data/remote/userSubscription/unsubscribeUser/unsubscribe_user_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class UnsubscribeUserRepoImpl implements UnsubscribeUserRepo{

  @override
  Future<Either<ApiException, UnsubscribeUserResponseModel>> unsubscribeUser(UnsubscribeUserRequestModel unsubscribeUserRequestModel, String customerId) async{
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/user-unsubscribe/$customerId",
        data: unsubscribeUserRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());
      return Right(UnsubscribeUserResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}

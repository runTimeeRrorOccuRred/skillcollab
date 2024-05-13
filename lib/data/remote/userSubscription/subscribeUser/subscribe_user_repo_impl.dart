import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/userSubscription/subscribeUser/models/subscribe_user_model.dart';
import 'package:skill_colab/data/remote/userSubscription/subscribeUser/subscribe_user_repo.dart';
import 'package:skill_colab/utils/logger.dart';

class SubscribeUserRepoImpl implements SubscribeUserRepo{

  @override
  Future<Either<ApiException, SubscribeUserResponseModel>> subscribeUser(SubscribeUserRequestModel subscribeUserRequestModel, String customerId) async{
    Logger.printError("${AppConstants.baseUrl}/payment/user-subscribe/$customerId");
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}/payment/user-subscribe/$customerId",
        data: subscribeUserRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());
      return Right(SubscribeUserResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      // Fluttertoast.showToast(
      //   msg: e.toString(),
      //   backgroundColor: Colors.red,
      //   gravity: ToastGravity.BOTTOM,
      //   fontSize: 20,
      //   toastLength: Toast.LENGTH_LONG
      // );
      return Left(ApiException(e.toString()));
    }
  }
}

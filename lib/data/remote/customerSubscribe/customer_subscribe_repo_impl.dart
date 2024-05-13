import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/customerSubscribe/customer_subscribe_repo.dart';
import 'package:skill_colab/data/remote/customerSubscribe/models/customer_subscribe_model.dart';
import 'package:skill_colab/utils/utils.dart';

class CustomerSubscribeRepoImpl implements CustomerSubscribeRepo {

  @override
  Future<Either<ApiException, CustomerSubscribeResponseModel>> customerSubscribeStripeLink(CustomerSubscribeRequestModel customerSubscribeRequestModel, String customerId) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/customer-subscribe-link/$customerId",
        data: customerSubscribeRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(CustomerSubscribeResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
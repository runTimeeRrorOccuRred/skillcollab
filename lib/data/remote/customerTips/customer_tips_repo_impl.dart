import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/customerTips/customer_tips_repo.dart';
import 'package:skill_colab/data/remote/customerTips/models/customer_tips_model.dart';
import 'package:skill_colab/utils/utils.dart';

class CustomerTipsRepoImpl implements CustomerTipsRepo {

  @override
  Future<Either<ApiException, CustomerTipResponseModel>> getCustomerTipStripeLink(CustomerTipRequestModel customerTipRequestModel, String customerId) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/customer-tips-link/$customerId",
        data: customerTipRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(CustomerTipResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
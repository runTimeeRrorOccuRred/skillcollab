import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/payment/add_card/add_card_repo.dart';
import 'package:skill_colab/data/remote/payment/add_card/models/customer_add_card_model.dart';
import 'package:skill_colab/utils/utils.dart';

class AddCardRepoImpl implements AddCardRepo {

  @override
  Future<Either<ApiException, AddCustomerCardResponseModel>> customerAddCard(AddCustomerCardRequestModel customerAddCardRequestModel, String customerId) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/customer-info-create/$customerId",
        data: customerAddCardRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(AddCustomerCardResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}

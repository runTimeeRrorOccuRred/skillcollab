import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/payment/get_card/get_card_repo.dart';
import 'package:skill_colab/data/remote/payment/get_card/models/get_card_model.dart';
import 'package:skill_colab/utils/logger.dart';

class GetCardRepoImpl implements GetCardRepo {

  @override
  Future<Either<ApiException, GetCardListModel>> getCard(String customerId) async {
    try {
      Logger.printWarning("${AppConstants.baseUrl}payment/customer-card-list/$customerId");
      final Response response = await ApiClient().get("${AppConstants.baseUrl}payment/customer-card-list/$customerId");
      // Logger.printWarning("status code ======> ${response.statusCode}");
      Logger.printSuccess(response.data.toString());
      Logger.printSuccess(GetCardListModel.fromJson(response.data).toString());
      return Right(GetCardListModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
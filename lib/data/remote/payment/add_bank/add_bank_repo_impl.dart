import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/api_client.dart';
import 'package:skill_colab/core/constants.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/payment/add_bank/add_bank_repo.dart';
import 'package:skill_colab/data/remote/payment/add_bank/models/customer_add_bank_model.dart';
import 'package:skill_colab/utils/logger.dart';

class AddBankRepoImpl implements AddBankRepo{

  @override
  Future<Either<ApiException, AddBankResponseModel>> addBank(AddBankRequestModel addBankRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/stripe-account-create",
        data: addBankRequestModel.toJson(),
      );

      Logger.printSuccess(response.data.toString());
      return Right(AddBankResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
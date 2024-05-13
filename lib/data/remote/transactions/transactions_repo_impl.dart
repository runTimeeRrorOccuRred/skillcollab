import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/transactions/models/get_earning_group_model.dart';
import 'package:skill_colab/data/remote/transactions/models/get_total_transactions_model.dart';
import 'package:skill_colab/data/remote/transactions/models/transactions_and_tips_model.dart';
import 'package:skill_colab/data/remote/transactions/transactions_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class TransactionsRepoImpl implements TransactionsRepo {

  @override
  Future<Either<ApiException, GetTotalTransactionResponseModel>> getTotalTransactions() async {
    try {
      final Response response = await ApiClient().get(
        "${AppConstants.baseUrl}payment/total-transaction",
      );
      Logger.printSuccess(response.data.toString());
      return Right(GetTotalTransactionResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, TransactionAndTipsResponseModel>> getTransactionsAndTips(TransactionAndTipsRequestModel transactionAndTipsRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/user/transaction",
        data: transactionAndTipsRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(TransactionAndTipsResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetEarningGroupResponseModel>> getEarningBasedOnGroup(GetEarningGroupRequestModel getEarningGroupRequestModel) async {
    try {
      final Response response = await ApiClient().post(
        path: "${AppConstants.baseUrl}payment/earning",
        data: getEarningGroupRequestModel.toJson(),
      );
      Logger.printSuccess(response.data.toString());
      return Right(GetEarningGroupResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

}
import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/transactions/models/get_earning_group_model.dart';
import 'package:skill_colab/data/remote/transactions/models/get_total_transactions_model.dart';
import 'package:skill_colab/data/remote/transactions/models/transactions_and_tips_model.dart';

abstract class TransactionsRepo {
  Future<Either<ApiException, GetTotalTransactionResponseModel>> getTotalTransactions();
  Future<Either<ApiException, TransactionAndTipsResponseModel>> getTransactionsAndTips(TransactionAndTipsRequestModel transactionAndTipsRequestModel);
  Future<Either<ApiException, GetEarningGroupResponseModel>> getEarningBasedOnGroup(GetEarningGroupRequestModel getEarningGroupRequestModel);
}
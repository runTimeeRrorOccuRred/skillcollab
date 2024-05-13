import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/payment/add_bank/models/customer_add_bank_model.dart';

abstract class AddBankRepo {
  Future<Either<ApiException, AddBankResponseModel>> addBank(AddBankRequestModel addBankRequestModel);
}

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/payment/add_card/models/customer_add_card_model.dart';

abstract class AddCardRepo {
  Future<Either<ApiException, AddCustomerCardResponseModel>> customerAddCard(AddCustomerCardRequestModel customerAddCardRequestModel, String customerId);
}

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/customerTips/models/customer_tips_model.dart';

abstract class CustomerTipsRepo {
  Future<Either<ApiException, CustomerTipResponseModel>> getCustomerTipStripeLink(CustomerTipRequestModel customerTipRequestModel, String customerId);
}
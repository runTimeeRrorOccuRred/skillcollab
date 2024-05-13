import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/customerSubscribe/models/customer_subscribe_model.dart';

abstract class CustomerSubscribeRepo {
  Future<Either<ApiException, CustomerSubscribeResponseModel>> customerSubscribeStripeLink(CustomerSubscribeRequestModel customerSubscribeRequestModel, String customerId);
}
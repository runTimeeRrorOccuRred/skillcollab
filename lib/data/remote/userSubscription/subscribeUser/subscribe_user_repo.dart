import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/userSubscription/subscribeUser/models/subscribe_user_model.dart';

abstract class SubscribeUserRepo{
  Future<Either<ApiException, SubscribeUserResponseModel>> subscribeUser(SubscribeUserRequestModel subscribeUserRequestModel, String customerId);
}

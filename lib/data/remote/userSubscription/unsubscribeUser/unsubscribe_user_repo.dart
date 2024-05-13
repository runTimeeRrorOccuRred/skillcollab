import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/userSubscription/unsubscribeUser/models/unsubscribe_user_model.dart';

abstract class UnsubscribeUserRepo{
  Future<Either<ApiException, UnsubscribeUserResponseModel>> unsubscribeUser(UnsubscribeUserRequestModel unsubscribeUserRequestModel, String customerId);
}

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/tips/user_tips/models/user_tips_model.dart';

abstract class UserTipsRepo {
  Future<Either<ApiException, UserTipsResponseModel>> usertips(UserTipsRequestModel userTipsRequest, String customerId);
}
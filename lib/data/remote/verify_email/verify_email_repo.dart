import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/verify_email/models/verify_email_model.dart';

abstract class VerifyEmailRepo {
  Future<Either<ApiException, VerifyEmailResponseModel>> verifyEmail(VerifyEmailRequestModel verifyEmailRequestModel);
}

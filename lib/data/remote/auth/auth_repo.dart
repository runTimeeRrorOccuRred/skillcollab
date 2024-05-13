import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/auth/models/login_model.dart';
import 'package:skill_colab/data/remote/auth/models/register_model.dart';
import 'package:skill_colab/data/remote/auth/models/username_validator_model.dart';

abstract class AuthRepo {
  Future<Either<ApiException, LoginResponseModel>> login(LoginRequest loginRequest);
  Future<Either<ApiException, RegistrationResponse>> registration(
      RegistrationRequest registrationRequest,);
  Future<Either<ApiException, UsernameValidatorResponse>> usernamevalidation(
      UsernameValidatorRequest usernameValidatorRequest,);
}

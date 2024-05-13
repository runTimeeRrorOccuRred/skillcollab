import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/firebaseLogin/models/firebase_login_model.dart';

abstract class FirebaseLoginRepo {
  Future<Either<ApiException, FirebaseLoginResponse>> firebaseLogin(
      FirebaseLoginRequest firebaseLoginRequest,);
}

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/interests/models/get_personal_interests_model.dart';

abstract class GetInterestsRepo {
  Future<Either<ApiException, GetInterestsResponseModel>> getInterests(String name);
  Future<Either<ApiException, GetPersonalInterestResponse>> getPersonalInterest(GetPersonalInterestRequest getPersonalInterestRequest);
}



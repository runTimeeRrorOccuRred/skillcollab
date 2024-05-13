import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/search/models/all_group_model.dart';
import 'package:skill_colab/data/remote/search/models/all_people_model.dart';

abstract class SearchRepo {
  Future<Either<ApiException, AllPeopleResponseModel>> getAllPeople(AllPeopleRequestModel allPeopleRequestModel);
  Future<Either<ApiException, AllGroupResponseModel>> getAllGroups(AllGroupRequestModel allGroupRequestModel);
}

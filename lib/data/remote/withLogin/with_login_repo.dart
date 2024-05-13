import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsWithLogin/models/get_all_groups_with_login_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllPeopleWithLogin/models/get_all_people_with_login_model.dart';

abstract class WithLoginRepo {
  Future<Either<ApiException, GetAllGroupsWithLoginResponseModel>> getAllGroupsWithLogin(GetAllGroupsWithLoginRequestModel getAllGroupsWithLoginRequestModel, int pageSize);
  Future<Either<ApiException, GetAllPeopleWithLoginResponseModel>> getAllPeopleWithLogin(GetAllPeopleWithLoginRequestModel getAllPeopleWithLoginRequestModel, int pageSize, int page);
  Future<Either<ApiException, GetAllGroupsAndPeopleWithLoginResponseModel>> getAllGroupsAndPeopleWithLogin(GetAllGroupsAndPeopleWithLoginRequestModel getAllGroupsAndPeopleWithLoginRequestModel, int pageSize, int page);
}

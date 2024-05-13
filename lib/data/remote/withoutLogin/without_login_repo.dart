import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/exceptions.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsAndPeopleWithoutLogin/models/get_all_groups_and_people_without_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllPeopleWithoutLogin/models/get_all_people_without_login_model.dart';

abstract class WithoutLoginRepo {
  Future<Either<ApiException, GetAllGroupsWithoutLoginResponseModel>> getAllGroupsWithoutLogin(GetAllGroupsWithoutLoginRequestModel getAllGroupsWithoutLoginRequest, int pageSize);
  Future<Either<ApiException, GetAllPeopleWithoutLoginResponseModel>> getAllPeopleWithoutLogin(GetAllPeopleWithoutLoginRequestModel getAllGroupsWithoutLoginRequest, int pageSize);
  Future<Either<ApiException, GetAllGroupsAndPeopleWithoutLoginResponseModel>> getAllGroupsAndPeopleWithoutLogin(GetAllGroupsAndPeopleWithoutLoginRequestModel getAllGroupsAndPeopleWithoutLoginRequestModel, int pageSize);
}

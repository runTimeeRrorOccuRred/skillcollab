// ignore_for_file: avoid_dynamic_calls, avoid_print, eol_at_end_of_file

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/user/models/follow_status_user_model.dart';
import 'package:skill_colab/data/remote/user/models/follow_user_model.dart';
import 'package:skill_colab/data/remote/user/models/get_followers_by_user_model.dart';
import 'package:skill_colab/data/remote/user/models/member_of_model.dart';
import 'package:skill_colab/data/remote/user/models/single_user_model.dart';
import 'package:skill_colab/data/remote/user/models/unfollow_user_model.dart';
import 'package:skill_colab/data/remote/user/models/update_user_model.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/data/remote/user/user_repo.dart';
import 'package:skill_colab/utils/utils.dart';

class UserRepoImpl implements UserRepo {

  @override
  Future<Either<ApiException, List<UserModel>>> getUsers() async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}users/get-users");
      Logger.printSuccess("USERS ====> ${response.data['data']}");
      final List<UserModel> users = [];
      for(int i = 0; i < (response.data['data'] as List<dynamic>).length; i++) {
        users.add(UserModel.fromJson(response.data['data'][i]));
      }
      Logger.printSuccess("USERS ====> $users");
      return Right(users);
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }


  @override
  Future<Either<ApiException, SingleUserResponseModel>> getSingleUser(String userId) async {
    print("${AppConstants.baseUrl}/users/fetch?userId=$userId");
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}/users/fetch?userId=$userId");
      Logger.printSuccess(response.data.toString());
      return Right(SingleUserResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UpdateUserResponseModel>> updateUser(UpdateUserRequestModel updateUserRequestModel) async {
    print(updateUserRequestModel);
    print("${AppConstants.baseUrl}users/${AppConstants.userId}");
    print("Bearer ${AppConstants.token}");
    try {
      final Response response = await Dio().patch(
        "${AppConstants.baseUrl}users/${AppConstants.userId}",
        data: updateUserRequestModel.toJson(),
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(UpdateUserResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, FollowUserResponseModel>> followUser(String userId) async{
    try {
      print("${AppConstants.baseUrl}/users/follow-other-user/$userId");
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}/users/follow-other-user/$userId",
        data: {},
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(FollowUserResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, UnfollowUserResponseModel>> unfollowUser(String userId) async{
    try {
      // print("${AppConstants.baseUrl}/users/unfollow-other-user/$userId");
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}/users/unfollow-other-user/$userId",
        data: {},
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(UnfollowUserResponseModel.fromJson(response.data));
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
  
  @override
  Future<Either<ApiException, FollowStatusUserResponseModel>> followStatusUser(String userId) async{
    try {
      final Response response = await Dio().post(
        "${AppConstants.baseUrl}/users/follow-status-user/$userId",
        data: {},
        options: Options(headers: {"Authorization": "Bearer ${AppConstants.token}"}),
      );
      Logger.printSuccess(response.data.toString());
      return Right(FollowStatusUserResponseModel.fromJson(response.data)); 
    } catch (e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetFollowersByUserResponseModel>> getFollowersByUserModel(String userId) async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}users/get-followers-by-user/$userId");
      Logger.printSuccess(response.data.toString());
      return Right(GetFollowersByUserResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, MemberOfResponseModel>> getUserMemberOfList(String userId) async {
    try {
      final Response response = await ApiClient().get("${AppConstants.baseUrl}group/list-group-user-member/$userId");
      Logger.printSuccess(response.data.toString());
      return Right(MemberOfResponseModel.fromJson(response.data));
    } catch(e) {
      Logger.printError(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  
}
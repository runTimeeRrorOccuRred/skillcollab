// ignore_for_file: eol_at_end_of_file

import 'package:dartz/dartz.dart';
import 'package:skill_colab/core/core.dart';
import 'package:skill_colab/data/remote/user/models/follow_status_user_model.dart';
import 'package:skill_colab/data/remote/user/models/follow_user_model.dart';
import 'package:skill_colab/data/remote/user/models/get_followers_by_user_model.dart';
import 'package:skill_colab/data/remote/user/models/member_of_model.dart';
import 'package:skill_colab/data/remote/user/models/single_user_model.dart';
import 'package:skill_colab/data/remote/user/models/unfollow_user_model.dart';
import 'package:skill_colab/data/remote/user/models/update_user_model.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';

abstract class UserRepo {
  Future<Either<ApiException, List<UserModel>>> getUsers();
  Future<Either<ApiException, SingleUserResponseModel>> getSingleUser(String userId);
  Future<Either<ApiException, UpdateUserResponseModel>> updateUser(UpdateUserRequestModel updateUserRequestModel);
  Future<Either<ApiException, FollowUserResponseModel>> followUser(String userId);
  Future<Either<ApiException, UnfollowUserResponseModel>> unfollowUser(String userId);
  Future<Either<ApiException, FollowStatusUserResponseModel>> followStatusUser(String userId);
  Future<Either<ApiException, GetFollowersByUserResponseModel>> getFollowersByUserModel(String userId);
  Future<Either<ApiException, MemberOfResponseModel>> getUserMemberOfList(String userId);
}
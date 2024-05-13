// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'get_followers_model.freezed.dart';
part 'get_followers_model.g.dart';

GetFollowersModel getFollowersModelFromJson(String str) => GetFollowersModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getFollowersModelToJson(GetFollowersModel data) => json.encode(data.toJson());

@freezed
class GetFollowersModel with _$GetFollowersModel {
    const factory GetFollowersModel({
        int? code,
        String? message,
        bool? isSuccess,
        List<Datum>? data,
    }) = _GetFollowersModel;

    factory GetFollowersModel.fromJson(Map<String, dynamic> json) => _$GetFollowersModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        GroupId? groupId,
        String? status,
        UserId? userId,
        String? type,
        DateTime? createdAt,
        DateTime? updatedAt,
        @JsonKey(name: '_id') String? id,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class GroupId with _$GroupId {
    const factory GroupId({
        List<Interest>? interests,
        String? privacy,
        String? groupPhoto,
        String? coverPhoto,
        String? name,
        @JsonKey(name: "followers")
        List<Follower>? followers,
        String? description,
        String? location,
        String? userId,
        DateTime? createdAt,
        DateTime? updatedAt,
        @JsonKey(name: '_id') String? id,
    }) = _GroupId;

    factory GroupId.fromJson(Map<String, dynamic> json) => _$GroupIdFromJson(json);
}

@freezed
class UserId with _$UserId {
    const factory UserId({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "firstName")
        String? firstName,
        @JsonKey(name: "lastName")
        String? lastName,
        @JsonKey(name: "userName")
        String? userName,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "phone")
        String? phone,
        @JsonKey(name: "password")
        String? password,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "otp")
        dynamic otp,
        @JsonKey(name: "otpExpiry")
        dynamic otpExpiry,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}


@freezed
class Follower with _$Follower {
    const factory Follower({
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "userId")
        String? userId,
    }) = _Follower;

    factory Follower.fromJson(Map<String, dynamic> json) => _$FollowerFromJson(json);
}
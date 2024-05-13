// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'all_people_model.freezed.dart';
part 'all_people_model.g.dart';


///=========== REQUEST ===========///
AllPeopleRequestModel allPeopleRequestModelFromJson(String str) => AllPeopleRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String allPeopleRequestModelToJson(AllPeopleRequestModel data) => json.encode(data.toJson());

@freezed
class AllPeopleRequestModel with _$AllPeopleRequestModel {
    const factory AllPeopleRequestModel({
        @JsonKey(name: "searchKey")
        String? searchKey,
        @JsonKey(name: "interests")
        String? interests,
        @JsonKey(name: "timeFilter")
        String? timeFilter,
    }) = _AllPeopleRequestModel;

    factory AllPeopleRequestModel.fromJson(Map<String, dynamic> json) => _$AllPeopleRequestModelFromJson(json);
}


///=========== RESPONSE ===========///
AllPeopleResponseModel allPeopleResponseModelFromJson(String str) => AllPeopleResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String allPeopleResponseModelToJson(AllPeopleResponseModel data) => json.encode(data.toJson());

@freezed
class AllPeopleResponseModel with _$AllPeopleResponseModel {
    const factory AllPeopleResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<UserData>? data,
    }) = _AllPeopleResponseModel;

    factory AllPeopleResponseModel.fromJson(Map<String, dynamic> json) => _$AllPeopleResponseModelFromJson(json);
}

@freezed
class UserData with _$UserData {
    const factory UserData({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "productId")
        dynamic productId,
        @JsonKey(name: "deviceToken")
        List<String?>? deviceToken,
        @JsonKey(name: "firstName")
        String? firstName,
        @JsonKey(name: "lastName")
        String? lastName,
        @JsonKey(name: "userName")
        String? userName,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "phone")
        String? phone,
        @JsonKey(name: "password")
        String? password,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "followers")
        List<Follower?>? followers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "otp")
        int? otp,
        @JsonKey(name: "otpExpiry")
        DateTime? otpExpiry,
        @JsonKey(name: "publicPost")
        int? publicPost,
        @JsonKey(name: "premiumPost")
        int? premiumPost,
        @JsonKey(name: "isFollowing")
        bool? isFollowing,
        @JsonKey(name: "uid")
        String? uid,
        @JsonKey(name: "type")
        String? type,
    }) = _UserData;

    factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
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

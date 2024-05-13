// To parse this JSON data, do
//
//     final explorePeopleResponseModel = explorePeopleResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';

part 'explore_people_model.freezed.dart';
part 'explore_people_model.g.dart';

ExplorePeopleResponseModel explorePeopleResponseModelFromJson(String str) => ExplorePeopleResponseModel.fromJson(json.decode(str));

String explorePeopleResponseModelToJson(ExplorePeopleResponseModel data) => json.encode(data.toJson());

@freezed
class ExplorePeopleResponseModel with _$ExplorePeopleResponseModel {
    const factory ExplorePeopleResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<PeopleDatum>? data,
    }) = _ExplorePeopleResponseModel;

    factory ExplorePeopleResponseModel.fromJson(Map<String, dynamic> json) => _$ExplorePeopleResponseModelFromJson(json);
}

@freezed
class PeopleDatum with _$PeopleDatum {
    const factory PeopleDatum({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "expertise")
        String? expertise,
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
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "followers")
        List<Follower>? followers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "otp")
        dynamic otp,
        @JsonKey(name: "otpExpiry")
        dynamic otpExpiry,
        @JsonKey(name: "follower")
        int? follower,
        @JsonKey(name: "publicPost")
        int? publicPost,
        @JsonKey(name: "premiumPost")
        int? premiumPost,
        @JsonKey(name: "isFollowing")
        bool? isFollowing,
    }) = _PeopleDatum;

    factory PeopleDatum.fromJson(Map<String, dynamic> json) => _$PeopleDatumFromJson(json);
}


//  ===================  REQUEST =====================//

ExplorePeopleRequestModel explorePeopleRequestModelFromJson(String str) => ExplorePeopleRequestModel.fromJson(json.decode(str));

String explorePeopleRequestModelToJson(ExplorePeopleRequestModel data) => json.encode(data.toJson());

@freezed
class ExplorePeopleRequestModel with _$ExplorePeopleRequestModel {
    const factory ExplorePeopleRequestModel({
        @JsonKey(name: "interests")
        List<String>? interests,
        @JsonKey(name: "searchKey")
        String? searchKey,
    }) = _ExplorePeopleRequestModel;

    factory ExplorePeopleRequestModel.fromJson(Map<String, dynamic> json) => _$ExplorePeopleRequestModelFromJson(json);
}

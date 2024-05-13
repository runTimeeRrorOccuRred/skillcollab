// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/groups/myGroups/models/my_groups_model.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/search/models/all_group_model.dart';

part 'member_of_model.freezed.dart';
part 'member_of_model.g.dart';

MemberOfResponseModel memberOfResponseModelFromJson(String str) => MemberOfResponseModel.fromJson(json.decode(str));

String memberOfResponseModelToJson(MemberOfResponseModel data) => json.encode(data.toJson());

@freezed
class MemberOfResponseModel with _$MemberOfResponseModel {
    const factory MemberOfResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Datum?>? data,
    }) = _MemberOfResponseModel;

    factory MemberOfResponseModel.fromJson(Map<String, dynamic> json) => _$MemberOfResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: "groupId")
        GroupId? groupId,
        @JsonKey(name: "following")
        dynamic following,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "pinData")
        List<PinDatum>? pinData,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class GroupId with _$GroupId {
    const factory GroupId({
        @JsonKey(name: "groupPhoto")
        String? groupPhoto,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "privacy")
        String? privacy,
        @JsonKey(name: "one_month_subscription_price")
        dynamic oneMonthSubscriptionPrice,
        @JsonKey(name: "six_month_subscription_price")
        dynamic sixMonthSubscriptionPrice,
        @JsonKey(name: "twelve_month_subscription_price")
        dynamic twelveMonthSubscriptionPrice,
        @JsonKey(name: "promoCode")
        dynamic promoCode,
        @JsonKey(name: "discount")
        dynamic discount,
        @JsonKey(name: "productId")
        dynamic productId,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "interests")
        List<Interest?>? interests,
        @JsonKey(name: "followers")
        List<Follower?>? followers,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "subscribers")
        List<Subscriber?>? subscribers,
        @JsonKey(name: "reviewer")
        List<Reviewer?>? reviewer,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "follower")
        int? follower,
        @JsonKey(name: "rating")
        int? rating,
        @JsonKey(name: "averageRating")
        int? averageRating,
    }) = _GroupId;

    factory GroupId.fromJson(Map<String, dynamic> json) => _$GroupIdFromJson(json);
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

@freezed
class Reviewer with _$Reviewer {
    const factory Reviewer({
        @JsonKey(name: "review")
        dynamic review,
        @JsonKey(name: "title")
        dynamic title,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "rating")
        int? rating,
        @JsonKey(name: "userId")
        String? userId,
    }) = _Reviewer;

    factory Reviewer.fromJson(Map<String, dynamic> json) => _$ReviewerFromJson(json);
}

@freezed
class UserId with _$UserId {
    const factory UserId({
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "productId")
        dynamic productId,
        @JsonKey(name: "deviceToken")
        List<String?>? deviceToken,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "firstName")
        String? firstName,
        @JsonKey(name: "lastName")
        String? lastName,
        @JsonKey(name: "userName")
        String? userName,
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "phone")
        String? phone,
        @JsonKey(name: "password")
        String? password,
        @JsonKey(name: "coverPhoto")
        dynamic coverPhoto,
        @JsonKey(name: "profilePhoto")
        dynamic profilePhoto,
        @JsonKey(name: "description")
        dynamic description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "interests")
        List<Interest?>? interests,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "followers")
        List<Follower?>? followers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "otp")
        dynamic otp,
        @JsonKey(name: "otpExpiry")
        dynamic otpExpiry,
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}

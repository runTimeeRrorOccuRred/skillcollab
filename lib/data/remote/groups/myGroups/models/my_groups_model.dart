// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

// import 'package:skill_colab/data/remote/posts/getPostsByGroup/models/get_posts_by_group_model.dart';

part 'my_groups_model.freezed.dart';
part 'my_groups_model.g.dart';

MyGroupsResponseModel myGroupsResponseModelFromJson(String str) => MyGroupsResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String myGroupsResponseModelToJson(MyGroupsResponseModel data) => json.encode(data.toJson());

@freezed
class MyGroupsResponseModel with _$MyGroupsResponseModel {
    const factory MyGroupsResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Group>? data,
    }) = _MyGroupsResponseModel;

    factory MyGroupsResponseModel.fromJson(Map<String, dynamic> json) => _$MyGroupsResponseModelFromJson(json);
}

@freezed
class Group with _$Group {
    const factory Group({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "privacy")
        String? privacy,
        @JsonKey(name: "groupPhoto")
        String? groupPhoto,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "discount")
        int? discount,
        @JsonKey(name: "promoCode")
        String? promoCode,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "pinData")
        List<PinDatum>? pinData,
        @JsonKey(name: "one_month_subscription_price")
        dynamic oneMonthSubscriptionPrice,
        @JsonKey(name: "six_month_subscription_price")
        dynamic sixMonthSubscriptionPrice,
        @JsonKey(name: "twelve_month_subscription_price")
        dynamic twelveMonthSubscriptionPrice,
        @JsonKey(name: "productId")
        dynamic productId,
    }) = _Group;

    factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

@freezed
class PinDatum with _$PinDatum {
    const factory PinDatum({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "isPinned")
        bool? isPinned,
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _PinDatum;

    factory PinDatum.fromJson(Map<String, dynamic> json) => _$PinDatumFromJson(json);
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

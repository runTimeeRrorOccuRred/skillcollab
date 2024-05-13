// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/group_subscribe_model.dart';

// import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';

// import '../../../posts/getPostsByGroup/models/get_posts_by_group_model.dart';

part 'get_group_model.freezed.dart';
part 'get_group_model.g.dart';

GetGroupResponseModel getGroupResponseModelFromJson(String str) => GetGroupResponseModel.fromJson(json.decode(str));
String getGroupResponseModelToJson(GetGroupResponseModel data) => json.encode(data.toJson());

@freezed
class GetGroupResponseModel with _$GetGroupResponseModel {
    const factory GetGroupResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GetGroupResponseModel;

    factory GetGroupResponseModel.fromJson(Map<String, dynamic> json) => _$GetGroupResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
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
        @JsonKey(name: "rules")
        String? rules,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "followers")
        int? followers,
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "subscribers")
        List<Subscriber>? subscribers,
        @JsonKey(name: "reviewer")
        List<dynamic>? reviewer,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "rating")
        int? rating,
        @JsonKey(name: "averageRating")
        int? averageRating,
        @JsonKey(name: "postToday")
        int? postToday,
        @JsonKey(name: "postLastMonth")
        int? postLastMonth,
        @JsonKey(name: "FollowersLastWeek")
        int? followersLastWeek,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
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
        @JsonKey(name: "customerId")
        String? customerId,
        @JsonKey(name: "accountId")
        String? accountId,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "description")
        String? description,
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

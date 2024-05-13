// To parse this JSON data, do
//
//     final exploreGroupResponseModel = exploreGroupResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';

part 'explore_group_model.freezed.dart';
part 'explore_group_model.g.dart';

ExploreGroupResponseModel exploreGroupResponseModelFromJson(String str) => ExploreGroupResponseModel.fromJson(json.decode(str));

String exploreGroupResponseModelToJson(ExploreGroupResponseModel data) => json.encode(data.toJson());

@freezed
class ExploreGroupResponseModel with _$ExploreGroupResponseModel {
    const factory ExploreGroupResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<GroupDatum>? data,
    }) = _ExploreGroupResponseModel;

    factory ExploreGroupResponseModel.fromJson(Map<String, dynamic> json) => _$ExploreGroupResponseModelFromJson(json);
}

@freezed
class GroupDatum with _$GroupDatum {
    const factory GroupDatum({
        @JsonKey(name: "_id")
        String? id,
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
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "followers")
        List<Follower>? followers,
        @JsonKey(name: "reviewer")
        List<dynamic>? reviewer,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "follower")
        int? follower,
        @JsonKey(name: "rating")
        int? rating,
        @JsonKey(name: "averageRating")
        double? averageRating,
        @JsonKey(name: "isFollowing")
        bool? isFollowing,
    }) = _GroupDatum;

    factory GroupDatum.fromJson(Map<String, dynamic> json) => _$GroupDatumFromJson(json);
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
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}

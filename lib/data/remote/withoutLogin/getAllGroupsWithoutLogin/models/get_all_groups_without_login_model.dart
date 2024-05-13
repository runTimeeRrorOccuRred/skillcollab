// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/group_subscribe_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';

part 'get_all_groups_without_login_model.freezed.dart';
part 'get_all_groups_without_login_model.g.dart';

GetAllGroupsWithoutLoginRequestModel getAllGroupsWithoutLoginRequestModelFromJson(String str) => GetAllGroupsWithoutLoginRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getAllGroupsWithoutLoginRequestModelToJson(GetAllGroupsWithoutLoginRequestModel data) => json.encode(data.toJson());

@freezed
class GetAllGroupsWithoutLoginRequestModel with _$GetAllGroupsWithoutLoginRequestModel {
    const factory GetAllGroupsWithoutLoginRequestModel({
        String? searchKey,
        String? interests,
        String? timeFilter,
    }) = _GetAllGroupsWithoutLoginRequestModel;

    factory GetAllGroupsWithoutLoginRequestModel.fromJson(Map<String, dynamic> json) => _$GetAllGroupsWithoutLoginRequestModelFromJson(json);
}




//============= RESPONSE =============//
GetAllGroupsWithoutLoginResponseModel getAllGroupsWithoutLoginResponseModelFromJson(String str) => GetAllGroupsWithoutLoginResponseModel.fromJson(json.decode(str));
String getAllGroupsWithoutLoginResponseModelToJson(GetAllGroupsWithoutLoginResponseModel data) => json.encode(data.toJson());

@freezed
class GetAllGroupsWithoutLoginResponseModel with _$GetAllGroupsWithoutLoginResponseModel {
    const factory GetAllGroupsWithoutLoginResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<GroupDatum>? data,
    }) = _GetAllGroupsWithoutLoginResponseModel;

    factory GetAllGroupsWithoutLoginResponseModel.fromJson(Map<String, dynamic> json) => _$GetAllGroupsWithoutLoginResponseModelFromJson(json);
}

@freezed
class GroupDatum with _$GroupDatum {
    const factory GroupDatum({
        @JsonKey(name: "groupPhoto")
        String? groupPhoto,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "interests")
        List<Interest>? interests,
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
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "subscribers")
        List<Subscriber>? subscribers,
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
        @JsonKey(name: "groupId")
        GroupId? groupId,
        PeopleAndGroupPost? peopleAndGroupPost,
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
        @JsonKey(name: "accountId")
        String? accountId,
        @JsonKey(name: "accountLink")
        String? accountLink,
        @JsonKey(name: "customerId")
        String? customerId,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "subscribers")
        List<Subscriber>? subscribers,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}


@freezed
class GroupId with _$GroupId {
    const factory GroupId({
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
        String? userId,
        @JsonKey(name: "subscribers")
        List<Subscriber>? subscribers,
        @JsonKey(name: "followers")
        List<Follower?>? followers,
        @JsonKey(name: "reviewer")
        List<Reviewer>? reviewer,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
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
        String? title,
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
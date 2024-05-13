// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'all_group_model.freezed.dart';
part 'all_group_model.g.dart';


///============ REQUEST ============///
AllGroupRequestModel allGroupRequestModelFromJson(String str) => AllGroupRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String allGroupRequestModelToJson(AllGroupRequestModel data) => json.encode(data.toJson());

@freezed
class AllGroupRequestModel with _$AllGroupRequestModel {
    const factory AllGroupRequestModel({
        @JsonKey(name: "searchKey")
        String? searchKey,
        @JsonKey(name: "interests")
        String? interests,
        @JsonKey(name: "timeFilter")
        String? timeFilter,
    }) = _AllGroupRequestModel;

    factory AllGroupRequestModel.fromJson(Map<String, dynamic> json) => _$AllGroupRequestModelFromJson(json);
}



///============ RESPONSE ============///
AllGroupResponseModel allGroupResponseModelFromJson(String str) => AllGroupResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String allGroupResponseModelToJson(AllGroupResponseModel data) => json.encode(data.toJson());

@freezed
class AllGroupResponseModel with _$AllGroupResponseModel {
    const factory AllGroupResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<GroupDataa>? data,
    }) = _AllGroupResponseModel;

    factory AllGroupResponseModel.fromJson(Map<String, dynamic> json) => _$AllGroupResponseModelFromJson(json);
}

@freezed
class GroupDataa with _$GroupDataa {
    const factory GroupDataa({
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
        List<Interest>? interests,
        @JsonKey(name: "followers")
        List<Follower>? followers,
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "reviewer")
        List<Reviewer>? reviewer,
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
        @JsonKey(name: "followStatus")
        bool? followStatus,
    }) = _GroupDataa;

    factory GroupDataa.fromJson(Map<String, dynamic> json) => _$GroupDataaFromJson(json);
}

@freezed
class Subscriber with _$Subscriber {
    const factory Subscriber({
        @JsonKey(name: "subscription_id")
        String? subscriptionId,
        @JsonKey(name: "isPaid")
        bool? isPaid,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "user")
        String? user,
        @JsonKey(name: "expirationDate")
        dynamic expirationDate,
    }) = _Subscriber;

    factory Subscriber.fromJson(Map<String, dynamic> json) => _$SubscriberFromJson(json);
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
        List<Interest?>? interests,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
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
class Reviewer with _$Reviewer {
    const factory Reviewer({
        @JsonKey(name: "review")
        String? review,
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

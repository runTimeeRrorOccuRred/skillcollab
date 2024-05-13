// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'group_subscribe_model.freezed.dart';
part 'group_subscribe_model.g.dart';

///========== REQUEST ==========///
GroupSubscribeRequestModel groupSubscribeRequestModelFromJson(String str) => GroupSubscribeRequestModel.fromJson(json.decode(str));
String groupSubscribeRequestModelToJson(GroupSubscribeRequestModel data) => json.encode(data.toJson());

@freezed
class GroupSubscribeRequestModel with _$GroupSubscribeRequestModel {
    const factory GroupSubscribeRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "groupCreatorUserId")
        String? groupCreatorUserId,
        @JsonKey(name: "subscriptionId")
        String? subscriptionId,
    }) = _GroupSubscribeRequestModel;

    factory GroupSubscribeRequestModel.fromJson(Map<String, dynamic> json) => _$GroupSubscribeRequestModelFromJson(json);
}



///========== RESPONSE ==========///
GroupSubscribeResponseModel groupSubscribeResponseModelFromJson(String str) => GroupSubscribeResponseModel.fromJson(json.decode(str));
String groupSubscribeResponseModelToJson(GroupSubscribeResponseModel data) => json.encode(data.toJson());

@freezed
class GroupSubscribeResponseModel with _$GroupSubscribeResponseModel {
    const factory GroupSubscribeResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GroupSubscribeResponseModel;

    factory GroupSubscribeResponseModel.fromJson(Map<String, dynamic> json) => _$GroupSubscribeResponseModelFromJson(json);
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
        int? oneMonthSubscriptionPrice,
        @JsonKey(name: "six_month_subscription_price")
        int? sixMonthSubscriptionPrice,
        @JsonKey(name: "twelve_month_subscription_price")
        int? twelveMonthSubscriptionPrice,
        @JsonKey(name: "promoCode")
        String? promoCode,
        @JsonKey(name: "discount")
        int? discount,
        @JsonKey(name: "productId")
        String? productId,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "followers")
        List<Follower>? followers,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "subscribers")
        List<Subscriber>? subscribers,
        @JsonKey(name: "reviewer")
        List<dynamic>? reviewer,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
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

// @freezed
// class Subscriber with _$Subscriber {
//     const factory Subscriber({
//         @JsonKey(name: "subscription_id")
//         String? subscriptionId,
//         @JsonKey(name: "isPaid")
//         bool? isPaid,
//         @JsonKey(name: "_id")
//         String? id,
//         @JsonKey(name: "user")
//         String? user,
//         @JsonKey(name: "expirationDate")
//         dynamic expirationDate,
//     }) = _Subscriber;

//     factory Subscriber.fromJson(Map<String, dynamic> json) => _$SubscriberFromJson(json);
// }

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
        User? user,
        @JsonKey(name: "expirationDate")
        DateTime? expirationDate,
    }) = _Subscriber;

    factory Subscriber.fromJson(Map<String, dynamic> json) => _$SubscriberFromJson(json);
}

@freezed
class User with _$User {
    const factory User({
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "productId")
        String? productId,
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
        @JsonKey(name: "accountId")
        String? accountId,
        @JsonKey(name: "accountLink")
        String? accountLink,
        @JsonKey(name: "customerId")
        String? customerId,
        @JsonKey(name: "otp")
        int? otp,
        @JsonKey(name: "otpExpiry")
        DateTime? otpExpiry,
    }) = _User;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}


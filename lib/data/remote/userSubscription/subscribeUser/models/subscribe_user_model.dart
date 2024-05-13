// To parse this JSON data, do
//
//     final subscribeUserRequestModel = subscribeUserRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';

part 'subscribe_user_model.freezed.dart';
part 'subscribe_user_model.g.dart';

SubscribeUserRequestModel subscribeUserRequestModelFromJson(String str) => SubscribeUserRequestModel.fromJson(json.decode(str));

String subscribeUserRequestModelToJson(SubscribeUserRequestModel data) => json.encode(data.toJson());

@freezed
class SubscribeUserRequestModel with _$SubscribeUserRequestModel {
    const factory SubscribeUserRequestModel({
        @JsonKey(name: "subscriptionId")
        String? subscriptionId,
        @JsonKey(name: "subscribeUserId")
        String? subscribeUserId,
    }) = _SubscribeUserRequestModel;

    factory SubscribeUserRequestModel.fromJson(Map<String, dynamic> json) => _$SubscribeUserRequestModelFromJson(json);
}



SubscribeUserResponseModel subscribeUserResponseModelFromJson(String str) => SubscribeUserResponseModel.fromJson(json.decode(str));

String subscribeUserResponseModelToJson(SubscribeUserResponseModel data) => json.encode(data.toJson());

@freezed
class SubscribeUserResponseModel with _$SubscribeUserResponseModel {
    const factory SubscribeUserResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _SubscribeUserResponseModel;

    factory SubscribeUserResponseModel.fromJson(Map<String, dynamic> json) => _$SubscribeUserResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "isKyc")
        bool? isKyc,
        @JsonKey(name: "productId")
        String? productId,
        @JsonKey(name: "deviceToken")
        List<String>? deviceToken,
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
        List<DataSubscriber>? subscribers,
        @JsonKey(name: "followers")
        List<dynamic>? followers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "customerId")
        String? customerId,
        @JsonKey(name: "otp")
        dynamic otp,
        @JsonKey(name: "otpExpiry")
        dynamic otpExpiry,
        @JsonKey(name: "accountId")
        String? accountId,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class DataSubscriber with _$DataSubscriber {
    const factory DataSubscriber({
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
    }) = _DataSubscriber;

    factory DataSubscriber.fromJson(Map<String, dynamic> json) => _$DataSubscriberFromJson(json);
}

@freezed
class User with _$User {
    const factory User({
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "isKyc")
        bool? isKyc,
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
        List<UserSubscriber>? subscribers,
        @JsonKey(name: "followers")
        List<Follower>? followers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "customerId")
        String? customerId,
        @JsonKey(name: "otp")
        dynamic otp,
        @JsonKey(name: "otpExpiry")
        dynamic otpExpiry,
        @JsonKey(name: "accountId")
        String? accountId,
    }) = _User;

    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// @freezed
// class Follower with _$Follower {
//     const factory Follower({
//         @JsonKey(name: "status")
//         String? status,
//         @JsonKey(name: "_id")
//         String? id,
//         @JsonKey(name: "userId")
//         String? userId,
//     }) = _Follower;

//     factory Follower.fromJson(Map<String, dynamic> json) => _$FollowerFromJson(json);
// }

@freezed
class UserSubscriber with _$UserSubscriber {
    const factory UserSubscriber({
        @JsonKey(name: "subscription_id")
        String? subscriptionId,
        @JsonKey(name: "isPaid")
        bool? isPaid,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "user")
        String? user,
        @JsonKey(name: "expirationDate")
        DateTime? expirationDate,
    }) = _UserSubscriber;

    factory UserSubscriber.fromJson(Map<String, dynamic> json) => _$UserSubscriberFromJson(json);
}

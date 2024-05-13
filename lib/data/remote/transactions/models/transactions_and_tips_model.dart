// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'transactions_and_tips_model.freezed.dart';
part 'transactions_and_tips_model.g.dart';


//!========= REQUEST =========!//
TransactionAndTipsRequestModel transactionAndTipsRequestModelFromJson(String str) => TransactionAndTipsRequestModel.fromJson(json.decode(str));
String transactionAndTipsRequestModelToJson(TransactionAndTipsRequestModel data) => json.encode(data.toJson());

@freezed
class TransactionAndTipsRequestModel with _$TransactionAndTipsRequestModel {
    const factory TransactionAndTipsRequestModel({
        @JsonKey(name: "type")
        String? type,
    }) = _TransactionAndTipsRequestModel;

    factory TransactionAndTipsRequestModel.fromJson(Map<String, dynamic> json) => _$TransactionAndTipsRequestModelFromJson(json);
}



//!========= RESPONSE =========!//
TransactionAndTipsResponseModel transactionAndTipsResponseModelFromJson(String str) => TransactionAndTipsResponseModel.fromJson(json.decode(str));
String transactionAndTipsResponseModelToJson(TransactionAndTipsResponseModel data) => json.encode(data.toJson());

@freezed
class TransactionAndTipsResponseModel with _$TransactionAndTipsResponseModel {
    const factory TransactionAndTipsResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Datum>? data,
    }) = _TransactionAndTipsResponseModel;

    factory TransactionAndTipsResponseModel.fromJson(Map<String, dynamic> json) => _$TransactionAndTipsResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "groupId")
        dynamic groupId,
        @JsonKey(name: "subscriptionId")
        String? subscriptionId,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "toUser")
        String? toUser,
        @JsonKey(name: "fromUser")
        FromUser? fromUser,
        @JsonKey(name: "amount")
        num? amount,
        @JsonKey(name: "currency")
        String? currency,
        @JsonKey(name: "netAmount")
        num? netAmount,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "day")
        String? day,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class FromUser with _$FromUser {
    const factory FromUser({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "productId")
        String? productId,
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
        List<Subscriber>? subscribers,
        @JsonKey(name: "followers")
        List<Follower>? followers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "otp")
        int? otp,
        @JsonKey(name: "otpExpiry")
        DateTime? otpExpiry,
    }) = _FromUser;

    factory FromUser.fromJson(Map<String, dynamic> json) => _$FromUserFromJson(json);
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
        DateTime? expirationDate,
    }) = _Subscriber;

    factory Subscriber.fromJson(Map<String, dynamic> json) => _$SubscriberFromJson(json);
}

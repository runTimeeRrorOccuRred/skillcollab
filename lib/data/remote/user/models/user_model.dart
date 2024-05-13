// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str) as Map<String, dynamic>);
String userModelToJson(UserModel data) => json.encode(data.toJson());

@freezed
class UserModel with _$UserModel {
    const factory UserModel({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "productId")
        String? productId,
        @JsonKey(name: "deviceToken")
        List<dynamic>? deviceToken,
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
        List<dynamic>? followers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "otp")
        int? otp,
        @JsonKey(name: "otpExpiry")
        DateTime? otpExpiry,
        @JsonKey(name: "uid")
        String? uid,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "accountId")
        String? accountId,
        @JsonKey(name: "accountLink")
        String? accountLink,
        @JsonKey(name: "customerId")
        String? customerId,
    }) = _UserModel;

    factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
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
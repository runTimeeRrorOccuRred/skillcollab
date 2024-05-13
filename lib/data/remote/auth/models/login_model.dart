// To parse this JSON data, do
//
//     final loginRequest = loginRequestFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

LoginRequest loginRequestFromJson(String str) => LoginRequest.fromJson(json.decode(str));
String loginRequestToJson(LoginRequest data) => json.encode(data.toJson());

@freezed
class LoginRequest with _$LoginRequest {
    const factory LoginRequest({
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "password")
        String? password,
        @JsonKey(name: "deviceToken")
        String? deviceToken,
    }) = _LoginRequest;

    factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);
}




LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

@freezed
class LoginResponseModel with _$LoginResponseModel {
    const factory LoginResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
        String? accessToken,
        String? refreshToken,
    }) = _LoginResponseModel;

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "productId")
        dynamic productId,
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
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
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
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

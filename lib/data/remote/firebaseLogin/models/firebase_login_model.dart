// ignore_for_file: invalid_annotation_target


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_login_model.freezed.dart';
part 'firebase_login_model.g.dart';

FirebaseLoginRequest firebaseLoginRequestFromJson(String str) =>
    FirebaseLoginRequest.fromJson(json.decode(str));

String firebaseLoginRequestToJson(FirebaseLoginRequest data) =>
    json.encode(data.toJson());

@freezed
class FirebaseLoginRequest with _$FirebaseLoginRequest {
  const factory FirebaseLoginRequest({
    @JsonKey(name: "uid") String? uid,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "deviceToken") String? deviceToken,
  }) = _FirebaseLoginRequest;

  factory FirebaseLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$FirebaseLoginRequestFromJson(json);
}

FirebaseLoginResponse firebaseLoginResponseFromJson(String str) => FirebaseLoginResponse.fromJson(json.decode(str));
String firebaseLoginResponseToJson(FirebaseLoginResponse data) => json.encode(data.toJson());

@freezed
class FirebaseLoginResponse with _$FirebaseLoginResponse {
    const factory FirebaseLoginResponse({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
        @JsonKey(name: "accessToken")
        String? accessToken,
        @JsonKey(name: "refreshToken")
        String? refreshToken,
    }) = _FirebaseLoginResponse;

    factory FirebaseLoginResponse.fromJson(Map<String, dynamic> json) => _$FirebaseLoginResponseFromJson(json);
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
        @JsonKey(name: "expertise")
        dynamic expertise,
        @JsonKey(name: "profilePhoto")
        dynamic profilePhoto,
        @JsonKey(name: "coverPhoto")
        dynamic coverPhoto,
        @JsonKey(name: "productId")
        dynamic productId,
        @JsonKey(name: "deviceToken")
        List<String?>? deviceToken,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        dynamic banReason,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "uid")
        String? uid,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "type")
        String? type,
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
        @JsonKey(name: "customerId")
        String? customerId,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
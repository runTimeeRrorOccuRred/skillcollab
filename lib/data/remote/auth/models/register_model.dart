// To parse this JSON data, do
//
//     final registrationRequest = registrationRequestFromJson(jsonString);

import 'dart:convert';

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

RegistrationRequest registrationRequestFromJson(String str) => RegistrationRequest.fromJson(json.decode(str) as Map<String, dynamic>);
String registrationRequestToJson(RegistrationRequest data) => json.encode(data.toJson());

@freezed
class RegistrationRequest with _$RegistrationRequest {
    const factory RegistrationRequest({
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
        @JsonKey(name: "deviceToken")
        String? deviceToken,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "interests")
        List<Interest>? interests,
    }) = _RegistrationRequest;

    factory RegistrationRequest.fromJson(Map<String, dynamic> json) => _$RegistrationRequestFromJson(json);
}


///======== RESPONSE ========///
RegistrationResponse registrationResponseFromJson(String str) => RegistrationResponse.fromJson(json.decode(str) as Map<String, dynamic>);
String registrationResponseToJson(RegistrationResponse data) => json.encode(data.toJson());

@freezed
class RegistrationResponse with _$RegistrationResponse {
    const factory RegistrationResponse({
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
    }) = _RegistrationResponse;

    factory RegistrationResponse.fromJson(Map<String, dynamic> json) => _$RegistrationResponseFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "productId")
        dynamic productId,
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
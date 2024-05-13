// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'get_followers_by_user_model.freezed.dart';
part 'get_followers_by_user_model.g.dart';

GetFollowersByUserResponseModel getFollowersByUserResponseModelFromJson(String str) => GetFollowersByUserResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getFollowersByUserResponseModelToJson(GetFollowersByUserResponseModel data) => json.encode(data.toJson());

@freezed
class GetFollowersByUserResponseModel with _$GetFollowersByUserResponseModel {
    const factory GetFollowersByUserResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Datum>? data,
    }) = _GetFollowersByUserResponseModel;

    factory GetFollowersByUserResponseModel.fromJson(Map<String, dynamic> json) => _$GetFollowersByUserResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "productId")
        dynamic productId,
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
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "otp")
        int? otp,
        @JsonKey(name: "otpExpiry")
        DateTime? otpExpiry,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

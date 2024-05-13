// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'update_user_model.freezed.dart';
part 'update_user_model.g.dart';


//======= REQUEST =======//
UpdateUserRequestModel updateUserRequestModelFromJson(String str) => UpdateUserRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String updateUserRequestModelToJson(UpdateUserRequestModel data) => json.encode(data.toJson());

@freezed
class UpdateUserRequestModel with _$UpdateUserRequestModel {
    const factory UpdateUserRequestModel({
        String? userName,
        String? firstName,
        String? lastName,
        String? email,
        String? phone,
        String? coverPhoto,
        String? profilePhoto,
        String? description,
        String? location,
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "interests")
        List<Interest>? interests,
    }) = _UpdateUserRequestModel;

    factory UpdateUserRequestModel.fromJson(Map<String, dynamic> json) => _$UpdateUserRequestModelFromJson(json);
}


//======= RESPONSE =======//
UpdateUserResponseModel updateUserResponseModelFromJson(String str) => UpdateUserResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String updateUserResponseModelToJson(UpdateUserResponseModel data) => json.encode(data.toJson());

@freezed
class UpdateUserResponseModel with _$UpdateUserResponseModel {
    const factory UpdateUserResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _UpdateUserResponseModel;

    factory UpdateUserResponseModel.fromJson(Map<String, dynamic> json) => _$UpdateUserResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        String? role,
        bool? isEmailVerified,
        List<Interest>? interests,
        String? firstName,
        String? lastName,
        String? userName,
        String? email,
        String? phone,
        DateTime? createdAt,
        DateTime? updatedAt,
        dynamic otp,
        dynamic otpExpiry,
        String? coverPhoto,
        String? location,
        String? profilePhoto,
        // String? expertise,
        String? description,
        String? id,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

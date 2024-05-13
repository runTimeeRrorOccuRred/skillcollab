// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_verify_model.freezed.dart';
part 'forgot_verify_model.g.dart';


//!========== REQUEST ==========!//
ForgotVerifyRequestModel forgotVerifyRequestModelFromJson(String str) => ForgotVerifyRequestModel.fromJson(json.decode(str));
String forgotVerifyRequestModelToJson(ForgotVerifyRequestModel data) => json.encode(data.toJson());

@freezed
class ForgotVerifyRequestModel with _$ForgotVerifyRequestModel {
    const factory ForgotVerifyRequestModel({
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "otp")
        int? otp,
    }) = _ForgotVerifyRequestModel;

    factory ForgotVerifyRequestModel.fromJson(Map<String, dynamic> json) => _$ForgotVerifyRequestModelFromJson(json);
}


//!========== RESPONSE ==========!//
ForgotVerifyResponseModel forgotVerifyResponseModelFromJson(String str) => ForgotVerifyResponseModel.fromJson(json.decode(str));
String forgotVerifyResponseModelToJson(ForgotVerifyResponseModel data) => json.encode(data.toJson());

@freezed
class ForgotVerifyResponseModel with _$ForgotVerifyResponseModel {
    const factory ForgotVerifyResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _ForgotVerifyResponseModel;

    factory ForgotVerifyResponseModel.fromJson(Map<String, dynamic> json) => _$ForgotVerifyResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data() = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}



// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_model.freezed.dart';
part 'reset_password_model.g.dart';

///============ REQUEST ============///
ResetPasswordRequestModel resetPasswordRequestModelFromJson(String str) => ResetPasswordRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String resetPasswordRequestModelToJson(ResetPasswordRequestModel data) => json.encode(data.toJson());

@freezed
class ResetPasswordRequestModel with _$ResetPasswordRequestModel {
    const factory ResetPasswordRequestModel({
        @JsonKey(name: "otp")
        int? otp,
        @JsonKey(name: "newPassword")
        String? newPassword,
        @JsonKey(name: "confirmPassword")
        String? confirmPassword,
        @JsonKey(name: "email")
        String? email,
    }) = _ResetPasswordRequestModel;

    factory ResetPasswordRequestModel.fromJson(Map<String, dynamic> json) => _$ResetPasswordRequestModelFromJson(json);
}



///============ RESPONSE ============///
ResetPasswordResponseModel resetPasswordResponseModelFromJson(String str) => ResetPasswordResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String resetPasswordResponseModelToJson(ResetPasswordResponseModel data) => json.encode(data.toJson());

@freezed
class ResetPasswordResponseModel with _$ResetPasswordResponseModel {
    const factory ResetPasswordResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _ResetPasswordResponseModel;

    factory ResetPasswordResponseModel.fromJson(Map<String, dynamic> json) => _$ResetPasswordResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data() = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

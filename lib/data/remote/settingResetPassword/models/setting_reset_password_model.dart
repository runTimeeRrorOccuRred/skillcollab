// To parse this JSON data, do
//
//     final resetPasswordRequest = resetPasswordRequestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_reset_password_model.freezed.dart';
part 'setting_reset_password_model.g.dart';

ResetPasswordRequest resetPasswordRequestFromJson(String str) => ResetPasswordRequest.fromJson(json.decode(str));

String resetPasswordRequestToJson(ResetPasswordRequest data) => json.encode(data.toJson());

@freezed
class ResetPasswordRequest with _$ResetPasswordRequest {
    const factory ResetPasswordRequest({
        String? password,
        String? newPassword,
        String? confirmPassword,
    }) = _ResetPasswordRequest;

    factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) => _$ResetPasswordRequestFromJson(json);
}




ResetPasswordResponse resetPasswordResponseFromJson(String str) => ResetPasswordResponse.fromJson(json.decode(str));

String resetPasswordResponseToJson(ResetPasswordResponse data) => json.encode(data.toJson());

@freezed
class ResetPasswordResponse with _$ResetPasswordResponse {
    const factory ResetPasswordResponse({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _ResetPasswordResponse;

    factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) => _$ResetPasswordResponseFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data() = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

// To parse this JSON data, do
//
//     final usernameValidatorResponse = usernameValidatorResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'username_validator_model.freezed.dart';
part 'username_validator_model.g.dart';

//request model

UsernameValidatorRequest usernameValidatorRequestFromJson(String str) => UsernameValidatorRequest.fromJson(json.decode(str));

String usernameValidatorRequestToJson(UsernameValidatorRequest data) => json.encode(data.toJson());

@freezed
class UsernameValidatorRequest with _$UsernameValidatorRequest {
    const factory UsernameValidatorRequest({
        @JsonKey(name: "userName")
        String? userName,
    }) = _UsernameValidatorRequest;

    factory UsernameValidatorRequest.fromJson(Map<String, dynamic> json) => _$UsernameValidatorRequestFromJson(json);
}

//response model

UsernameValidatorResponse usernameValidatorResponseFromJson(String str) => UsernameValidatorResponse.fromJson(json.decode(str));

String usernameValidatorResponseToJson(UsernameValidatorResponse data) => json.encode(data.toJson());

@freezed
class UsernameValidatorResponse with _$UsernameValidatorResponse {
    const factory UsernameValidatorResponse({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _UsernameValidatorResponse;

    factory UsernameValidatorResponse.fromJson(Map<String, dynamic> json) => _$UsernameValidatorResponseFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data() = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_token_model.freezed.dart';
part 'refresh_token_model.g.dart';


///============ REQUEST ============///
RefreshTokenRequestModel refreshTokenRequestModelFromJson(String str) => RefreshTokenRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String refreshTokenRequestModelToJson(RefreshTokenRequestModel data) => json.encode(data.toJson());

@freezed
class RefreshTokenRequestModel with _$RefreshTokenRequestModel {
    const factory RefreshTokenRequestModel({
        String? refreshToken,
    }) = _RefreshTokenRequestModel;

    factory RefreshTokenRequestModel.fromJson(Map<String, dynamic> json) => _$RefreshTokenRequestModelFromJson(json);
}


///============ RESPONSE ============///
RefreshTokenResponseModel refreshTokenResponseModelFromJson(String str) => RefreshTokenResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String refreshTokenResponseModelToJson(RefreshTokenResponseModel data) => json.encode(data.toJson());

@freezed
class RefreshTokenResponseModel with _$RefreshTokenResponseModel {
    const factory RefreshTokenResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
        String? accessToken,
        String? refreshToken,
    }) = _RefreshTokenResponseModel;

    factory RefreshTokenResponseModel.fromJson(Map<String, dynamic> json) => _$RefreshTokenResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data() = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

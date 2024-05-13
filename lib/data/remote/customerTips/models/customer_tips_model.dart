// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_tips_model.freezed.dart';
part 'customer_tips_model.g.dart';

//!========= REQUEST =========!//
CustomerTipRequestModel customerTipRequestModelFromJson(String str) => CustomerTipRequestModel.fromJson(json.decode(str));
String customerTipRequestModelToJson(CustomerTipRequestModel data) => json.encode(data.toJson());

@freezed
class CustomerTipRequestModel with _$CustomerTipRequestModel {
    const factory CustomerTipRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "tipAmount")
        int? tipAmount,
    }) = _CustomerTipRequestModel;

    factory CustomerTipRequestModel.fromJson(Map<String, dynamic> json) => _$CustomerTipRequestModelFromJson(json);
}



//!========= RESPONSE =========!//
CustomerTipResponseModel customerTipResponseModelFromJson(String str) => CustomerTipResponseModel.fromJson(json.decode(str));
String customerTipResponseModelToJson(CustomerTipResponseModel data) => json.encode(data.toJson());

@freezed
class CustomerTipResponseModel with _$CustomerTipResponseModel {
    const factory CustomerTipResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _CustomerTipResponseModel;

    factory CustomerTipResponseModel.fromJson(Map<String, dynamic> json) => _$CustomerTipResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "sessionId")
        String? sessionId,
        @JsonKey(name: "sessionUrl")
        String? sessionUrl,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

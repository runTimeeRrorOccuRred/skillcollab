// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_subscribe_model.freezed.dart';
part 'customer_subscribe_model.g.dart';


//!====== REQUEST ======!//
CustomerSubscribeRequestModel customerSubscribeRequestModelFromJson(String str) => CustomerSubscribeRequestModel.fromJson(json.decode(str));
String customerSubscribeRequestModelToJson(CustomerSubscribeRequestModel data) => json.encode(data.toJson());

@freezed
class CustomerSubscribeRequestModel with _$CustomerSubscribeRequestModel {
    const factory CustomerSubscribeRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "subscribeUserId")
        String? subscribeUserId,
        @JsonKey(name: "planId")
        String? planId,
    }) = _CustomerSubscribeRequestModel;

    factory CustomerSubscribeRequestModel.fromJson(Map<String, dynamic> json) => _$CustomerSubscribeRequestModelFromJson(json);
}


//!====== RESPONSE ======!//
CustomerSubscribeResponseModel customerSubscribeResponseModelFromJson(String str) => CustomerSubscribeResponseModel.fromJson(json.decode(str));
String customerSubscribeResponseModelToJson(CustomerSubscribeResponseModel data) => json.encode(data.toJson());

@freezed
class CustomerSubscribeResponseModel with _$CustomerSubscribeResponseModel {
    const factory CustomerSubscribeResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _CustomerSubscribeResponseModel;

    factory CustomerSubscribeResponseModel.fromJson(Map<String, dynamic> json) => _$CustomerSubscribeResponseModelFromJson(json);
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
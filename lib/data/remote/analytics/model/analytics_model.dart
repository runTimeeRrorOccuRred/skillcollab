// To parse this JSON data, do
//
//     final analyticsRequestModel = analyticsRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_model.freezed.dart';
part 'analytics_model.g.dart';

AnalyticsRequestModel analyticsRequestModelFromJson(String str) => AnalyticsRequestModel.fromJson(json.decode(str));

String analyticsRequestModelToJson(AnalyticsRequestModel data) => json.encode(data.toJson());

@freezed
class AnalyticsRequestModel with _$AnalyticsRequestModel {
     factory AnalyticsRequestModel({
        @JsonKey(name: "startDate")
        String? startDate,
        @JsonKey(name: "endDate")
        String? endDate,
    }) = _AnalyticsRequestModel;

    factory AnalyticsRequestModel.fromJson(Map<String, dynamic> json) => _$AnalyticsRequestModelFromJson(json);
}


//===Response
AnalyticsResponseModel analyticsResponseModelFromJson(String str) => AnalyticsResponseModel.fromJson(json.decode(str));
String analyticsResponseModelToJson(AnalyticsResponseModel data) => json.encode(data.toJson());

@freezed
class AnalyticsResponseModel with _$AnalyticsResponseModel {
    const factory AnalyticsResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _AnalyticsResponseModel;

    factory AnalyticsResponseModel.fromJson(Map<String, dynamic> json) => _$AnalyticsResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "values")
        List<Value>? values,
        @JsonKey(name: "maxY")
        int? maxY,
        @JsonKey(name: "minY")
        int? minY,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Value with _$Value {
    const factory Value({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "toUser")
        String? toUser,
        @JsonKey(name: "fromUser")
        String? fromUser,
        @JsonKey(name: "amount")
        num? amount,
        @JsonKey(name: "currency")
        String? currency,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "netAmount")
        num? netAmount,
        @JsonKey(name: "day")
        String? day,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Value;

    factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}

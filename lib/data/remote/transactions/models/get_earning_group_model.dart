// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_earning_group_model.freezed.dart';
part 'get_earning_group_model.g.dart';


//!======== REQUEST ========!//
GetEarningGroupRequestModel getEarningGroupRequestModelFromJson(String str) => GetEarningGroupRequestModel.fromJson(json.decode(str));
String getEarningGroupRequestModelToJson(GetEarningGroupRequestModel data) => json.encode(data.toJson());

@freezed
class GetEarningGroupRequestModel with _$GetEarningGroupRequestModel {
    const factory GetEarningGroupRequestModel({
        @JsonKey(name: "groupId")
        List<String>? groupId,
    }) = _GetEarningGroupRequestModel;

    factory GetEarningGroupRequestModel.fromJson(Map<String, dynamic> json) => _$GetEarningGroupRequestModelFromJson(json);
}



//!======== RESPONSE ========!//
GetEarningGroupResponseModel getEarningGroupResponseModelFromJson(String str) => GetEarningGroupResponseModel.fromJson(json.decode(str));
String getEarningGroupResponseModelToJson(GetEarningGroupResponseModel data) => json.encode(data.toJson());

@freezed
class GetEarningGroupResponseModel with _$GetEarningGroupResponseModel {
    const factory GetEarningGroupResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GetEarningGroupResponseModel;

    factory GetEarningGroupResponseModel.fromJson(Map<String, dynamic> json) => _$GetEarningGroupResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "totalEarnings")
        num? totalEarnings,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}


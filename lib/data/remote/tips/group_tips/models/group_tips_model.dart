// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_tips_model.freezed.dart';
part 'group_tips_model.g.dart';

GroupTipsRequestModel groupTipsRequestModelFromJson(String str) => GroupTipsRequestModel.fromJson(json.decode(str));
String groupTipsRequestModelToJson(GroupTipsRequestModel data) => json.encode(data.toJson());

@freezed
class GroupTipsRequestModel with _$GroupTipsRequestModel {
    const factory GroupTipsRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "tipAmount")
        num? tipAmount,
        @JsonKey(name: "type")
        String? type,
    }) = _GroupTipsRequestModel;
    factory GroupTipsRequestModel.fromJson(Map<String, dynamic> json) => _$GroupTipsRequestModelFromJson(json);
}


// Response Model

GroupTipsResponseModel groupTipsResponseModelFromJson(String str) => GroupTipsResponseModel.fromJson(json.decode(str));

String groupTipsResponseModelToJson(GroupTipsResponseModel data) => json.encode(data.toJson());

@freezed
class GroupTipsResponseModel with _$GroupTipsResponseModel {
    const factory GroupTipsResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GroupTipsResponseModel;

    factory GroupTipsResponseModel.fromJson(Map<String, dynamic> json) => _$GroupTipsResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "_id")
        String? id,
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
        @JsonKey(name: "day")
        String? day,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
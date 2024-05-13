// To parse this JSON data, do
//
//     final userTipsRequestModel = userTipsRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tips_model.freezed.dart';
part 'user_tips_model.g.dart';

UserTipsRequestModel userTipsRequestModelFromJson(String str) => UserTipsRequestModel.fromJson(json.decode(str));

String userTipsRequestModelToJson(UserTipsRequestModel data) => json.encode(data.toJson());

@freezed
class UserTipsRequestModel with _$UserTipsRequestModel {
    const factory UserTipsRequestModel({
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "tipAmount")
        int? tipAmount,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "destinationAccountId")
        String? destinationAccountId,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "cardId")
        String? cardId,
    }) = _UserTipsRequestModel;

    factory UserTipsRequestModel.fromJson(Map<String, dynamic> json) => _$UserTipsRequestModelFromJson(json);
}


UserTipsResponseModel userTipsResponseModelFromJson(String str) => UserTipsResponseModel.fromJson(json.decode(str));

String userTipsResponseModelToJson(UserTipsResponseModel data) => json.encode(data.toJson());

@freezed
class UserTipsResponseModel with _$UserTipsResponseModel {
    const factory UserTipsResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _UserTipsResponseModel;

    factory UserTipsResponseModel.fromJson(Map<String, dynamic> json) => _$UserTipsResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "groupId")
        dynamic groupId,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "fromUser")
        String? fromUser,
        @JsonKey(name: "toUser")
        String? toUser,
        @JsonKey(name: "amount")
        int? amount,
        @JsonKey(name: "currency")
        String? currency,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "netAmount")
        int? netAmount,
        @JsonKey(name: "day")
        String? day,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
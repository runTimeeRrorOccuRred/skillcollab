// To parse this JSON data, do
//
//     final followUserResponseModel = followUserResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'follow_user_model.freezed.dart';
part 'follow_user_model.g.dart';

FollowUserResponseModel followUserResponseModelFromJson(String str) => FollowUserResponseModel.fromJson(json.decode(str));

String followUserResponseModelToJson(FollowUserResponseModel data) => json.encode(data.toJson());

@freezed
class FollowUserResponseModel with _$FollowUserResponseModel {
    const factory FollowUserResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _FollowUserResponseModel;

    factory FollowUserResponseModel.fromJson(Map<String, dynamic> json) => _$FollowUserResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "following")
        String? following,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "id")
        String? id,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

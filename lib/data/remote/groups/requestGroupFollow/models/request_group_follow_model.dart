// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_group_follow_model.freezed.dart';
part 'request_group_follow_model.g.dart';

RequestGroupFollowResponseModel requestGroupFollowResponseModelFromJson(String str) => RequestGroupFollowResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String requestGroupFollowResponseModelToJson(RequestGroupFollowResponseModel data) => json.encode(data.toJson());

@freezed
class RequestGroupFollowResponseModel with _$RequestGroupFollowResponseModel {
    const factory RequestGroupFollowResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _RequestGroupFollowResponseModel;

    factory RequestGroupFollowResponseModel.fromJson(Map<String, dynamic> json) => _$RequestGroupFollowResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "following")
        dynamic following,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

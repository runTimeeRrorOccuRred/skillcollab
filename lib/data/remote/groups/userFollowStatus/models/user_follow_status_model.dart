// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_follow_status_model.freezed.dart';
part 'user_follow_status_model.g.dart';

UserFollowStatusResponseModel userFollowStatusResponseModelFromJson(String str) => UserFollowStatusResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String userFollowStatusResponseModelToJson(UserFollowStatusResponseModel data) => json.encode(data.toJson());

@freezed
class UserFollowStatusResponseModel with _$UserFollowStatusResponseModel {
    const factory UserFollowStatusResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Datum>? data,
    }) = _UserFollowStatusResponseModel;

    factory UserFollowStatusResponseModel.fromJson(Map<String, dynamic> json) => _$UserFollowStatusResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
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
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

// To parse this JSON data, do
//
//     final followStatusUserResponseModel = followStatusUserResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'follow_status_user_model.freezed.dart';
part 'follow_status_user_model.g.dart';

FollowStatusUserResponseModel followStatusUserResponseModelFromJson(String str) => FollowStatusUserResponseModel.fromJson(json.decode(str));

String followStatusUserResponseModelToJson(FollowStatusUserResponseModel data) => json.encode(data.toJson());

@freezed
class FollowStatusUserResponseModel with _$FollowStatusUserResponseModel {
    const factory FollowStatusUserResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _FollowStatusUserResponseModel;

    factory FollowStatusUserResponseModel.fromJson(Map<String, dynamic> json) => _$FollowStatusUserResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "isFollow")
        bool? isFollow,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

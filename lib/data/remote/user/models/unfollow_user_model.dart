// To parse this JSON data, do
//
//     final unfollowUserResponseModel = unfollowUserResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'unfollow_user_model.freezed.dart';
part 'unfollow_user_model.g.dart';

UnfollowUserResponseModel unfollowUserResponseModelFromJson(String str) => UnfollowUserResponseModel.fromJson(json.decode(str));

String unfollowUserResponseModelToJson(UnfollowUserResponseModel data) => json.encode(data.toJson());

@freezed
class UnfollowUserResponseModel with _$UnfollowUserResponseModel {
    const factory UnfollowUserResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _UnfollowUserResponseModel;

    factory UnfollowUserResponseModel.fromJson(Map<String, dynamic> json) => _$UnfollowUserResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data() = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

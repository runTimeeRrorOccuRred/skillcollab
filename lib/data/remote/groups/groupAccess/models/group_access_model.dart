// To parse this JSON data, do
//
//     final groupAccessRequestModel = groupAccessRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_access_model.freezed.dart';
part 'group_access_model.g.dart';

//===================================REQUEST==================================//

GroupAccessRequestModel groupAccessRequestModelFromJson(String str) => GroupAccessRequestModel.fromJson(json.decode(str));

String groupAccessRequestModelToJson(GroupAccessRequestModel data) => json.encode(data.toJson());

@freezed
class GroupAccessRequestModel with _$GroupAccessRequestModel {
    const factory GroupAccessRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
    }) = _GroupAccessRequestModel;

    factory GroupAccessRequestModel.fromJson(Map<String, dynamic> json) => _$GroupAccessRequestModelFromJson(json);
}
//===================================RESPONSE==================================//


GroupAccessResponseModel groupAccessResponseModelFromJson(String str) => GroupAccessResponseModel.fromJson(json.decode(str));

String groupAccessResponseModelToJson(GroupAccessResponseModel data) => json.encode(data.toJson());

@freezed
class GroupAccessResponseModel with _$GroupAccessResponseModel {
    const factory GroupAccessResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GroupAccessResponseModel;

    factory GroupAccessResponseModel.fromJson(Map<String, dynamic> json) => _$GroupAccessResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "status")
        bool? status,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

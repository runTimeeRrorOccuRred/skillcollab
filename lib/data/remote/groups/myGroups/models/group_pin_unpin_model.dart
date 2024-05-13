import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_pin_unpin_model.freezed.dart';
part 'group_pin_unpin_model.g.dart';




//======== REQUEST ========//
GroupPinUnpinRequestModel groupPinUnpinRequestModelFromJson(String str) => GroupPinUnpinRequestModel.fromJson(json.decode(str));
String groupPinUnpinRequestModelToJson(GroupPinUnpinRequestModel data) => json.encode(data.toJson());

@freezed
class GroupPinUnpinRequestModel with _$GroupPinUnpinRequestModel {
    const factory GroupPinUnpinRequestModel({
        String? groupId,
    }) = _GroupPinUnpinRequestModel;

    factory GroupPinUnpinRequestModel.fromJson(Map<String, dynamic> json) => _$GroupPinUnpinRequestModelFromJson(json);
}




//======== RESPONSE ========//
GroupPinUnpinResponseModel groupPinUnpinResponseModelFromJson(String str) => GroupPinUnpinResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String groupPinUnpinResponseModelToJson(GroupPinUnpinResponseModel data) => json.encode(data.toJson());

@freezed
class GroupPinUnpinResponseModel with _$GroupPinUnpinResponseModel {
    const factory GroupPinUnpinResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _GroupPinUnpinResponseModel;

    factory GroupPinUnpinResponseModel.fromJson(Map<String, dynamic> json) => _$GroupPinUnpinResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        bool? isPinned,
        String? groupId,
        String? userId,
        DateTime? createdAt,
        DateTime? updatedAt,
        String? id,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

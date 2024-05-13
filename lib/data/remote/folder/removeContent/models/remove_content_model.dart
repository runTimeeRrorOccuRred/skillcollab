// To parse this JSON data, do
//
//     final removeContentRequestModel = removeContentRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_content_model.freezed.dart';
part 'remove_content_model.g.dart';

RemoveContentRequestModel removeContentRequestModelFromJson(String str) => RemoveContentRequestModel.fromJson(json.decode(str));

String removeContentRequestModelToJson(RemoveContentRequestModel data) => json.encode(data.toJson());

@freezed
class RemoveContentRequestModel with _$RemoveContentRequestModel {
    const factory RemoveContentRequestModel({
        @JsonKey(name: "contentId")
        String? contentId,
    }) = _RemoveContentRequestModel;

    factory RemoveContentRequestModel.fromJson(Map<String, dynamic> json) => _$RemoveContentRequestModelFromJson(json);
}

RemoveContentResponseModel removeContentResponseModelFromJson(String str) => RemoveContentResponseModel.fromJson(json.decode(str));

String removeContentResponseModelToJson(RemoveContentResponseModel data) => json.encode(data.toJson());

@freezed
class RemoveContentResponseModel with _$RemoveContentResponseModel {
    const factory RemoveContentResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _RemoveContentResponseModel;

    factory RemoveContentResponseModel.fromJson(Map<String, dynamic> json) => _$RemoveContentResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "folderGroups")
        List<FolderGroup>? folderGroups,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class FolderGroup with _$FolderGroup {
    const factory FolderGroup({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "groupId")
        String? groupId,
    }) = _FolderGroup;

    factory FolderGroup.fromJson(Map<String, dynamic> json) => _$FolderGroupFromJson(json);
}

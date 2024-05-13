// To parse this JSON data, do
//
//     final folderAddContentRequestModel = folderAddContentRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'folder_add_content_model.freezed.dart';
part 'folder_add_content_model.g.dart';

FolderAddContentRequestModel folderAddContentRequestModelFromJson(String str) => FolderAddContentRequestModel.fromJson(json.decode(str));

String folderAddContentRequestModelToJson(FolderAddContentRequestModel data) => json.encode(data.toJson());

@freezed
class FolderAddContentRequestModel with _$FolderAddContentRequestModel {
    const factory FolderAddContentRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
    }) = _FolderAddContentRequestModel;

    factory FolderAddContentRequestModel.fromJson(Map<String, dynamic> json) => _$FolderAddContentRequestModelFromJson(json);
}

FolderAddContentResponseModel folderAddContentResponseModelFromJson(String str) => FolderAddContentResponseModel.fromJson(json.decode(str));

String folderAddContentResponseModelToJson(FolderAddContentResponseModel data) => json.encode(data.toJson());

@freezed
class FolderAddContentResponseModel with _$FolderAddContentResponseModel {
    const factory FolderAddContentResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _FolderAddContentResponseModel;

    factory FolderAddContentResponseModel.fromJson(Map<String, dynamic> json) => _$FolderAddContentResponseModelFromJson(json);
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

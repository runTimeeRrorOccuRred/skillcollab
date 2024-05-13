// To parse this JSON data, do
//
//     final folderContentResponseModel = folderContentResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/user/models/member_of_model.dart';

part 'folder_content_model.freezed.dart';
part 'folder_content_model.g.dart';

FolderContentResponseModel folderContentResponseModelFromJson(String str) => FolderContentResponseModel.fromJson(json.decode(str));

String folderContentResponseModelToJson(FolderContentResponseModel data) => json.encode(data.toJson());

@freezed
class FolderContentResponseModel with _$FolderContentResponseModel {
    const factory FolderContentResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _FolderContentResponseModel;

    factory FolderContentResponseModel.fromJson(Map<String, dynamic> json) => _$FolderContentResponseModelFromJson(json);
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
        GroupId? groupId,
    }) = _FolderGroup;

    factory FolderGroup.fromJson(Map<String, dynamic> json) => _$FolderGroupFromJson(json);
}

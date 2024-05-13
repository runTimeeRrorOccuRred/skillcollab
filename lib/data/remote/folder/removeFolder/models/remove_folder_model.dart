// To parse this JSON data, do
//
//     final folderRemoveResponseModel = folderRemoveResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:skill_colab/data/remote/folder/folderAddContent/models/folder_add_content_model.dart';

part 'remove_folder_model.freezed.dart';
part 'remove_folder_model.g.dart';

FolderRemoveResponseModel folderRemoveResponseModelFromJson(String str) => FolderRemoveResponseModel.fromJson(json.decode(str));

String folderRemoveResponseModelToJson(FolderRemoveResponseModel data) => json.encode(data.toJson());

@freezed
class FolderRemoveResponseModel with _$FolderRemoveResponseModel {
    const factory FolderRemoveResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _FolderRemoveResponseModel;

    factory FolderRemoveResponseModel.fromJson(Map<String, dynamic> json) => _$FolderRemoveResponseModelFromJson(json);
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


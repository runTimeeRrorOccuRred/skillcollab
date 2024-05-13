// To parse this JSON data, do
//
//     final folderListResponseModel = folderListResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/folder/folderData/models/folder_content_model.dart';

part 'folder_list_model.freezed.dart';
part 'folder_list_model.g.dart';

FolderListResponseModel folderListResponseModelFromJson(String str) => FolderListResponseModel.fromJson(json.decode(str));

String folderListResponseModelToJson(FolderListResponseModel data) => json.encode(data.toJson());

@freezed
class FolderListResponseModel with _$FolderListResponseModel {
    const factory FolderListResponseModel({
        @JsonKey(name: "code")
        int? code, 
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Datum>? data,
    }) = _FolderListResponseModel;

    factory FolderListResponseModel.fromJson(Map<String, dynamic> json) => _$FolderListResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
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
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

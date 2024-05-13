// To parse this JSON data, do
//
//     final createFolderRequestModel = createFolderRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/folder/folderAddContent/models/folder_add_content_model.dart';

part 'create_folder_model.freezed.dart';
part 'create_folder_model.g.dart';


//=======================================Request=============================================//

CreateFolderRequestModel createFolderRequestModelFromJson(String str) => CreateFolderRequestModel.fromJson(json.decode(str));

String createFolderRequestModelToJson(CreateFolderRequestModel data) => json.encode(data.toJson());

@freezed
class CreateFolderRequestModel with _$CreateFolderRequestModel {
    const factory CreateFolderRequestModel({
        @JsonKey(name: "name")
        String? name,
    }) = _CreateFolderRequestModel;

    factory CreateFolderRequestModel.fromJson(Map<String, dynamic> json) => _$CreateFolderRequestModelFromJson(json);
}

//==============================================Response========================================//


CreateFolderResponseModel createFolderResponseModelFromJson(String str) => CreateFolderResponseModel.fromJson(json.decode(str));

String createFolderResponseModelToJson(CreateFolderResponseModel data) => json.encode(data.toJson());

@freezed
class CreateFolderResponseModel with _$CreateFolderResponseModel {
    const factory CreateFolderResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _CreateFolderResponseModel;

    factory CreateFolderResponseModel.fromJson(Map<String, dynamic> json) => _$CreateFolderResponseModelFromJson(json);
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

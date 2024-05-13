// To parse this JSON data, do
//
//     final createTutorialRequestModel = createTutorialRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_tutorial_model.freezed.dart';
part 'create_tutorial_model.g.dart';

CreateTutorialRequestModel createTutorialRequestModelFromJson(String str) => CreateTutorialRequestModel.fromJson(json.decode(str));

String createTutorialRequestModelToJson(CreateTutorialRequestModel data) => json.encode(data.toJson());

@freezed
class CreateTutorialRequestModel with _$CreateTutorialRequestModel {
    const factory CreateTutorialRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "data")
        Data? data,
        @JsonKey(name: "gif")
        String? gif,
        @JsonKey(name: "privacy")
        String? privacy,
        @JsonKey(name: "bgColor")
        String? bgColor,
        @JsonKey(name: "videoUrl")
        String? videoUrl,
        @JsonKey(name: "tutorialImage")
        String? tutorialImage,
    }) = _CreateTutorialRequestModel;

    factory CreateTutorialRequestModel.fromJson(Map<String, dynamic> json) => _$CreateTutorialRequestModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "desc")
        String? desc,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}


// ===============================Response Model=====================//

CreateTutorialResponseModel createTutorialResponseModelFromJson(String str) => CreateTutorialResponseModel.fromJson(json.decode(str));

String createTutorialResponseModelToJson(CreateTutorialResponseModel data) => json.encode(data.toJson());

@freezed
class CreateTutorialResponseModel with _$CreateTutorialResponseModel {
    const factory CreateTutorialResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        CreateTutorialResponseModelData? data,
    }) = _CreateTutorialResponseModel;

    factory CreateTutorialResponseModel.fromJson(Map<String, dynamic> json) => _$CreateTutorialResponseModelFromJson(json);
}

@freezed
class CreateTutorialResponseModelData with _$CreateTutorialResponseModelData {
    const factory CreateTutorialResponseModelData({
        @JsonKey(name: "gif")
        String? gif,
        @JsonKey(name: "videoUrl")
        String? videoUrl,
        @JsonKey(name: "bgColor")
        String? bgColor,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "data")
        DataData? data,
        @JsonKey(name: "tutorialImage")
        String? tutorialImage,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _CreateTutorialResponseModelData;

    factory CreateTutorialResponseModelData.fromJson(Map<String, dynamic> json) => _$CreateTutorialResponseModelDataFromJson(json);
}

@freezed
class DataData with _$DataData {
    const factory DataData({
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "desc")
        String? desc,
    }) = _DataData;

    factory DataData.fromJson(Map<String, dynamic> json) => _$DataDataFromJson(json);
}

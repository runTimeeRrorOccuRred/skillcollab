// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_tutorial_model.freezed.dart';
part 'update_tutorial_model.g.dart';

//!======= REQUEST =======!//
UpdateTutorialRequestModel updateTutorialRequestModelFromJson(String str) => UpdateTutorialRequestModel.fromJson(json.decode(str));
String updateTutorialRequestModelToJson(UpdateTutorialRequestModel data) => json.encode(data.toJson());

@freezed
class UpdateTutorialRequestModel with _$UpdateTutorialRequestModel {
    const factory UpdateTutorialRequestModel({
        @JsonKey(name: "data")
        Data? data,
        String? videoUrl,
        @JsonKey(name: "tutorialImage")
        String? tutorialImage,
    }) = _UpdateTutorialRequestModel;

    factory UpdateTutorialRequestModel.fromJson(Map<String, dynamic> json) => _$UpdateTutorialRequestModelFromJson(json);
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



//!======= RESPONSE =======!//
UpdateTutorialResponseModel updateTutorialResponseModelFromJson(String str) => UpdateTutorialResponseModel.fromJson(json.decode(str));
String updateTutorialResponseModelToJson(UpdateTutorialResponseModel data) => json.encode(data.toJson());

@freezed
class UpdateTutorialResponseModel with _$UpdateTutorialResponseModel {
    const factory UpdateTutorialResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        UpdateTutorialResponseModelData? data,
    }) = _UpdateTutorialResponseModel;

    factory UpdateTutorialResponseModel.fromJson(Map<String, dynamic> json) => _$UpdateTutorialResponseModelFromJson(json);
}

@freezed
class UpdateTutorialResponseModelData with _$UpdateTutorialResponseModelData {
    const factory UpdateTutorialResponseModelData({
        @JsonKey(name: "data")
        DataData? data,
        @JsonKey(name: "gif")
        dynamic gif,
        @JsonKey(name: "videoUrl")
        dynamic videoUrl,
        @JsonKey(name: "bgColor")
        String? bgColor,
        @JsonKey(name: "privacy")
        String? privacy,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "tutorialImage")
        String? tutorialImage,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _UpdateTutorialResponseModelData;

    factory UpdateTutorialResponseModelData.fromJson(Map<String, dynamic> json) => _$UpdateTutorialResponseModelDataFromJson(json);
}

@freezed
class DataData with _$DataData {
    const factory DataData({
        @JsonKey(name: "title")
        String? title,
    }) = _DataData;

    factory DataData.fromJson(Map<String, dynamic> json) => _$DataDataFromJson(json);
}


// To parse this JSON data, do
//
//     final createQuestionRequestModel = createQuestionRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_question_model.freezed.dart';
part 'create_question_model.g.dart';

//Request Model

CreateQuestionRequestModel createQuestionRequestModelFromJson(String str) => CreateQuestionRequestModel.fromJson(json.decode(str));

String createQuestionRequestModelToJson(CreateQuestionRequestModel data) => json.encode(data.toJson());

@freezed
class CreateQuestionRequestModel with _$CreateQuestionRequestModel {
    const factory CreateQuestionRequestModel({
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
        @JsonKey(name: "questionImage")
        String? questionImage,
    }) = _CreateQuestionRequestModel;

    factory CreateQuestionRequestModel.fromJson(Map<String, dynamic> json) => _$CreateQuestionRequestModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "question")
        String? question,
        @JsonKey(name: "answer")
        String? answer,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

//Response Model

CreateQuestionResponseModel createQuestionResponseModelFromJson(String str) => CreateQuestionResponseModel.fromJson(json.decode(str));

String createQuestionResponseModelToJson(CreateQuestionResponseModel data) => json.encode(data.toJson());

@freezed
class CreateQuestionResponseModel with _$CreateQuestionResponseModel {
    const factory CreateQuestionResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        CreateQuestionResponseModelData? data,
    }) = _CreateQuestionResponseModel;

    factory CreateQuestionResponseModel.fromJson(Map<String, dynamic> json) => _$CreateQuestionResponseModelFromJson(json);
}

@freezed
class CreateQuestionResponseModelData with _$CreateQuestionResponseModelData {
    const factory CreateQuestionResponseModelData({
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
        @JsonKey(name: "questionImage")
        String? questionImage,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _CreateQuestionResponseModelData;

    factory CreateQuestionResponseModelData.fromJson(Map<String, dynamic> json) => _$CreateQuestionResponseModelDataFromJson(json);
}

@freezed
class DataData with _$DataData {
    const factory DataData({
        @JsonKey(name: "question")
        String? question,
        @JsonKey(name: "answer")
        String? answer,
    }) = _DataData;

    factory DataData.fromJson(Map<String, dynamic> json) => _$DataDataFromJson(json);
}

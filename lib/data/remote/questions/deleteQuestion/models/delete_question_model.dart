// To parse this JSON data, do
//
//     final deleteQuestionResponseModel = deleteQuestionResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_question_model.freezed.dart';
part 'delete_question_model.g.dart';

DeleteQuestionResponseModel deleteQuestionResponseModelFromJson(String str) => DeleteQuestionResponseModel.fromJson(json.decode(str));

String deleteQuestionResponseModelToJson(DeleteQuestionResponseModel data) => json.encode(data.toJson());

@freezed
class DeleteQuestionResponseModel with _$DeleteQuestionResponseModel {
    const factory DeleteQuestionResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        DeleteQuestionResponseModelData? data,
    }) = _DeleteQuestionResponseModel;

    factory DeleteQuestionResponseModel.fromJson(Map<String, dynamic> json) => _$DeleteQuestionResponseModelFromJson(json);
}

@freezed
class DeleteQuestionResponseModelData with _$DeleteQuestionResponseModelData {
    const factory DeleteQuestionResponseModelData({
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
        @JsonKey(name: "questionImage")
        String? questionImage,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _DeleteQuestionResponseModelData;

    factory DeleteQuestionResponseModelData.fromJson(Map<String, dynamic> json) => _$DeleteQuestionResponseModelDataFromJson(json);
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

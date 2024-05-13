// To parse this JSON data, do
//
//     final updateQuestionRequestModel = updateQuestionRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:skill_colab/data/remote/questions/createQuestions/models/create_question_model.dart';

part 'update_question_model.freezed.dart';
part 'update_question_model.g.dart';

//=====================================REQUEST===========================================//

UpdateQuestionRequestModel updateQuestionRequestModelFromJson(String str) => UpdateQuestionRequestModel.fromJson(json.decode(str));

String updateQuestionRequestModelToJson(UpdateQuestionRequestModel data) => json.encode(data.toJson());

@freezed
class UpdateQuestionRequestModel with _$UpdateQuestionRequestModel {
    const factory UpdateQuestionRequestModel({
        @JsonKey(name: "data")
        Data? data,
    }) = _UpdateQuestionRequestModel;

    factory UpdateQuestionRequestModel.fromJson(Map<String, dynamic> json) => _$UpdateQuestionRequestModelFromJson(json);
}

// @freezed
// class Data with _$Data {
//     const factory Data({
//         @JsonKey(name: "question")
//         String? question,
//         @JsonKey(name: "answer")
//         String? answer,
//     }) = _Data;

//     factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
// }

//=====================================RESPONSE===========================================//

UpdateQuestionResponseModel updateQuestionResponseModelFromJson(String str) => UpdateQuestionResponseModel.fromJson(json.decode(str));

String updateQuestionResponseModelToJson(UpdateQuestionResponseModel data) => json.encode(data.toJson());

@freezed
class UpdateQuestionResponseModel with _$UpdateQuestionResponseModel {
    const factory UpdateQuestionResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        UpdateQuestionResponseModelData? data,
    }) = _UpdateQuestionResponseModel;

    factory UpdateQuestionResponseModel.fromJson(Map<String, dynamic> json) => _$UpdateQuestionResponseModelFromJson(json);
}

@freezed
class UpdateQuestionResponseModelData with _$UpdateQuestionResponseModelData {
    const factory UpdateQuestionResponseModelData({
        @JsonKey(name: "data")
        DataData? data,
        @JsonKey(name: "gif")
        dynamic gif,
        @JsonKey(name: "videoUrl")
        dynamic videoUrl,
        @JsonKey(name: "bgColor")
        dynamic bgColor,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _UpdateQuestionResponseModelData;

    factory UpdateQuestionResponseModelData.fromJson(Map<String, dynamic> json) => _$UpdateQuestionResponseModelDataFromJson(json);
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

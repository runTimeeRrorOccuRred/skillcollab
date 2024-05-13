// To parse this JSON data, do
//
//     final reportRequestModel = reportRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_model.freezed.dart';
part 'report_model.g.dart';

ReportRequestModel reportRequestModelFromJson(String str) => ReportRequestModel.fromJson(json.decode(str));
String reportRequestModelToJson(ReportRequestModel data) => json.encode(data.toJson());

@freezed
class ReportRequestModel with _$ReportRequestModel {
    const factory ReportRequestModel({
        @JsonKey(name: "postId")
        String? postId,
        @JsonKey(name: "content")
        String? content,
        @JsonKey(name: "type")
        String? type,
    }) = _ReportRequestModel;

    factory ReportRequestModel.fromJson(Map<String, dynamic> json) => _$ReportRequestModelFromJson(json);
}




QuestionReportRequestModel questionReportRequestModelFromJson(String str) => QuestionReportRequestModel.fromJson(json.decode(str));
String questionReportRequestModelToJson(QuestionReportRequestModel data) => json.encode(data.toJson());

@freezed
class QuestionReportRequestModel with _$QuestionReportRequestModel {
    const factory QuestionReportRequestModel({
        @JsonKey(name: "questionId")
        String? questionId,
        @JsonKey(name: "content")
        String? content,
        @JsonKey(name: "type")
        String? type,
    }) = _QuestionReportRequestModel;

    factory QuestionReportRequestModel.fromJson(Map<String, dynamic> json) => _$QuestionReportRequestModelFromJson(json);
}




TutorialReportRequestModel tutorialReportRequestModelFromJson(String str) => TutorialReportRequestModel.fromJson(json.decode(str));
String tutorialReportRequestModelToJson(TutorialReportRequestModel data) => json.encode(data.toJson());

@freezed
class TutorialReportRequestModel with _$TutorialReportRequestModel {
    const factory TutorialReportRequestModel({
        @JsonKey(name: "tutorialId")
        String? tutorialId,
        @JsonKey(name: "content")
        String? content,
        @JsonKey(name: "type")
        String? type,
    }) = _TutorialReportRequestModel;

    factory TutorialReportRequestModel.fromJson(Map<String, dynamic> json) => _$TutorialReportRequestModelFromJson(json);
}




//-------------Response--------------------//
ReportResponseModel reportResponseModelFromJson(String str) => ReportResponseModel.fromJson(json.decode(str));
String reportResponseModelToJson(ReportResponseModel data) => json.encode(data.toJson());

@freezed
class ReportResponseModel with _$ReportResponseModel {
    const factory ReportResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _ReportResponseModel;

    factory ReportResponseModel.fromJson(Map<String, dynamic> json) => _$ReportResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "postId")
        dynamic postId,
        @JsonKey(name: "tutorialId")
        dynamic tutorialId,
        @JsonKey(name: "questionId")
        dynamic questionId,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "toUserId")
        String? toUserId,
        @JsonKey(name: "content")
        String? content,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "fromUserId")
        String? fromUserId,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

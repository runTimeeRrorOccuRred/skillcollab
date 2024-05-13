// To parse this JSON data, do
//
//     final addQuestionCommentRequestModel = addQuestionCommentRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_comment_model.freezed.dart';
part 'question_comment_model.g.dart';

AddQuestionCommentRequestModel addQuestionCommentRequestModelFromJson(String str) => AddQuestionCommentRequestModel.fromJson(json.decode(str));

String addQuestionCommentRequestModelToJson(AddQuestionCommentRequestModel data) => json.encode(data.toJson());

@freezed
class AddQuestionCommentRequestModel with _$AddQuestionCommentRequestModel {
    const factory AddQuestionCommentRequestModel({
        @JsonKey(name: "questionId")
        String? questionId,
        @JsonKey(name: "parentId")
        dynamic parentId,
        @JsonKey(name: "comment")
        String? comment,
        @JsonKey(name: "type")
        String? type,
    }) = _AddQuestionCommentRequestModel;

    factory AddQuestionCommentRequestModel.fromJson(Map<String, dynamic> json) => _$AddQuestionCommentRequestModelFromJson(json);
}

// ===========Response=====================//

AddQuestionCommentResponseModel addQuestionCommentResponseModelFromJson(String str) => AddQuestionCommentResponseModel.fromJson(json.decode(str));

String addQuestionCommentResponseModelToJson(AddQuestionCommentResponseModel data) => json.encode(data.toJson());

@freezed
class AddQuestionCommentResponseModel with _$AddQuestionCommentResponseModel {
    const factory AddQuestionCommentResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _AddQuestionCommentResponseModel;

    factory AddQuestionCommentResponseModel.fromJson(Map<String, dynamic> json) => _$AddQuestionCommentResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "postId")
        dynamic postId,
        @JsonKey(name: "tutorialId")
        dynamic tutorialId,
        @JsonKey(name: "questionId")
        String? questionId,
        @JsonKey(name: "parentId")
        dynamic parentId,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "comment")
        String? comment,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

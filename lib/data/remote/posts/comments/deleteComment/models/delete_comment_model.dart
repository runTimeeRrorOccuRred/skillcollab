// To parse this JSON data, do
//
//     final deleteReviewRequestModel = deleteReviewRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_comment_model.freezed.dart';
part 'delete_comment_model.g.dart';


// =============================== REQUEST ==================//

DeleteCommentRequestModel deleteCommentRequestModelFromJson(String str) => DeleteCommentRequestModel.fromJson(json.decode(str));
String deleteCommentRequestModelToJson(DeleteCommentRequestModel data) => json.encode(data.toJson());

@freezed
class DeleteCommentRequestModel with _$DeleteCommentRequestModel {
    const factory DeleteCommentRequestModel({
        @JsonKey(name: "postId")
        String? postId,
        @JsonKey(name: "type")
        String? type,
    }) = _DeleteCommentRequestModel;

    factory DeleteCommentRequestModel.fromJson(Map<String, dynamic> json) => _$DeleteCommentRequestModelFromJson(json);
}


DeleteCommentQuestionRequestModel deleteCommentQuestionRequestModelFromJson(String str) => DeleteCommentQuestionRequestModel.fromJson(json.decode(str));
String deleteCommentQuestionRequestModelToJson(DeleteCommentQuestionRequestModel data) => json.encode(data.toJson());

@freezed
class DeleteCommentQuestionRequestModel with _$DeleteCommentQuestionRequestModel {
    const factory DeleteCommentQuestionRequestModel({
        @JsonKey(name: "questionId")
        String? questionId,
        @JsonKey(name: "type")
        String? type,
    }) = _DeleteCommentQuestionRequestModel;

    factory DeleteCommentQuestionRequestModel.fromJson(Map<String, dynamic> json) => _$DeleteCommentQuestionRequestModelFromJson(json);
}



DeleteCommentTutorialRequestModel deleteCommentTutorialRequestModelFromJson(String str) => DeleteCommentTutorialRequestModel.fromJson(json.decode(str));
String deleteCommentTutorialRequestModelToJson(DeleteCommentTutorialRequestModel data) => json.encode(data.toJson());

@freezed
class DeleteCommentTutorialRequestModel with _$DeleteCommentTutorialRequestModel {
    const factory DeleteCommentTutorialRequestModel({
        @JsonKey(name: "tutorialId")
        String? tutorialId,
        @JsonKey(name: "type")
        String? type,
    }) = _DeleteCommentTutorialRequestModel;

    factory DeleteCommentTutorialRequestModel.fromJson(Map<String, dynamic> json) => _$DeleteCommentTutorialRequestModelFromJson(json);
}



// ===========================RESPONSE======================= //

DeleteCommentResponseModel deleteCommentResponseModelFromJson(String str) => DeleteCommentResponseModel.fromJson(json.decode(str));

String deleteCommentResponseModelToJson(DeleteCommentResponseModel data) => json.encode(data.toJson());

@freezed
class DeleteCommentResponseModel with _$DeleteCommentResponseModel {
    const factory DeleteCommentResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _DeleteCommentResponseModel;

    factory DeleteCommentResponseModel.fromJson(Map<String, dynamic> json) => _$DeleteCommentResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "postId")
        String? postId,
        @JsonKey(name: "tutorialId")
        dynamic tutorialId,
        @JsonKey(name: "questionId")
        dynamic questionId,
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
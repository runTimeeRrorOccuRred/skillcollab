// To parse this JSON data, do
//
//     final editCommentRequestModel = editCommentRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_comment_model.freezed.dart';
part 'edit_comment_model.g.dart';

EditCommentRequestModel editCommentRequestModelFromJson(String str) => EditCommentRequestModel.fromJson(json.decode(str));

String editCommentRequestModelToJson(EditCommentRequestModel data) => json.encode(data.toJson());

@freezed
class EditCommentRequestModel with _$EditCommentRequestModel {
    const factory EditCommentRequestModel({
        @JsonKey(name: "comment")
        String? comment,
        @JsonKey(name: "type")
        String? type,
    }) = _EditCommentRequestModel;

    factory EditCommentRequestModel.fromJson(Map<String, dynamic> json) => _$EditCommentRequestModelFromJson(json);
}


EditCommentResponseModel editCommentResponseModelFromJson(String str) => EditCommentResponseModel.fromJson(json.decode(str));

String editCommentResponseModelToJson(EditCommentResponseModel data) => json.encode(data.toJson());

@freezed
class EditCommentResponseModel with _$EditCommentResponseModel {
    const factory EditCommentResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _EditCommentResponseModel;

    factory EditCommentResponseModel.fromJson(Map<String, dynamic> json) => _$EditCommentResponseModelFromJson(json);
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




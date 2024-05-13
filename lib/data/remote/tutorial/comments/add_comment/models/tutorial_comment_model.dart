// To parse this JSON data, do
//
//     final tutorialAddCommentRequestModel = tutorialAddCommentRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tutorial_comment_model.freezed.dart';
part 'tutorial_comment_model.g.dart';

TutorialAddCommentRequestModel tutorialAddCommentRequestModelFromJson(String str) => TutorialAddCommentRequestModel.fromJson(json.decode(str));

String tutorialAddCommentRequestModelToJson(TutorialAddCommentRequestModel data) => json.encode(data.toJson());

@freezed
class TutorialAddCommentRequestModel with _$TutorialAddCommentRequestModel {
    const factory TutorialAddCommentRequestModel({
        @JsonKey(name: "tutorialId")
        String? tutorialId,
        @JsonKey(name: "parentId")
        dynamic parentId,
        @JsonKey(name: "comment")
        String? comment,
        @JsonKey(name: "type")
        String? type,
    }) = _TutorialAddCommentRequestModel;

    factory TutorialAddCommentRequestModel.fromJson(Map<String, dynamic> json) => _$TutorialAddCommentRequestModelFromJson(json);
}


//====================Response===================//

TutorialAddCommentResponseModel tutorialAddCommentResponseModelFromJson(String str) => TutorialAddCommentResponseModel.fromJson(json.decode(str));

String tutorialAddCommentResponseModelToJson(TutorialAddCommentResponseModel data) => json.encode(data.toJson());

@freezed
class TutorialAddCommentResponseModel with _$TutorialAddCommentResponseModel {
    const factory TutorialAddCommentResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _TutorialAddCommentResponseModel;

    factory TutorialAddCommentResponseModel.fromJson(Map<String, dynamic> json) => _$TutorialAddCommentResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "postId")
        dynamic postId,
        @JsonKey(name: "tutorialId")
        String? tutorialId,
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

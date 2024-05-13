// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_comment_likedislike_model.freezed.dart';
part 'question_comment_likedislike_model.g.dart';

///========== REQUEST ==========///
QuestionCommentLikeDislikeRequestModel questionCommentLikeDislikeRequestModelFromJson(String str) => QuestionCommentLikeDislikeRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String questionCommentLikeDislikeRequestModelToJson(QuestionCommentLikeDislikeRequestModel data) => json.encode(data.toJson());

@freezed
class QuestionCommentLikeDislikeRequestModel with _$QuestionCommentLikeDislikeRequestModel {
    const factory QuestionCommentLikeDislikeRequestModel({
        @JsonKey(name: "isLike")
        bool? isLike,
        @JsonKey(name: "isDislike")
        bool? isDislike,
        @JsonKey(name: "commentId")
        String? commentId,
        @JsonKey(name: "type")
        String? type,
    }) = _QuestionCommentLikeDislikeRequestModel;

    factory QuestionCommentLikeDislikeRequestModel.fromJson(Map<String, dynamic> json) => _$QuestionCommentLikeDislikeRequestModelFromJson(json);
}



///========== RESPONSE ==========///
QuestionCommentLikeDislikeResponseModel questionCommentLikeDislikeResponseModelFromJson(String str) => QuestionCommentLikeDislikeResponseModel.fromJson(json.decode(str));
String questionCommentLikeDislikeResponseModelToJson(QuestionCommentLikeDislikeResponseModel data) => json.encode(data.toJson());

@freezed
class QuestionCommentLikeDislikeResponseModel with _$QuestionCommentLikeDislikeResponseModel {
    const factory QuestionCommentLikeDislikeResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _QuestionCommentLikeDislikeResponseModel;

    factory QuestionCommentLikeDislikeResponseModel.fromJson(Map<String, dynamic> json) => _$QuestionCommentLikeDislikeResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "postId")
        dynamic postId,
        @JsonKey(name: "tutorialId")
        dynamic tutorialId,
        @JsonKey(name: "commentId")
        String? commentId,
        @JsonKey(name: "questionId")
        dynamic questionId,
        @JsonKey(name: "isLike")
        bool? isLike,
        @JsonKey(name: "isDislike")
        bool? isDislike,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

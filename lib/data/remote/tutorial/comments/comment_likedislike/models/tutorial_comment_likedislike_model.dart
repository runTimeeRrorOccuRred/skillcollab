// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tutorial_comment_likedislike_model.freezed.dart';
part 'tutorial_comment_likedislike_model.g.dart';


///========== REQUEST ==========///
TutorialCommentLikeDislikeRequestModel tutorialCommentLikeDislikeRequestModelFromJson(String str) => TutorialCommentLikeDislikeRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String tutorialCommentLikeDislikeRequestModelToJson(TutorialCommentLikeDislikeRequestModel data) => json.encode(data.toJson());

@freezed
class TutorialCommentLikeDislikeRequestModel with _$TutorialCommentLikeDislikeRequestModel {
    const factory TutorialCommentLikeDislikeRequestModel({
        @JsonKey(name: "isLike")
        bool? isLike,
        @JsonKey(name: "isDislike")
        bool? isDislike,
        @JsonKey(name: "commentId")
        String? commentId,
        @JsonKey(name: "type")
        String? type,
    }) = _TutorialCommentLikeDislikeRequestModel;

    factory TutorialCommentLikeDislikeRequestModel.fromJson(Map<String, dynamic> json) => _$TutorialCommentLikeDislikeRequestModelFromJson(json);
}



///========== RESPONSE ==========///
TutorialCommentLikeDislikeResponseModel tutorialCommentLikeDislikeResponseModelFromJson(String str) => TutorialCommentLikeDislikeResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String tutorialCommentLikeDislikeResponseModelToJson(TutorialCommentLikeDislikeResponseModel data) => json.encode(data.toJson());

@freezed
class TutorialCommentLikeDislikeResponseModel with _$TutorialCommentLikeDislikeResponseModel {
    const factory TutorialCommentLikeDislikeResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _TutorialCommentLikeDislikeResponseModel;

    factory TutorialCommentLikeDislikeResponseModel.fromJson(Map<String, dynamic> json) => _$TutorialCommentLikeDislikeResponseModelFromJson(json);
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

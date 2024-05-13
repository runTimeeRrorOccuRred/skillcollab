// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_dislike_comment_model.freezed.dart';
part 'like_dislike_comment_model.g.dart';


///============ REQUEST ============///
LikeDislikeCommentRequestModel likeDislikeCommentRequestModelFromJson(String str) => LikeDislikeCommentRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String likeDislikeCommentRequestModelToJson(LikeDislikeCommentRequestModel data) => json.encode(data.toJson());

@freezed
class LikeDislikeCommentRequestModel with _$LikeDislikeCommentRequestModel {
    const factory LikeDislikeCommentRequestModel({
        @JsonKey(name: "isLike")
        bool? isLike,
        @JsonKey(name: "isDislike")
        bool? isDislike,
        @JsonKey(name: "commentId")
        String? commentId,
        @JsonKey(name: "type")
        String? type,
    }) = _LikeDislikeCommentRequestModel;

    factory LikeDislikeCommentRequestModel.fromJson(Map<String, dynamic> json) => _$LikeDislikeCommentRequestModelFromJson(json);
}



///============ RESPONSE ============///
LikeDislikeCommentResponseModel likeDislikeCommentResponseModelFromJson(String str) => LikeDislikeCommentResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String likeDislikeCommentResponseModelToJson(LikeDislikeCommentResponseModel data) => json.encode(data.toJson());

@freezed
class LikeDislikeCommentResponseModel with _$LikeDislikeCommentResponseModel {
    const factory LikeDislikeCommentResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _LikeDislikeCommentResponseModel;

    factory LikeDislikeCommentResponseModel.fromJson(Map<String, dynamic> json) => _$LikeDislikeCommentResponseModelFromJson(json);
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

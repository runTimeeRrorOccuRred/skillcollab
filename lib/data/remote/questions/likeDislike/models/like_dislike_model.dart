// To parse this JSON data, do
//
//     final likeDislikeRequestModel = likeDislikeRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_dislike_model.freezed.dart';
part 'like_dislike_model.g.dart';

LikeDislikeRequestModel likeDislikeRequestModelFromJson(String str) =>
    LikeDislikeRequestModel.fromJson(json.decode(str));

String likeDislikeRequestModelToJson(LikeDislikeRequestModel data) =>
    json.encode(data.toJson());

@freezed
class LikeDislikeRequestModel with _$LikeDislikeRequestModel {
  const factory LikeDislikeRequestModel({
    @JsonKey(name: "isLike") bool? isLike,
    @JsonKey(name: "isDislike") bool? isDislike,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "questionId") String? questionId,
  }) = _LikeDislikeRequestModel;

  factory LikeDislikeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LikeDislikeRequestModelFromJson(json);
}

LikeDislikeResponseModel likeDislikeResponseModelFromJson(String str) =>
    LikeDislikeResponseModel.fromJson(json.decode(str));

String likeDislikeResponseModelToJson(LikeDislikeResponseModel data) =>
    json.encode(data.toJson());

@freezed
class LikeDislikeResponseModel with _$LikeDislikeResponseModel {
  const factory LikeDislikeResponseModel({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _LikeDislikeResponseModel;

  factory LikeDislikeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LikeDislikeResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? postId,
    String? tutorialId,
    String? questionId,
    bool? isLike,
    bool? isDislike,
    @JsonKey(name: "_id") String? id,
    String? userId,
    String? type,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

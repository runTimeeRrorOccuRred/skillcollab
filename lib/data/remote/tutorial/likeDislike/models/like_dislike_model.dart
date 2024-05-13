// ignore_for_file: invalid_annotation_target, directives_ordering

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'like_dislike_model.freezed.dart';
part 'like_dislike_model.g.dart';

LikeDislikeTutorialRequestModel likeDislikeTutorialRequestModelFromJson(
        String str,) =>
    LikeDislikeTutorialRequestModel.fromJson(json.decode(str));

String likeDislikeTutorialRequestModelToJson(
        LikeDislikeTutorialRequestModel data,) =>
    json.encode(data.toJson());

@freezed
class LikeDislikeTutorialRequestModel with _$LikeDislikeTutorialRequestModel {
  const factory LikeDislikeTutorialRequestModel({
    bool? isLike,
    bool? isDislike,
    String? type,
    String? tutorialId,
  }) = _LikeDislikeTutorialRequestModel;

  factory LikeDislikeTutorialRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LikeDislikeTutorialRequestModelFromJson(json);
}

LikeDislikeTutorialResponseModel likeDislikeTutorialResponseModelFromJson(
        String str,) =>
    LikeDislikeTutorialResponseModel.fromJson(json.decode(str));

String likeDislikeTutorialResponseModelToJson(
        LikeDislikeTutorialResponseModel data,) =>
    json.encode(data.toJson());

@freezed
class LikeDislikeTutorialResponseModel with _$LikeDislikeTutorialResponseModel {
  const factory LikeDislikeTutorialResponseModel({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _LikeDislikeTutorialResponseModel;

  factory LikeDislikeTutorialResponseModel.fromJson(
          Map<String, dynamic> json,) =>
      _$LikeDislikeTutorialResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    dynamic postId,
    String? tutorialId,
    dynamic questionId,
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

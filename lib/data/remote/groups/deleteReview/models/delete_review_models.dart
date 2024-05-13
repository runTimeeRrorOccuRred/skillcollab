// To parse this JSON data, do
//
//     final deleteReviewResponseModel = deleteReviewResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_review_models.freezed.dart';
part 'delete_review_models.g.dart';

DeleteReviewResponseModel deleteReviewResponseModelFromJson(String str) => DeleteReviewResponseModel.fromJson(json.decode(str));

String deleteReviewResponseModelToJson(DeleteReviewResponseModel data) => json.encode(data.toJson());

@freezed
class DeleteReviewResponseModel with _$DeleteReviewResponseModel {
    const factory DeleteReviewResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _DeleteReviewResponseModel;

    factory DeleteReviewResponseModel.fromJson(Map<String, dynamic> json) => _$DeleteReviewResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "review")
        String? review,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "rating")
        int? rating,
        @JsonKey(name: "isAnonymous")
        bool? isAnonymous,
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

//========================= REQUEST ==================================//

DeleteReviewRequestModel deleteReviewRequestModelFromJson(String str) => DeleteReviewRequestModel.fromJson(json.decode(str));

String deleteReviewRequestModelToJson(DeleteReviewRequestModel data) => json.encode(data.toJson());

@freezed
class DeleteReviewRequestModel with _$DeleteReviewRequestModel {
    const factory DeleteReviewRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
    }) = _DeleteReviewRequestModel;

    factory DeleteReviewRequestModel.fromJson(Map<String, dynamic> json) => _$DeleteReviewRequestModelFromJson(json);
}


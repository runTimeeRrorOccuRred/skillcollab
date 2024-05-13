// To parse this JSON data, do
//
//     final deletePostByIdResponseModel = deletePostByIdResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/group_subscribe_model.dart';

part 'delete_post_model.freezed.dart';
part 'delete_post_model.g.dart';

DeletePostByIdResponseModel deletePostByIdResponseModelFromJson(String str) => DeletePostByIdResponseModel.fromJson(json.decode(str));

String deletePostByIdResponseModelToJson(DeletePostByIdResponseModel data) => json.encode(data.toJson());

@freezed
class DeletePostByIdResponseModel with _$DeletePostByIdResponseModel {
    const factory DeletePostByIdResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _DeletePostByIdResponseModel;

    factory DeletePostByIdResponseModel.fromJson(Map<String, dynamic> json) => _$DeletePostByIdResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "postImage")
        String? postImage,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "subscribers")
        List<Subscriber>? subscribers,
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "slug")
        String? slug,
        @JsonKey(name: "isActive")
        bool? isActive,
        @JsonKey(name: "gif")
        String? gif,
        @JsonKey(name: "videoUrl")
        String? videoUrl,
        @JsonKey(name: "bgColor")
        String? bgColor,
        @JsonKey(name: "privacy")
        String? privacy,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

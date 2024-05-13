// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'create_post_model.freezed.dart';
part 'create_post_model.g.dart';


///================= REQUEST =================///
CreatePostRequestModel createPostRequestModelFromJson(String str) => CreatePostRequestModel.fromJson(json.decode(str));
String createPostRequestModelToJson(CreatePostRequestModel data) => json.encode(data.toJson());

@freezed
class CreatePostRequestModel with _$CreatePostRequestModel {
    const factory CreatePostRequestModel({
        @JsonKey(name: "postImage")
        String? postImage,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "isActive")
        bool? isActive,
        @JsonKey(name: "gif")
        String? gif,
        @JsonKey(name: "privacy")
        String? privacy,
        @JsonKey(name: "bgColor")
        String? bgColor,
        @JsonKey(name: "videoUrl")
        String? videoUrl,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        String? checkIn,
        String? checkInImage,
    }) = _CreatePostRequestModel;

    factory CreatePostRequestModel.fromJson(Map<String, dynamic> json) => _$CreatePostRequestModelFromJson(json);
}


CreateUserPostRequestModel createUserPostRequestModelFromJson(String str) => CreateUserPostRequestModel.fromJson(json.decode(str));

String createUserPostRequestModelToJson(CreateUserPostRequestModel data) => json.encode(data.toJson());

@freezed
class CreateUserPostRequestModel with _$CreateUserPostRequestModel {
    const factory CreateUserPostRequestModel({
        @JsonKey(name: "postImage")
        String? postImage,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "isActive")
        bool? isActive,
        @JsonKey(name: "gif")
        String? gif,
        @JsonKey(name: "bgColor")
        String? bgColor,
        @JsonKey(name: "privacy")
        String? privacy,
        @JsonKey(name: "videoUrl")
        String? videoUrl,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        String? checkIn,
        String? checkInImage,
    }) = _CreateUserPostRequestModel;

    factory CreateUserPostRequestModel.fromJson(Map<String, dynamic> json) => _$CreateUserPostRequestModelFromJson(json);
}



///================= RESPONSE =================///
CreatePostResponseModel createPostResponseModelFromJson(String str) => CreatePostResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String createPostResponseModelToJson(CreatePostResponseModel data) => json.encode(data.toJson());

@freezed
class CreatePostResponseModel with _$CreatePostResponseModel {
    const factory CreatePostResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _CreatePostResponseModel;

    factory CreatePostResponseModel.fromJson(Map<String, dynamic> json) => _$CreatePostResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
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
        @JsonKey(name: "postImage")
        String? postImage,
        @JsonKey(name: "slug")
        String? slug,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        String? checkIn,
        String? checkInImage,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

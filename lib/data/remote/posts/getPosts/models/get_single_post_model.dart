// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'get_single_post_model.freezed.dart';
part 'get_single_post_model.g.dart';

GetSinglePostResponseModel getSinglePostResponseModelFromJson(String str) => GetSinglePostResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getSinglePostResponseModelToJson(GetSinglePostResponseModel data) => json.encode(data.toJson());

@freezed
class GetSinglePostResponseModel with _$GetSinglePostResponseModel {
    const factory GetSinglePostResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GetSinglePostResponseModel;

    factory GetSinglePostResponseModel.fromJson(Map<String, dynamic> json) => _$GetSinglePostResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "postImage")
        String? postImage,
        @JsonKey(name: "slug")
        String? slug,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "checkIn")
        dynamic checkIn,
        @JsonKey(name: "checkInImage")
        dynamic checkInImage,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "groupId")
        dynamic groupId,
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
        UserId? userId,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "totalLikeDislike")
        int? likeCounts,
        @JsonKey(name: "totalDislike")
        int? dislikeCounts,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "userLikeDislike")
        UserLikeDislike? userLikeDislike,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class UserId with _$UserId {
    const factory UserId({
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "productId")
        dynamic productId,
        @JsonKey(name: "deviceToken")
        List<String?>? deviceToken,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "firstName")
        String? firstName,
        @JsonKey(name: "lastName")
        String? lastName,
        @JsonKey(name: "userName")
        String? userName,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "phone")
        String? phone,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "otp")
        dynamic otp,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "otpExpiry")
        dynamic otpExpiry,
        @JsonKey(name: "followers")
        List<dynamic>? followers,
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}

@freezed
class UserLikeDislike with _$UserLikeDislike {
    const factory UserLikeDislike({
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
    }) = _UserLikeDislike;

    factory UserLikeDislike.fromJson(Map<String, dynamic> json) => _$UserLikeDislikeFromJson(json);
}

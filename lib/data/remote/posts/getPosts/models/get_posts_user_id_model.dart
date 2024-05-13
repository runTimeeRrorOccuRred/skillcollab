// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';

part 'get_posts_user_id_model.freezed.dart';
part 'get_posts_user_id_model.g.dart';

///========= REQUEST =========///
GetPostsByUserIdRequestModel getPostsByUserIdRequestModelFromJson(String str) => GetPostsByUserIdRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getPostsByUserIdRequestModelToJson(GetPostsByUserIdRequestModel data) => json.encode(data.toJson());

@freezed
class GetPostsByUserIdRequestModel with _$GetPostsByUserIdRequestModel {
    const factory GetPostsByUserIdRequestModel({
        @JsonKey(name: "searchKey")
        String? searchKey,
        @JsonKey(name: "interests")
        String? interests,
        @JsonKey(name: "timeFilter")
        String? timeFilter,
        @JsonKey(name: "privacy")
        String? privacy,
    }) = _GetPostsByUserIdRequestModel;

    factory GetPostsByUserIdRequestModel.fromJson(Map<String, dynamic> json) => _$GetPostsByUserIdRequestModelFromJson(json);
}


///========= RESPONSE =========///
GetPostsByUserIdResponseModel getPostsByUserIdResponseModelFromJson(String str) => GetPostsByUserIdResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getPostsByUserIdResponseModelToJson(GetPostsByUserIdResponseModel data) => json.encode(data.toJson());

@freezed
class GetPostsByUserIdResponseModel with _$GetPostsByUserIdResponseModel {
    const factory GetPostsByUserIdResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Datum>? data,
    }) = _GetPostsByUserIdResponseModel;

    factory GetPostsByUserIdResponseModel.fromJson(Map<String, dynamic> json) => _$GetPostsByUserIdResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: "postImage")
        String? postImage,
        @JsonKey(name: "slug")
        String? slug,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "checkIn")
        String? checkIn,
        @JsonKey(name: "checkInImage")
        String? checkInImage,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "isActive")
        bool? isActive,
        @JsonKey(name: "gif")
        String? gif,
        @JsonKey(name: "likeDislike")
        LikeDislike? likeDislike,
        @JsonKey(name: "videoUrl")
        String? videoUrl,
        @JsonKey(name: "bgColor")
        String? bgColor,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "privacy")
        String? privacy,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "interests")
        List<Interest?>? interests,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "likeCounts")
        int? likeCounts,
        @JsonKey(name: "disLikeCounts")
        int? dislikeCounts,
        @JsonKey(name: "commentCounts")
        int? commentCounts,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class UserId with _$UserId {
    const factory UserId({
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
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
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "password")
        String? password,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "followers")
        List<Follower>? followers,
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
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}

@freezed
class Follower with _$Follower {
    const factory Follower({
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "userId")
        String? userId,
    }) = _Follower;

    factory Follower.fromJson(Map<String, dynamic> json) => _$FollowerFromJson(json);
}
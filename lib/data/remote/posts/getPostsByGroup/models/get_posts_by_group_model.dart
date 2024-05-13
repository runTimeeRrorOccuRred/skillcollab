// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/posts/getPosts/models/get_posts_user_id_model.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';

part 'get_posts_by_group_model.freezed.dart';
part 'get_posts_by_group_model.g.dart';

///============ REQUEST ============///
GetPostsByGroupRequestModel getPostsByGroupRequestModelFromJson(String str) => GetPostsByGroupRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getPostsByGroupRequestModelToJson(GetPostsByGroupRequestModel data) => json.encode(data.toJson());

@freezed
class GetPostsByGroupRequestModel with _$GetPostsByGroupRequestModel {
    const factory GetPostsByGroupRequestModel({
        String? searchKey,
        String? timeFilter,
    }) = _GetPostsByGroupRequestModel;

    factory GetPostsByGroupRequestModel.fromJson(Map<String, dynamic> json) => _$GetPostsByGroupRequestModelFromJson(json);
}


///============ RESPONSE ============///
GetPostsByGroupModel getPostsByGroupModelFromJson(String str) => GetPostsByGroupModel.fromJson(json.decode(str));

String getPostsByGroupModelToJson(GetPostsByGroupModel data) => json.encode(data.toJson());

@freezed
class GetPostsByGroupModel with _$GetPostsByGroupModel {
    const factory GetPostsByGroupModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Post>? data,
    }) = _GetPostsByGroupModel;

    factory GetPostsByGroupModel.fromJson(Map<String, dynamic> json) => _$GetPostsByGroupModelFromJson(json);
}

@freezed
class Post with _$Post {
    const factory Post({
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
        @JsonKey(name: "postImage")
        String? postImage,
        @JsonKey(name: "slug")
        String? slug,
        @JsonKey(name: "checkIn")
        String? checkIn,
        @JsonKey(name: "checkInImage")
        String? checkInImage,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "commentCounts")
        int? commentCounts,
        @JsonKey(name: "likeCounts")
        int? likeCounts,
        @JsonKey(name: "disLikeCounts")
        int? dislikeCounts,
        @JsonKey(name: "likeDislike")
        LikeDislike? likeDislike,
        @JsonKey(name: "follower")
        int? follower,
        @JsonKey(name: "groupData")
        GroupData? groupData,
        @JsonKey(name: "followers")
        List<Follower>? followers,
    }) = _Post;

    factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class UserId with _$UserId {
    const factory UserId({
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "productId")
        dynamic productId,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "firstName")
        String? firstName,
        @JsonKey(name: "lastName")
        String? lastName,
        @JsonKey(name: "userName")
        String? userName,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "phone")
        String? phone,
        @JsonKey(name: "password")
        String? password,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "otp")
        dynamic otp,
        @JsonKey(name: "otpExpiry")
        dynamic otpExpiry,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}

// To parse this JSON data, do
//
//     final explorePublicPostResponseModel = explorePublicPostResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/explore/models/explore_all_model.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';

part 'explore_public_post_model.freezed.dart';
part 'explore_public_post_model.g.dart';

ExplorePublicPostResponseModel explorePublicPostResponseModelFromJson(String str) => ExplorePublicPostResponseModel.fromJson(json.decode(str));

String explorePublicPostResponseModelToJson(ExplorePublicPostResponseModel data) => json.encode(data.toJson());

@freezed
class ExplorePublicPostResponseModel with _$ExplorePublicPostResponseModel {
    const factory ExplorePublicPostResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<PostDatum>? data,
    }) = _ExplorePublicPostResponseModel;

    factory ExplorePublicPostResponseModel.fromJson(Map<String, dynamic> json) => _$ExplorePublicPostResponseModelFromJson(json);
}

@freezed
class PostDatum with _$PostDatum {
    const factory PostDatum({
        @JsonKey(name: "_id")
        String? id,
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
        GroupId? groupId,
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
        @JsonKey(name: "hide")
        List<dynamic>? hide,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        dynamic banReason,
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "comments")
        List<ExploreComment>? comments,
        @JsonKey(name: "commentCounts")
        int? commentCounts,
        @JsonKey(name: "likeDislike")
        LikeDislike? likeDislike,
        @JsonKey(name: "isFollowing")
        bool? isFollowing,
        @JsonKey(name: "averageRating")
        double? averageRating,
        @JsonKey(name: "rating")
        int? rating,
        @JsonKey(name: "likeCounts")
        int? likeCounts,
        @JsonKey(name: "disLikeCounts")
        int? dislikeCounts,
    }) = _PostDatum;

    factory PostDatum.fromJson(Map<String, dynamic> json) => _$PostDatumFromJson(json);
}

@freezed
class UserId with _$UserId {
    const factory UserId({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "isKyc")
        bool? isKyc,
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "productId")
        String? productId,
        @JsonKey(name: "deviceToken")
        List<String?>? deviceToken,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        dynamic banReason,
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
        @JsonKey(name: "password")
        String? password,
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
        @JsonKey(name: "customerId")
        String? customerId,
        @JsonKey(name: "otp")
        dynamic otp,
        @JsonKey(name: "otpExpiry")
        dynamic otpExpiry,
        @JsonKey(name: "accountId")
        String? accountId,
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}

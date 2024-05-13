// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';

// import 'package:skill_colab/data/remote/withoutLogin/getAllPeopleWithoutLogin/models/get_all_people_without_login_model.dart';

part 'get_all_people_with_login_model.freezed.dart';
part 'get_all_people_with_login_model.g.dart';


//========== REQUEST ==========//
GetAllPeopleWithLoginRequestModel getAllPeopleWithLoginRequestModelFromJson(String str) => GetAllPeopleWithLoginRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getAllPeopleWithLoginRequestModelToJson(GetAllPeopleWithLoginRequestModel data) => json.encode(data.toJson());

@freezed
class GetAllPeopleWithLoginRequestModel with _$GetAllPeopleWithLoginRequestModel {
    const factory GetAllPeopleWithLoginRequestModel({
        String? searchKey,
        String? interests,
        String? timeFilter,
        @JsonKey(name: "feedFilter")
        String? feedFilter,
    }) = _GetAllPeopleWithLoginRequestModel;

    factory GetAllPeopleWithLoginRequestModel.fromJson(Map<String, dynamic> json) => _$GetAllPeopleWithLoginRequestModelFromJson(json);
}


//========== RESPONSE ==========//
GetAllPeopleWithLoginResponseModel getAllPeopleWithLoginResponseModelFromJson(String str) => GetAllPeopleWithLoginResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getAllPeopleWithLoginResponseModelToJson(GetAllPeopleWithLoginResponseModel data) => json.encode(data.toJson());

@freezed
class GetAllPeopleWithLoginResponseModel with _$GetAllPeopleWithLoginResponseModel {
    const factory GetAllPeopleWithLoginResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<DashboardPeopleData>? data,
    }) = _GetAllPeopleWithLoginResponseModel;

    factory GetAllPeopleWithLoginResponseModel.fromJson(Map<String, dynamic> json) => _$GetAllPeopleWithLoginResponseModelFromJson(json);
}

@freezed
class DashboardPeopleData with _$DashboardPeopleData {
    const factory DashboardPeopleData({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "postImage")
        String? postImage,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "slug")
        String? slug,
        @JsonKey(name: "checkIn")
        String? checkIn,
        @JsonKey(name: "checkInImage")
        String? checkInImage,
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
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "interests")
        List<Interest?>? interests,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "comments")
        List<Comment?>? comments,
        @JsonKey(name: "combinedCount")
        int? combinedCount,
        @JsonKey(name: "commentCounts")
        int? commentCounts,
        @JsonKey(name: "likeDislike")
        LikeDislike? likeDislike,
        @JsonKey(name: "likeCounts")
        int? likeCounts,
        @JsonKey(name: "disLikeCounts")
        int? dislikeCounts,
        @JsonKey(name: "isFollowing")
        bool? isFollowing,
    }) = _DashboardPeopleData;

    factory DashboardPeopleData.fromJson(Map<String, dynamic> json) => _$DashboardPeopleDataFromJson(json);
}

@freezed
class Comment with _$Comment {
    const factory Comment({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "postId")
        String? postId,
        @JsonKey(name: "tutorialId")
        dynamic tutorialId,
        @JsonKey(name: "questionId")
        dynamic questionId,
        @JsonKey(name: "parentId")
        dynamic parentId,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "comment")
        String? comment,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Comment;

    factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
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
        @JsonKey(name: "productId")
        dynamic productId,
        @JsonKey(name: "deviceToken")
        List<String?>? deviceToken,
        @JsonKey(name: "firstName")
        String? firstName,
        @JsonKey(name: "lastName")
        String? lastName,
        @JsonKey(name: "userName")
        String? userName,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "phone")
        String? phone,
        @JsonKey(name: "password")
        String? password,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "interests")
        List<Interest?>? interests,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "followers")
        List<Follower?>? followers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "otp")
        dynamic otp,
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

// @freezed
// class PeopleLikeDislike with _$PeopleLikeDislike {
//     const factory PeopleLikeDislike({
//         @JsonKey(name: "postId")
//         String? postId,
//         @JsonKey(name: "tutorialId")
//         dynamic tutorialId,
//         @JsonKey(name: "questionId")
//         dynamic questionId,
//         @JsonKey(name: "isLike")
//         bool? isLike,
//         @JsonKey(name: "isDislike")
//         bool? isDislike,
//         @JsonKey(name: "_id")
//         String? id,
//         @JsonKey(name: "userId")
//         String? userId,
//         @JsonKey(name: "type")
//         String? type,
//         @JsonKey(name: "createdAt")
//         DateTime? createdAt,
//         @JsonKey(name: "updatedAt")
//         DateTime? updatedAt,
//     }) = _PeopleLikeDislike;

//     factory PeopleLikeDislike.fromJson(Map<String, dynamic> json) => _$LikeDislikeFromJson(json);
// }

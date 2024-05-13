// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';

// import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';

// import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';

part 'get_all_groups_and_people_with_login_model.freezed.dart';
part 'get_all_groups_and_people_with_login_model.g.dart';

///======== REQUEST ========///
GetAllGroupsAndPeopleWithLoginRequestModel getAllGroupsAndPeopleWithLoginRequestModelFromJson(String str) => GetAllGroupsAndPeopleWithLoginRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getAllGroupsAndPeopleWithLoginRequestModelToJson(GetAllGroupsAndPeopleWithLoginRequestModel data) => json.encode(data.toJson());

@freezed
class GetAllGroupsAndPeopleWithLoginRequestModel with _$GetAllGroupsAndPeopleWithLoginRequestModel {
    const factory GetAllGroupsAndPeopleWithLoginRequestModel({
        @JsonKey(name: "searchKey")
        String? searchKey,
        @JsonKey(name: "interests")
        String? interests,
        @JsonKey(name: "timeFilter")
        String? timeFilter,
        @JsonKey(name: "feedFilter")
        String? feedFilter,
    }) = _GetAllGroupsAndPeopleWithLoginRequestModel;

    factory GetAllGroupsAndPeopleWithLoginRequestModel.fromJson(Map<String, dynamic> json) => _$GetAllGroupsAndPeopleWithLoginRequestModelFromJson(json);
}



///======== RESPONSE ========///
GetAllGroupsAndPeopleWithLoginResponseModel getAllGroupsAndPeopleWithLoginResponseModelFromJson(String str) => GetAllGroupsAndPeopleWithLoginResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getAllGroupsAndPeopleWithLoginResponseModelToJson(GetAllGroupsAndPeopleWithLoginResponseModel data) => json.encode(data.toJson());

@freezed
class GetAllGroupsAndPeopleWithLoginResponseModel with _$GetAllGroupsAndPeopleWithLoginResponseModel {
    const factory GetAllGroupsAndPeopleWithLoginResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<PeopleAndGroupPost>? data,
    }) = _GetAllGroupsAndPeopleWithLoginResponseModel;

    factory GetAllGroupsAndPeopleWithLoginResponseModel.fromJson(Map<String, dynamic> json) => _$GetAllGroupsAndPeopleWithLoginResponseModelFromJson(json);
}

@freezed
class PeopleAndGroupPost with _$PeopleAndGroupPost {
    const factory PeopleAndGroupPost({
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
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "comments")
        List<dynamic>? comments,
        @JsonKey(name: "likeCounts")
        int? likeCounts,
        @JsonKey(name: "disLikeCounts")
        int? dislikeCounts,
        @JsonKey(name: "commentCounts")
        int? commentCounts,
        @JsonKey(name: "likeDislike")
        LikeDislike? likeDislike,
        @JsonKey(name: "averageRating")
        dynamic averageRating,
        @JsonKey(name: "isFollowing")
        bool? isFollowing,
    }) = _PeopleAndGroupPost;

    factory PeopleAndGroupPost.fromJson(Map<String, dynamic> json) => _$PeopleAndGroupPostFromJson(json);
}

@freezed
class GroupId with _$GroupId {
    const factory GroupId({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "groupPhoto")
        String? groupPhoto,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "privacy")
        String? privacy,
        @JsonKey(name: "one_month_subscription_price")
        dynamic oneMonthSubscriptionPrice,
        @JsonKey(name: "six_month_subscription_price")
        dynamic sixMonthSubscriptionPrice,
        @JsonKey(name: "twelve_month_subscription_price")
        dynamic twelveMonthSubscriptionPrice,
        @JsonKey(name: "promoCode")
        dynamic promoCode,
        @JsonKey(name: "discount")
        dynamic discount,
        @JsonKey(name: "productId")
        dynamic productId,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "followers")
        List<Follower?>? followers,
        @JsonKey(name: "reviewer")
        List<Reviewer>? reviewer,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _GroupId;

    factory GroupId.fromJson(Map<String, dynamic> json) => _$GroupIdFromJson(json);
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

@freezed
class Reviewer with _$Reviewer {
    const factory Reviewer({
        @JsonKey(name: "review")
        dynamic review,
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
        @JsonKey(name: "userId")
        String? userId,
    }) = _Reviewer;

    factory Reviewer.fromJson(Map<String, dynamic> json) => _$ReviewerFromJson(json);
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
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "followers")
        List<dynamic>? followers,
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

// @freezed
// class LikeDislike with _$LikeDislike {
//     const factory LikeDislike({
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
//     }) = _LikeDislike;

//     factory LikeDislike.fromJson(Map<String, dynamic> json) => _$LikeDislikeFromJson(json);
// }

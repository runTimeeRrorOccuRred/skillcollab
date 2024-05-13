// To parse this JSON data, do
//
//     final exploreAllResponseModel = exploreAllResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/posts/getPublicPosts/models/get_public_posts_model.dart';
import 'package:skill_colab/data/remote/withLogin/getAllGroupsAndPeopleWithLogin/models/get_all_groups_and_people_with_login_model.dart';

part 'explore_all_model.freezed.dart';
part 'explore_all_model.g.dart';

ExploreAllResponseModel exploreAllResponseModelFromJson(String str) => ExploreAllResponseModel.fromJson(json.decode(str));
String exploreAllResponseModelToJson(ExploreAllResponseModel data) => json.encode(data.toJson());

@freezed
class ExploreAllResponseModel with _$ExploreAllResponseModel {
    const factory ExploreAllResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<ExploreData>? data,
    }) = _ExploreAllResponseModel;

    factory ExploreAllResponseModel.fromJson(Map<String, dynamic> json) => _$ExploreAllResponseModelFromJson(json);
}

@freezed
class ExploreData with _$ExploreData {
    const factory ExploreData({
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
        List<Subscriber?>? subscribers,
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
        @JsonKey(name: "publicPost")
        int? publicPost,
        @JsonKey(name: "premiumPost")
        int? premiumPost,
        @JsonKey(name: "exploreType")
        String? exploreType,
        @JsonKey(name: "isFollowing")
        bool? isFollowing,
        @JsonKey(name: "postImage")
        String? postImage,
        @JsonKey(name: "slug")
        String? slug,
        @JsonKey(name: "checkIn")
        String? checkIn,
        @JsonKey(name: "checkInImage")
        String? checkInImage,
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
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "comments")
        List<ExploreComment?>? comments,
        @JsonKey(name: "commentCounts")
        int? commentCounts,
        @JsonKey(name: "likeDislike")
        LikeDislike? likeDislike,
        @JsonKey(name: "groupPhoto")
        String? groupPhoto,
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
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "rules")
        String? rules,
        @JsonKey(name: "reviewer")
        List<Reviewer?>? reviewer,
        @JsonKey(name: "likeCounts")
        int? likeCounts,
        @JsonKey(name: "dislikeCounts")
        int? dislikeCounts,
        @JsonKey(name: "averageRating")
        double? averageRating,
        @JsonKey(name: "rating")
        double? rating,
    }) = _ExploreData;

    factory ExploreData.fromJson(Map<String, dynamic> json) => _$ExploreDataFromJson(json);
}

@freezed
class ExploreComment with _$ExploreComment {
    const factory ExploreComment({
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
    }) = _ExploreComment;

    factory ExploreComment.fromJson(Map<String, dynamic> json) => _$ExploreCommentFromJson(json);
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
        List<Interest?>? interests,
        @JsonKey(name: "subscribers")
        List<Subscriber?>? subscribers,
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


@freezed
class Subscriber with _$Subscriber {
    const factory Subscriber({
        @JsonKey(name: "subscription_id")
        String? subscriptionId,
        @JsonKey(name: "isPaid")
        bool? isPaid,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "user")
        String? user,
        @JsonKey(name: "expirationDate")
        DateTime? expirationDate,
    }) = _Subscriber;

    factory Subscriber.fromJson(Map<String, dynamic> json) => _$SubscriberFromJson(json);
}


@freezed
class Reviewer with _$Reviewer {
    const factory Reviewer({
        @JsonKey(name: "review")
        dynamic review,
        @JsonKey(name: "title")
        dynamic title,
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

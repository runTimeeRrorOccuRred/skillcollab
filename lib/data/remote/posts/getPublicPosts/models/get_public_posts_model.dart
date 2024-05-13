// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

import 'package:skill_colab/data/remote/withLogin/getAllPeopleWithLogin/models/get_all_people_with_login_model.dart';

part 'get_public_posts_model.freezed.dart';
part 'get_public_posts_model.g.dart';


///============== REQUEST ==============///
GetPublicPostsRequestModel getPublicPostsRequestModelFromJson(String str) => GetPublicPostsRequestModel.fromJson(json.decode(str));
String getPublicPostsRequestModelToJson(GetPublicPostsRequestModel data) => json.encode(data.toJson());

@freezed
class GetPublicPostsRequestModel with _$GetPublicPostsRequestModel {
    const factory GetPublicPostsRequestModel({
        @JsonKey(name: "searchKey")
        String? searchKey,
        @JsonKey(name: "interests")
        String? interests,
        @JsonKey(name: "timeFilter")
        String? timeFilter,
        @JsonKey(name: "feedFilter")
        String? feedFilter,
    }) = _GetPublicPostsRequestModel;

    factory GetPublicPostsRequestModel.fromJson(Map<String, dynamic> json) => _$GetPublicPostsRequestModelFromJson(json);
}



///============== RESPONSE ==============///
GetPublicPostsResponseModel getPublicPostsResponseModelFromJson(String str) => GetPublicPostsResponseModel.fromJson(json.decode(str));
String getPublicPostsResponseModelToJson(GetPublicPostsResponseModel data) => json.encode(data.toJson());

@freezed
class GetPublicPostsResponseModel with _$GetPublicPostsResponseModel {
    const factory GetPublicPostsResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<DashboardGroupModel>? data,
    }) = _GetPublicPostsResponseModel;

    factory GetPublicPostsResponseModel.fromJson(Map<String, dynamic> json) => _$GetPublicPostsResponseModelFromJson(json);
}

@freezed
class DashboardGroupModel with _$DashboardGroupModel {
    const factory DashboardGroupModel({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "groupId")
        String? groupId,
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
        List<Interest?>? interests,
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "postImage")
        String? postImage,
        @JsonKey(name: "slug")
        String? slug,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "checkIn")
        String? checkIn,
        @JsonKey(name: "checkInImage")
        String? checkInImage,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "groupData")
        GroupData? groupData,
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
        @JsonKey(name: "rating")
        int? rating,
        @JsonKey(name: "averageRating")
        double? averageRating,
        @JsonKey(name: "isFollowing")
        bool? isFollowing,
    }) = _DashboardGroupModel;

    factory DashboardGroupModel.fromJson(Map<String, dynamic> json) => _$DashboardGroupModelFromJson(json);
}

@freezed
class GroupData with _$GroupData {
    const factory GroupData({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "interests")
        List<Interest?>? interests,
        @JsonKey(name: "privacy")
        String? privacy,
        @JsonKey(name: "one_month_subscription_price")
        int? oneMonthSubscriptionPrice,
        @JsonKey(name: "six_month_subscription_price")
        int? sixMonthSubscriptionPrice,
        @JsonKey(name: "twelve_month_subscription_price")
        int? twelveMonthSubscriptionPrice,
        @JsonKey(name: "productId")
        dynamic productId,
        @JsonKey(name: "groupPhoto")
        String? groupPhoto,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "followers")
        List<Follower>? followers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "promoCode")
        String? promoCode,
        @JsonKey(name: "reviewer")
        List<Reviewer>? reviewer,
        @JsonKey(name: "discount")
        int? discount,
    }) = _GroupData;

    factory GroupData.fromJson(Map<String, dynamic> json) => _$GroupDataFromJson(json);
}

@freezed
class LikeDislike with _$LikeDislike {
    const factory LikeDislike({
        @JsonKey(name: "postId")
        String? postId,
        @JsonKey(name: "tutorialId")
        dynamic tutorialId,
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
    }) = _LikeDislike;

    factory LikeDislike.fromJson(Map<String, dynamic> json) => _$LikeDislikeFromJson(json);
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
        @JsonKey(name: "firstName")
        String? firstName,
        @JsonKey(name: "lastName")
        String? lastName,
        @JsonKey(name: "userName")
        String? userName,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "phone")
        String? phone,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
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
        @JsonKey(name: "accountId")
        String? accountId,
        @JsonKey(name: "accountLink")
        String? accountLink,
        @JsonKey(name: "customerId")
        String? customerId,
        @JsonKey(name: "interests")
        List<Interest?>? interests,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
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

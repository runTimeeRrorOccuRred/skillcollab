// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'get_post_comment_model.freezed.dart';
part 'get_post_comment_model.g.dart';

GetPostCommentModel getPostCommentModelFromJson(String str) => GetPostCommentModel.fromJson(json.decode(str));

String getPostCommentModelToJson(GetPostCommentModel data) => json.encode(data.toJson());

@freezed
class GetPostCommentModel with _$GetPostCommentModel {
    const factory GetPostCommentModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Comment>? data,
    }) = _GetPostCommentModel;

    factory GetPostCommentModel.fromJson(Map<String, dynamic> json) => _$GetPostCommentModelFromJson(json);
}

@freezed
class Comment with _$Comment {
    const factory Comment({
        @JsonKey(name: "postId")
        String? postId,
        @JsonKey(name: "tutorialId")
        dynamic tutorialId,
        @JsonKey(name: "questionId")
        dynamic questionId,
        @JsonKey(name: "parentId")
        dynamic parentId,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "comment")
        String? comment,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "userLikeDislike")
        UserLikeDislike? userLikeDislike,
        @JsonKey(name: "count")
        int? count,
        @JsonKey(name: "likeCounts")
        int? likeCounts,
        @JsonKey(name: "disLikeCounts")
        int? dislikeCounts,
    }) = _Comment;

    factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
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
        @JsonKey(name: "deviceToken")
        List<String?>? deviceToken,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
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
        @JsonKey(name: "customerId")
        String? customerId,
        @JsonKey(name: "accountId")
        String? accountId,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "accountLink")
        String? accountLink,
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

// To parse this JSON data, do
//
//     final getTutorialResponseModel = getTutorialResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/group_subscribe_model.dart';

part 'get_tutorial_by_group_model.freezed.dart';
part 'get_tutorial_by_group_model.g.dart';

GetTutorialResponseModel getTutorialResponseModelFromJson(String str) =>
    GetTutorialResponseModel.fromJson(json.decode(str));

String getTutorialResponseModelToJson(GetTutorialResponseModel data) =>
    json.encode(data.toJson());

@freezed
class GetTutorialResponseModel with _$GetTutorialResponseModel {
  const factory GetTutorialResponseModel({
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "isSuccess") bool? isSuccess,
    @JsonKey(name: "data") List<TutorialData>? data,
  }) = _GetTutorialResponseModel;

  factory GetTutorialResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetTutorialResponseModelFromJson(json);
}

@freezed
class TutorialData with _$TutorialData {
  const factory TutorialData({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "gif") dynamic gif,
    @JsonKey(name: "videoUrl") dynamic videoUrl,
    @JsonKey(name: "bgColor") dynamic bgColor,
    @JsonKey(name: "groupId") String? groupId,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "tutorialImage") String? tutorialImage,
    @JsonKey(name: "userId") UserId? userId,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "groupDetails") GroupDetails? groupDetails,
    @JsonKey(name: "commentCount") int? commentCounts,
    @JsonKey(name: "likeCounts")
    int? likeCounts,
    @JsonKey(name: "disLikeCounts")
    int? dislikeCounts,
    LikeDislike? likeDislike,
  }) = _TutorialData;

  factory TutorialData.fromJson(Map<String, dynamic> json) =>
      _$TutorialDataFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "desc") String? desc,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

LikeDislike likeDislikeFromJson(String str) =>
    LikeDislike.fromJson(json.decode(str));

String likeDislikeToJson(LikeDislike data) => json.encode(data.toJson());

@freezed
class LikeDislike with _$LikeDislike {
  const factory LikeDislike({
    String? postId,
    String? tutorialId,
    String? questionId,
    bool? isLike,
    bool? isDislike,
    @JsonKey(name: "_id") String? id,
    String? userId,
    String? type,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _LikeDislike;

  factory LikeDislike.fromJson(Map<String, dynamic> json) =>
      _$LikeDislikeFromJson(json);
}

@freezed
class GroupDetails with _$GroupDetails {
  const factory GroupDetails({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "interests") List<Interest>? interests,
    @JsonKey(name: "privacy") String? privacy,
    @JsonKey(name: "groupPhoto") String? groupPhoto,
    @JsonKey(name: "coverPhoto") String? coverPhoto,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "userId") String? userId,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
  }) = _GroupDetails;

  factory GroupDetails.fromJson(Map<String, dynamic> json) =>
      _$GroupDetailsFromJson(json);
}

@freezed
class UserId with _$UserId {
  const factory UserId({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
    @JsonKey(name: "interests") List<Interest>? interests,
    @JsonKey(name: "subscribers") List<dynamic>? subscribers,
    @JsonKey(name: "firstName") String? firstName,
    @JsonKey(name: "lastName") String? lastName,
    @JsonKey(name: "userName") String? userName,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "customerId") String? customerId,
    @JsonKey(name: "accountId") String? accountId,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "accountLink") String? accountLink,
    @JsonKey(name: "otp") dynamic otp,
    @JsonKey(name: "otpExpiry") dynamic otpExpiry,
    @JsonKey(name: "coverPhoto") String? coverPhoto,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "profilePhoto") String? profilePhoto,
    @JsonKey(name: "followers")
    List<Follower>? followers,
    @JsonKey(name: "expertise")
    String? expertise,
  }) = _UserId;

  factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}

// ==================== Request ================//

GetTutorialRequestModel getTutorialRequestModelFromJson(String str) =>
    GetTutorialRequestModel.fromJson(json.decode(str));

String getTutorialRequestModelToJson(GetTutorialRequestModel data) =>
    json.encode(data.toJson());

@freezed
class GetTutorialRequestModel with _$GetTutorialRequestModel {
  const factory GetTutorialRequestModel({
    @JsonKey(name: "searchKey") String? searchKey,
    @JsonKey(name: "filter") String? filter,
  }) = _GetTutorialRequestModel;

  factory GetTutorialRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GetTutorialRequestModelFromJson(json);
}

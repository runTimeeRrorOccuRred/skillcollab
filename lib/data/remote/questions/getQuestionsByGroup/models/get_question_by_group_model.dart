// To parse this JSON data, do
//
//     final getQuestionByGroupModel = getQuestionByGroupModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/group_subscribe_model.dart';

part 'get_question_by_group_model.freezed.dart';
part 'get_question_by_group_model.g.dart';

GetQuestionByGroupModel getQuestionByGroupModelFromJson(String str) =>
    GetQuestionByGroupModel.fromJson(json.decode(str));

String getQuestionByGroupModelToJson(GetQuestionByGroupModel data) =>
    json.encode(data.toJson());

@freezed
class GetQuestionByGroupModel with _$GetQuestionByGroupModel {
  const factory GetQuestionByGroupModel({
    @JsonKey(name: "code") int? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "isSuccess") bool? isSuccess,
    @JsonKey(name: "data") List<QuestionData>? data,
  }) = _GetQuestionByGroupModel;

  factory GetQuestionByGroupModel.fromJson(Map<String, dynamic> json) =>
      _$GetQuestionByGroupModelFromJson(json);
}

@freezed
class QuestionData with _$QuestionData {
  const factory QuestionData({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "gif") String? gif,
    @JsonKey(name: "videoUrl") String? videoUrl,
    @JsonKey(name: "bgColor") String? bgColor,
    @JsonKey(name: "groupId") String? groupId,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "questionImage") String? questionImage,
    @JsonKey(name: "userId") UserId? userId,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "groupDetails") GroupDetails? groupDetails,
    @JsonKey(name: "commentCount") int? commentCount,
    @JsonKey(name: "likeCounts")
    int? likeCounts,
    @JsonKey(name: "disLikeCounts")
    int? dislikeCounts,
    LikeDislike? likeDislike,
  }) = _QuestionData;

  factory QuestionData.fromJson(Map<String, dynamic> json) =>
      _$QuestionDataFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "question") String? question,
    @JsonKey(name: "answer") String? answer,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class LikeDislike with _$LikeDislike {
  const factory LikeDislike({
    dynamic postId,
    dynamic tutorialId,
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
    @JsonKey(name: "firstName") String? firstName,
    @JsonKey(name: "lastName") String? lastName,
    @JsonKey(name: "userName") String? userName,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone") String? phone,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "createdAt") DateTime? createdAt,
    @JsonKey(name: "updatedAt") DateTime? updatedAt,
    @JsonKey(name: "expertise")
    String? expertise,
    @JsonKey(name: "otp") dynamic otp,
    @JsonKey(name: "otpExpiry") dynamic otpExpiry,
    @JsonKey(name: "accountId") String? accountId,
    @JsonKey(name: "accountLink") String? accountLink,
    @JsonKey(name: "customerId") String? customerId,
    @JsonKey(name: "interests") List<Interest>? interests,
    @JsonKey(name: "subscribers") List<dynamic>? subscribers,
    @JsonKey(name: "coverPhoto") String? coverPhoto,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "location") String? location,
    @JsonKey(name: "profilePhoto") String? profilePhoto,
    @JsonKey(name: "followers")
    List<Follower>? followers,
  }) = _UserId;

  factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}

//Request Model
GetQuestionByGroupRequestModel getQuestionByGroupRequestModelFromJson(
        String str,) =>
    GetQuestionByGroupRequestModel.fromJson(json.decode(str));

String getQuestionByGroupRequestModelToJson(
        GetQuestionByGroupRequestModel data,) =>
    json.encode(data.toJson());

@freezed
class GetQuestionByGroupRequestModel with _$GetQuestionByGroupRequestModel {
  const factory GetQuestionByGroupRequestModel({
    @JsonKey(name: "searchKey") String? searchKey,
    @JsonKey(name: "filter") String? filter,
  }) = _GetQuestionByGroupRequestModel;

  factory GetQuestionByGroupRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GetQuestionByGroupRequestModelFromJson(json);
}

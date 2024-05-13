// To parse this JSON data, do
//
//     final getSingleQuestionResponseModel = getSingleQuestionResponseModelFromJson(jsonString);

import 'dart:convert';

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/questions/getQuestionsByGroup/models/get_question_by_group_model.dart';

part 'get_single_question_model.freezed.dart';
part 'get_single_question_model.g.dart';

GetSingleQuestionResponseModel getSingleQuestionResponseModelFromJson(String str) => GetSingleQuestionResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getSingleQuestionResponseModelToJson(GetSingleQuestionResponseModel data) => json.encode(data.toJson());

@freezed
class GetSingleQuestionResponseModel with _$GetSingleQuestionResponseModel {
    const factory GetSingleQuestionResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<QuestionData>? data,
    }) = _GetSingleQuestionResponseModel;

    factory GetSingleQuestionResponseModel.fromJson(Map<String, dynamic> json) => _$GetSingleQuestionResponseModelFromJson(json);
}

// @freezed
// class Datum with _$Datum {
//     const factory Datum({
//         @JsonKey(name: "_id")
//         String? id,
//         @JsonKey(name: "gif")
//         dynamic gif,
//         @JsonKey(name: "videoUrl")
//         dynamic videoUrl,
//         @JsonKey(name: "bgColor")
//         String? bgColor,
//         @JsonKey(name: "groupId")
//         String? groupId,
//         @JsonKey(name: "data")
//         Data? data,
//         @JsonKey(name: "questionImage")
//         String? questionImage,
//         @JsonKey(name: "userId")
//         UserId? userId,
//         @JsonKey(name: "createdAt")
//         DateTime? createdAt,
//         @JsonKey(name: "updatedAt")
//         DateTime? updatedAt,
//     }) = _Datum;

//     factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
// }

// @freezed
// class Data with _$Data {
//     const factory Data({
//         @JsonKey(name: "question")
//         String? question,
//         @JsonKey(name: "answer")
//         String? answer,
//     }) = _Data;

//     factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
// }

// @freezed
// class UserId with _$UserId {
//     const factory UserId({
//         @JsonKey(name: "_id")
//         String? id,
//         @JsonKey(name: "role")
//         String? role,
//         @JsonKey(name: "isEmailVerified")
//         bool? isEmailVerified,
//         @JsonKey(name: "productId")
//         dynamic productId,
//         @JsonKey(name: "deviceToken")
//         List<String?>? deviceToken,
//         @JsonKey(name: "firstName")
//         String? firstName,
//         @JsonKey(name: "lastName")
//         String? lastName,
//         @JsonKey(name: "userName")
//         String? userName,
//         @JsonKey(name: "email")
//         String? email,
//         @JsonKey(name: "phone")
//         String? phone,
//         @JsonKey(name: "password")
//         String? password,
//         @JsonKey(name: "coverPhoto")
//         String? coverPhoto,
//         @JsonKey(name: "profilePhoto")
//         String? profilePhoto,
//         @JsonKey(name: "description")
//         String? description,
//         @JsonKey(name: "location")
//         String? location,
//         @JsonKey(name: "interests")
//         List<Interest>? interests,
//         @JsonKey(name: "subscribers")
//         List<dynamic>? subscribers,
//         @JsonKey(name: "followers")
//         List<Follower>? followers,
//         @JsonKey(name: "createdAt")
//         DateTime? createdAt,
//         @JsonKey(name: "updatedAt")
//         DateTime? updatedAt,
//         @JsonKey(name: "otp")
//         dynamic otp,
//         @JsonKey(name: "otpExpiry")
//         dynamic otpExpiry,
//     }) = _UserId;

//     factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
// }

// @freezed
// class Follower with _$Follower {
//     const factory Follower({
//         @JsonKey(name: "status")
//         String? status,
//         @JsonKey(name: "_id")
//         String? id,
//         @JsonKey(name: "userId")
//         String? userId,
//     }) = _Follower;

//     factory Follower.fromJson(Map<String, dynamic> json) => _$FollowerFromJson(json);
// }

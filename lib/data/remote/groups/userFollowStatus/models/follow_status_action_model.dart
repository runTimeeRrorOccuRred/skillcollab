// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'follow_status_action_model.freezed.dart';
part 'follow_status_action_model.g.dart';


///=========== REQUEST ===========///
FollowStatusActionRequestModel followStatusActionRequestModelFromJson(String str) => FollowStatusActionRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String followStatusActionRequestModelToJson(FollowStatusActionRequestModel data) => json.encode(data.toJson());

@freezed
class FollowStatusActionRequestModel with _$FollowStatusActionRequestModel {
    const factory FollowStatusActionRequestModel({
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "isAccept")
        bool? isAccept,
    }) = _FollowStatusActionRequestModel;

    factory FollowStatusActionRequestModel.fromJson(Map<String, dynamic> json) => _$FollowStatusActionRequestModelFromJson(json);
}


///=========== RESPONSE ===========///
FollowStatusActionResponseModel followStatusActionResponseModelFromJson(String str) => FollowStatusActionResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String followStatusActionResponseModelToJson(FollowStatusActionResponseModel data) => json.encode(data.toJson());

@freezed
class FollowStatusActionResponseModel with _$FollowStatusActionResponseModel {
    const factory FollowStatusActionResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _FollowStatusActionResponseModel;

    factory FollowStatusActionResponseModel.fromJson(Map<String, dynamic> json) => _$FollowStatusActionResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
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
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "followers")
        List<Follower>? followers,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "reviewer")
        List<Reviewer>? reviewer,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
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

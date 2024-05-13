// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'group_unsubscribe_model.freezed.dart';
part 'group_unsubscribe_model.g.dart';


///========= REQUEST =========///
GroupUnubscribeRequestModel groupUnubscribeRequestModelFromJson(String str) => GroupUnubscribeRequestModel.fromJson(json.decode(str));
String groupUnubscribeRequestModelToJson(GroupUnubscribeRequestModel data) => json.encode(data.toJson());

@freezed
class GroupUnubscribeRequestModel with _$GroupUnubscribeRequestModel {
    const factory GroupUnubscribeRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
    }) = _GroupUnubscribeRequestModel;

    factory GroupUnubscribeRequestModel.fromJson(Map<String, dynamic> json) => _$GroupUnubscribeRequestModelFromJson(json);
}


///========= RESPONSE =========///
GroupUnubscribeResponseModel groupUnubscribeResponseModelFromJson(String str) => GroupUnubscribeResponseModel.fromJson(json.decode(str));
String groupUnubscribeResponseModelToJson(GroupUnubscribeResponseModel data) => json.encode(data.toJson());

@freezed
class GroupUnubscribeResponseModel with _$GroupUnubscribeResponseModel {
    const factory GroupUnubscribeResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GroupUnubscribeResponseModel;

    factory GroupUnubscribeResponseModel.fromJson(Map<String, dynamic> json) => _$GroupUnubscribeResponseModelFromJson(json);
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
        int? oneMonthSubscriptionPrice,
        @JsonKey(name: "six_month_subscription_price")
        int? sixMonthSubscriptionPrice,
        @JsonKey(name: "twelve_month_subscription_price")
        int? twelveMonthSubscriptionPrice,
        @JsonKey(name: "promoCode")
        String? promoCode,
        @JsonKey(name: "discount")
        int? discount,
        @JsonKey(name: "productId")
        String? productId,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "followers")
        List<Follower>? followers,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "reviewer")
        List<dynamic>? reviewer,
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


// ignore_for_file: invalid_annotation_target, non_constant_identifier_names

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'create_group_model.freezed.dart';
part 'create_group_model.g.dart';


///============ REQUEST ============///
CreateGroupRequestModel createGroupRequestModelFromJson(String str) => CreateGroupRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String createGroupRequestModelToJson(CreateGroupRequestModel data) => json.encode(data.toJson());

@freezed
class CreateGroupRequestModel with _$CreateGroupRequestModel {
    const factory CreateGroupRequestModel({
        String? groupPhoto,
        String? coverPhoto,
        String? name,
        String? description,
        String? location,
        List<Interest>? interests,
        String? privacy,
        String? rules,
        List<Follower>? followers,
    }) = _CreateGroupRequestModel;

    factory CreateGroupRequestModel.fromJson(Map<String, dynamic> json) => _$CreateGroupRequestModelFromJson(json);
}


///============ REQUEST ============///
CreatePremiumGroupRequestModel createPremiumGroupRequestModelFromJson(String str) => CreatePremiumGroupRequestModel.fromJson(json.decode(str) as  Map<String, dynamic>);
String createPremiumGroupRequestModelToJson(CreatePremiumGroupRequestModel data) => json.encode(data.toJson());

@freezed
class CreatePremiumGroupRequestModel with _$CreatePremiumGroupRequestModel {
    const factory CreatePremiumGroupRequestModel({
        String? groupPhoto,
        String? coverPhoto,
        String? name,
        String? description,
        String? location,
        List<Interest>? interests,
        String? privacy,
        String? rules,
        int? one_month_subscription_price,
        int? six_month_subscription_price,
        int? twelve_month_subscription_price,
        String? promoCode,
        int? discount,
        List<Follower>? followers,
    }) = _CreatePremiumGroupRequestModel;

    factory CreatePremiumGroupRequestModel.fromJson(Map<String, dynamic> json) => _$CreatePremiumGroupRequestModelFromJson(json);
}



///============ RESPONSE ============///
CreateGroupResponseModel createGroupResponseModelFromJson(String str) => CreateGroupResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String createGroupResponseModelToJson(CreateGroupResponseModel data) => json.encode(data.toJson());

@freezed
class CreateGroupResponseModel with _$CreateGroupResponseModel {
    const factory CreateGroupResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _CreateGroupResponseModel;

    factory CreateGroupResponseModel.fromJson(Map<String, dynamic> json) => _$CreateGroupResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        String? privacy,
        String? groupPhoto,
        String? coverPhoto,
        String? name,
        String? description,
        String? location,
        List<Interest>? interests,
        int? one_month_subscription_price,
        int? six_month_subscription_price,
        int? twelve_month_subscription_price,
        String? promoCode,
        int? discount,
        String? userId,
        DateTime? createdAt,
        DateTime? updatedAt,
        String? rules,
        @JsonKey(name: '_id')
        String? id,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Follower with _$Follower {
    const factory Follower({
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "status")
        String? status,
    }) = _Follower;

    factory Follower.fromJson(Map<String, dynamic> json) => _$FollowerFromJson(json);
}

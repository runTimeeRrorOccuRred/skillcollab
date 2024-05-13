// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:skill_colab/data/remote/groups/userFollowStatus/models/follow_status_action_model.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/premium/group/group_subscribe/models/group_subscribe_model.dart';

part 'single_user_model.freezed.dart';
part 'single_user_model.g.dart';

SingleUserResponseModel singleUserResponseModelFromJson(String str) => SingleUserResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String singleUserResponseModelToJson(SingleUserResponseModel data) => json.encode(data.toJson());

@freezed
class SingleUserResponseModel with _$SingleUserResponseModel {
    const factory SingleUserResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _SingleUserResponseModel;

    factory SingleUserResponseModel.fromJson(Map<String, dynamic> json) => _$SingleUserResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "productId")
        String? productId,
        @JsonKey(name: "deviceToken")
        List<String?>? deviceToken,
        @JsonKey(name: "_id")
        String? id,
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
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        String? banReason,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "expertise")
        String? expertise,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "subscribers")
        List<Subscriber>? subscribers,
        @JsonKey(name: "followers")
        List<Follower>? followers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "customerId")
        String? customerId,
        @JsonKey(name: "follower")
        int? follower,
        @JsonKey(name: "accountId")
        String? accountId,
        @JsonKey(name: "isKyc")
        bool? isKyc,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
// To parse this JSON data, do
//
//     final unsubscribeUserRequestModel = unsubscribeUserRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'unsubscribe_user_model.freezed.dart';
part 'unsubscribe_user_model.g.dart';

UnsubscribeUserRequestModel unsubscribeUserRequestModelFromJson(String str) => UnsubscribeUserRequestModel.fromJson(json.decode(str));

String unsubscribeUserRequestModelToJson(UnsubscribeUserRequestModel data) => json.encode(data.toJson());

@freezed
class UnsubscribeUserRequestModel with _$UnsubscribeUserRequestModel {
    const factory UnsubscribeUserRequestModel({
        @JsonKey(name: "subscribeUserId")
        String? subscribeUserId,
    }) = _UnsubscribeUserRequestModel;

    factory UnsubscribeUserRequestModel.fromJson(Map<String, dynamic> json) => _$UnsubscribeUserRequestModelFromJson(json);
}


UnsubscribeUserResponseModel unsubscribeUserResponseModelFromJson(String str) => UnsubscribeUserResponseModel.fromJson(json.decode(str));

String unsubscribeUserResponseModelToJson(UnsubscribeUserResponseModel data) => json.encode(data.toJson());

@freezed
class UnsubscribeUserResponseModel with _$UnsubscribeUserResponseModel {
    const factory UnsubscribeUserResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _UnsubscribeUserResponseModel;

    factory UnsubscribeUserResponseModel.fromJson(Map<String, dynamic> json) => _$UnsubscribeUserResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "productId")
        String? productId,
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
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "accountId")
        String? accountId,
        @JsonKey(name: "accountLink")
        String? accountLink,
        @JsonKey(name: "customerId")
        String? customerId,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

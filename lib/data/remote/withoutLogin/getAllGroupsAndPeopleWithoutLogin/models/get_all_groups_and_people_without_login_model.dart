// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
import 'package:skill_colab/data/remote/user/models/user_model.dart';

part 'get_all_groups_and_people_without_login_model.freezed.dart';
part 'get_all_groups_and_people_without_login_model.g.dart';

// ============REQUEST ==============
GetAllGroupsAndPeopleWithoutLoginRequestModel getAllGroupsAndPeopleWithoutLoginRequestModelFromJson(String str) => GetAllGroupsAndPeopleWithoutLoginRequestModel.fromJson(json.decode(str));

String getAllGroupsAndPeopleWithoutLoginRequestModelToJson(GetAllGroupsAndPeopleWithoutLoginRequestModel data) => json.encode(data.toJson());

@freezed
class GetAllGroupsAndPeopleWithoutLoginRequestModel with _$GetAllGroupsAndPeopleWithoutLoginRequestModel {
    const factory GetAllGroupsAndPeopleWithoutLoginRequestModel({
        @JsonKey(name: "searchKey")
        String? searchKey,
        @JsonKey(name: "interests")
        String? interests,
        @JsonKey(name: "timeFilter")
        String? timeFilter,
    }) = _GetAllGroupsAndPeopleWithoutLoginRequestModel;

    factory GetAllGroupsAndPeopleWithoutLoginRequestModel.fromJson(Map<String, dynamic> json) => _$GetAllGroupsAndPeopleWithoutLoginRequestModelFromJson(json);
}




// ==========RESONSE==============
GetAllGroupsAndPeopleWithoutLoginResponseModel getAllGroupsAndPeopleWithoutLoginResponseModelFromJson(String str) => GetAllGroupsAndPeopleWithoutLoginResponseModel.fromJson(json.decode(str));

String getAllGroupsAndPeopleWithoutLoginResponseModelToJson(GetAllGroupsAndPeopleWithoutLoginResponseModel data) => json.encode(data.toJson());

@freezed
class GetAllGroupsAndPeopleWithoutLoginResponseModel with _$GetAllGroupsAndPeopleWithoutLoginResponseModel {
    const factory GetAllGroupsAndPeopleWithoutLoginResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<PeopleAndGroupPostWOL?>? data,
    }) = _GetAllGroupsAndPeopleWithoutLoginResponseModel;

    factory GetAllGroupsAndPeopleWithoutLoginResponseModel.fromJson(Map<String, dynamic> json) => _$GetAllGroupsAndPeopleWithoutLoginResponseModelFromJson(json);
}

@freezed
class PeopleAndGroupPostWOL with _$PeopleAndGroupPostWOL {
    const factory PeopleAndGroupPostWOL({
        @JsonKey(name: "postImage")
        String? postImage,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "slug")
        String? slug,
        @JsonKey(name: "checkIn")
        String? checkIn,
        @JsonKey(name: "checkInImage")
        String? checkInImage,
        @JsonKey(name: "subscribers")
        List<Subscriber?>? subscribers,
        @JsonKey(name: "groupId")
        GroupId? groupId,
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
        @JsonKey(name: "hide")
        List<dynamic>? hide,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        dynamic banReason,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "interests")
        List<Interest?>? interests,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _PeopleAndGroupPostWOL;

    factory PeopleAndGroupPostWOL.fromJson(Map<String, dynamic> json) => _$PeopleAndGroupPostWOLFromJson(json);
}

@freezed
class GroupId with _$GroupId {
    const factory GroupId({
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
        List<Interest?>? interests,
        @JsonKey(name: "followers")
        List<Follower?>? followers,
        @JsonKey(name: "rules")
        String? rules,
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "reviewer")
        List<Reviewer?>? reviewer,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _GroupId;

    factory GroupId.fromJson(Map<String, dynamic> json) => _$GroupIdFromJson(json);
}

@freezed
class UserId with _$UserId {
    const factory UserId({
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "isKyc")
        bool? isKyc,
        @JsonKey(name: "expertise")
        dynamic expertise,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "productId")
        dynamic productId,
        @JsonKey(name: "deviceToken")
        List<String?>? deviceToken,
        @JsonKey(name: "isBan")
        bool? isBan,
        @JsonKey(name: "banReason")
        dynamic banReason,
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
        @JsonKey(name: "interests")
        List<dynamic>? interests,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "followers")
        List<Follower?>? followers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "customerId")
        String? customerId,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}

@freezed
class Reviewer with _$Reviewer {
    const factory Reviewer({
        @JsonKey(name: "review")
        String? review,
        @JsonKey(name: "title")
        String? title,
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

// ignore_for_file: invalid_annotation_target
import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';
// import 'package:skill_colab/data/remote/user/models/user_model.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';

part 'get_all_people_without_login_model.freezed.dart';
part 'get_all_people_without_login_model.g.dart';


//========== REQUEST ==========//
GetAllPeopleWithoutLoginRequestModel getAllPeopleWithoutLoginRequestModelFromJson(String str) => GetAllPeopleWithoutLoginRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getAllPeopleWithoutLoginRequestModelToJson(GetAllPeopleWithoutLoginRequestModel data) => json.encode(data.toJson());

@freezed
class GetAllPeopleWithoutLoginRequestModel with _$GetAllPeopleWithoutLoginRequestModel {
    const factory GetAllPeopleWithoutLoginRequestModel({
        String? searchKey,
        String? interests,
        String? timeFilter,
    }) = _GetAllPeopleWithoutLoginRequestModel;

    factory GetAllPeopleWithoutLoginRequestModel.fromJson(Map<String, dynamic> json) => _$GetAllPeopleWithoutLoginRequestModelFromJson(json);
}




//========== RESPONSE ==========//
GetAllPeopleWithoutLoginResponseModel getAllPeopleWithoutLoginResponseModelFromJson(String str) => GetAllPeopleWithoutLoginResponseModel.fromJson(json.decode(str));

String getAllPeopleWithoutLoginResponseModelToJson(GetAllPeopleWithoutLoginResponseModel data) => json.encode(data.toJson());

@freezed
class GetAllPeopleWithoutLoginResponseModel with _$GetAllPeopleWithoutLoginResponseModel {
    const factory GetAllPeopleWithoutLoginResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<People>? data,
    }) = _GetAllPeopleWithoutLoginResponseModel;

    factory GetAllPeopleWithoutLoginResponseModel.fromJson(Map<String, dynamic> json) => _$GetAllPeopleWithoutLoginResponseModelFromJson(json);
}

@freezed
class People with _$People {
    const factory People({
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
        // @JsonKey(name: "subscribers")
        // List<Subscriber?>? subscribers,
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
    }) = _People;

    factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);
}

@freezed
class UserId with _$UserId {
    const factory UserId({
       @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "isKyc")
        bool? isKyc,
        @JsonKey(name: "expertise")
        String? expertise,
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
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "interests")
        List<Interest>? interests,
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
        @JsonKey(name: "otp")
        dynamic otp,
        @JsonKey(name: "otpExpiry")
        dynamic otpExpiry,
        @JsonKey(name: "accountId")
        String? accountId,
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}


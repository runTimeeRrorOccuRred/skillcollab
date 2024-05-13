// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'my_group_interest_model.freezed.dart';
part 'my_group_interest_model.g.dart';


///========== REQUEST ==========///
MyGroupInterestRequestModel myGroupInterestRequestModelFromJson(String str) => MyGroupInterestRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String myGroupInterestRequestModelToJson(MyGroupInterestRequestModel data) => json.encode(data.toJson());

@freezed
class MyGroupInterestRequestModel with _$MyGroupInterestRequestModel {
    const factory MyGroupInterestRequestModel({
        @JsonKey(name: "interests")
        List<Interest>? interests,
    }) = _MyGroupInterestRequestModel;

    factory MyGroupInterestRequestModel.fromJson(Map<String, dynamic> json) => _$MyGroupInterestRequestModelFromJson(json);
}


///========== RESPONSE ==========///
MyGroupInterestResponseModel myGroupInterestResponseModelFromJson(String str) => MyGroupInterestResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String myGroupInterestResponseModelToJson(MyGroupInterestResponseModel data) => json.encode(data.toJson());

@freezed
class MyGroupInterestResponseModel with _$MyGroupInterestResponseModel {
    const factory MyGroupInterestResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Datum>? data,
    }) = _MyGroupInterestResponseModel;

    factory MyGroupInterestResponseModel.fromJson(Map<String, dynamic> json) => _$MyGroupInterestResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: "groupPhoto")
        String? groupPhoto,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "interests")
        List<Interest>? interests,
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
        @JsonKey(name: "userId")
        UserId? userId,
        @JsonKey(name: "subscribers")
        List<Subscriber>? subscribers,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Subscriber with _$Subscriber {
    const factory Subscriber({
        @JsonKey(name: "subscription_id")
        String? subscriptionId,
        @JsonKey(name: "isPaid")
        bool? isPaid,
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "user")
        String? user,
        @JsonKey(name: "expirationDate")
        dynamic expirationDate,
    }) = _Subscriber;

    factory Subscriber.fromJson(Map<String, dynamic> json) => _$SubscriberFromJson(json);
}

@freezed
class UserId with _$UserId {
    const factory UserId({
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "role")
        String? role,
        @JsonKey(name: "isEmailVerified")
        bool? isEmailVerified,
        @JsonKey(name: "interests")
        List<Interest>? interests,
        @JsonKey(name: "productId")
        dynamic productId,
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
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
        @JsonKey(name: "otp")
        int? otp,
        @JsonKey(name: "otpExpiry")
        DateTime? otpExpiry,
        @JsonKey(name: "coverPhoto")
        String? coverPhoto,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "location")
        String? location,
        @JsonKey(name: "profilePhoto")
        String? profilePhoto,
        @JsonKey(name: "subscribers")
        List<dynamic>? subscribers,
        @JsonKey(name: "accountId")
        String? accountId,
        @JsonKey(name: "accountLink")
        String? accountLink,
        @JsonKey(name: "customerId")
        String? customerId,
    }) = _UserId;

    factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}

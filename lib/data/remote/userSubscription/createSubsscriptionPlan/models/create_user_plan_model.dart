// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_plan_model.freezed.dart';
part 'create_user_plan_model.g.dart';


//!======== REQUEST ========!//
CreateUserPlanRequestModel createUserPlanRequestModelFromJson(String str) => CreateUserPlanRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String createUserPlanRequestModelToJson(CreateUserPlanRequestModel data) => json.encode(data.toJson());

@freezed
class CreateUserPlanRequestModel with _$CreateUserPlanRequestModel {
    const factory CreateUserPlanRequestModel({
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "productName")
        String? productName,
        @JsonKey(name: "monthlyPlanAmount")
        int? monthlyPlanAmount,
        @JsonKey(name: "quartPlanAmount")
        int? quartPlanAmount,
        @JsonKey(name: "yearlyPlanAmount")
        int? yearlyPlanAmount,
    }) = _CreateUserPlanRequestModel;

    factory CreateUserPlanRequestModel.fromJson(Map<String, dynamic> json) => _$CreateUserPlanRequestModelFromJson(json);
}


//!======== RESPONSE ========!//
CreateUserPlanResponseModel createUserPlanResponseModelFromJson(String str) => CreateUserPlanResponseModel.fromJson(json.decode(str));
String createUserPlanResponseModelToJson(CreateUserPlanResponseModel data) => json.encode(data.toJson());

@freezed
class CreateUserPlanResponseModel with _$CreateUserPlanResponseModel {
    const factory CreateUserPlanResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _CreateUserPlanResponseModel;

    factory CreateUserPlanResponseModel.fromJson(Map<String, dynamic> json) => _$CreateUserPlanResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "productId")
        String? productId,
        @JsonKey(name: "monthlyPlan")
        Plan? monthlyPlan,
        @JsonKey(name: "quartPlan")
        Plan? quartPlan,
        @JsonKey(name: "annualPlan")
        Plan? annualPlan,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Plan with _$Plan {
    const factory Plan({
        @JsonKey(name: "id")
        String? id,
        @JsonKey(name: "object")
        String? object,
        @JsonKey(name: "active")
        bool? active,
        @JsonKey(name: "aggregate_usage")
        dynamic aggregateUsage,
        @JsonKey(name: "amount")
        int? amount,
        @JsonKey(name: "amount_decimal")
        String? amountDecimal,
        @JsonKey(name: "billing_scheme")
        String? billingScheme,
        @JsonKey(name: "created")
        int? created,
        @JsonKey(name: "currency")
        String? currency,
        @JsonKey(name: "interval")
        String? interval,
        @JsonKey(name: "interval_count")
        int? intervalCount,
        @JsonKey(name: "livemode")
        bool? livemode,
        @JsonKey(name: "metadata")
        Metadata? metadata,
        @JsonKey(name: "nickname")
        String? nickname,
        @JsonKey(name: "product")
        String? product,
        @JsonKey(name: "tiers_mode")
        dynamic tiersMode,
        @JsonKey(name: "transform_usage")
        dynamic transformUsage,
        @JsonKey(name: "trial_period_days")
        dynamic trialPeriodDays,
        @JsonKey(name: "usage_type")
        String? usageType,
    }) = _Plan;

    factory Plan.fromJson(Map<String, dynamic> json) => _$PlanFromJson(json);
}

@freezed
class Metadata with _$Metadata {
    const factory Metadata() = _Metadata;

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
}
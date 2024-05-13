// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_plan_creation_model.freezed.dart';
part 'group_plan_creation_model.g.dart';

///======== REQUEST ========///
GroupPlanCreationRequestModel groupPlanCreationRequestModelFromJson(String str) => GroupPlanCreationRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String groupPlanCreationRequestModelToJson(GroupPlanCreationRequestModel data) => json.encode(data.toJson());

@freezed
class GroupPlanCreationRequestModel with _$GroupPlanCreationRequestModel {
    const factory GroupPlanCreationRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "productName")
        String? productName,
        @JsonKey(name: "monthlyPlanAmount")
        int? monthlyPlanAmount,
        @JsonKey(name: "quartPlanAmount")
        int? quartPlanAmount,
        @JsonKey(name: "yearlyPlanAmount")
        int? yearlyPlanAmount,
    }) = _GroupPlanCreationRequestModel;

    factory GroupPlanCreationRequestModel.fromJson(Map<String, dynamic> json) => _$GroupPlanCreationRequestModelFromJson(json);
}


///======== RESPONSE ========///
GroupPlanCreationResponseModel groupPlanCreationResponseModelFromJson(String str) => GroupPlanCreationResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String groupPlanCreationResponseModelToJson(GroupPlanCreationResponseModel data) => json.encode(data.toJson());

@freezed
class GroupPlanCreationResponseModel with _$GroupPlanCreationResponseModel {
    const factory GroupPlanCreationResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GroupPlanCreationResponseModel;

    factory GroupPlanCreationResponseModel.fromJson(Map<String, dynamic> json) => _$GroupPlanCreationResponseModelFromJson(json);
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

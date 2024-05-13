// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_group_plan_model.freezed.dart';
part 'edit_group_plan_model.g.dart';


//!========= REQUEST =========!//
EditGroupPlanRequestModel editGroupPlanRequestModelFromJson(String str) => EditGroupPlanRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String editGroupPlanRequestModelToJson(EditGroupPlanRequestModel data) => json.encode(data.toJson());

@freezed
class EditGroupPlanRequestModel with _$EditGroupPlanRequestModel {
    const factory EditGroupPlanRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "productId")
        String? productId,
        @JsonKey(name: "monthlyPlanId")
        String? monthlyPlanId,
        @JsonKey(name: "monthlyPlanAmount")
        int? monthlyPlanAmount,
        @JsonKey(name: "yearlyPlanId")
        String? yearlyPlanId,
        @JsonKey(name: "yearlyPlanAmount")
        int? yearlyPlanAmount,
        @JsonKey(name: "quartPlanId")
        String? quartPlanId,
        @JsonKey(name: "quartPlanAmount")
        int? quartPlanAmount,
    }) = _EditGroupPlanRequestModel;

    factory EditGroupPlanRequestModel.fromJson(Map<String, dynamic> json) => _$EditGroupPlanRequestModelFromJson(json);
}


//!========= RESPONSE =========!//
EditGroupPlanResponseModel editGroupPlanResponseModelFromJson(String str) => EditGroupPlanResponseModel.fromJson(json.decode(str));
String editGroupPlanResponseModelToJson(EditGroupPlanResponseModel data) => json.encode(data.toJson());

@freezed
class EditGroupPlanResponseModel with _$EditGroupPlanResponseModel {
    const factory EditGroupPlanResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _EditGroupPlanResponseModel;

    factory EditGroupPlanResponseModel.fromJson(Map<String, dynamic> json) => _$EditGroupPlanResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "monthPlanCreate")
        PlanCreate? monthPlanCreate,
        @JsonKey(name: "yearlyPlanCreate")
        PlanCreate? yearlyPlanCreate,
        @JsonKey(name: "quadPlanCreate")
        PlanCreate? quadPlanCreate,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class PlanCreate with _$PlanCreate {
    const factory PlanCreate({
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
    }) = _PlanCreate;

    factory PlanCreate.fromJson(Map<String, dynamic> json) => _$PlanCreateFromJson(json);
}

@freezed
class Metadata with _$Metadata {
    const factory Metadata() = _Metadata;

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
}

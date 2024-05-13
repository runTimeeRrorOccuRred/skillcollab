// To parse this JSON data, do
//
//     final editUserSubscriptionPlanRequestModel = editUserSubscriptionPlanRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_subscription_plan_model.freezed.dart';
part 'edit_subscription_plan_model.g.dart';

EditUserSubscriptionPlanRequestModel editUserSubscriptionPlanRequestModelFromJson(String str) => EditUserSubscriptionPlanRequestModel.fromJson(json.decode(str));

String editUserSubscriptionPlanRequestModelToJson(EditUserSubscriptionPlanRequestModel data) => json.encode(data.toJson());

@freezed
class EditUserSubscriptionPlanRequestModel with _$EditUserSubscriptionPlanRequestModel {
    const factory EditUserSubscriptionPlanRequestModel({
        @JsonKey(name: "userId")
        String? userId,
        @JsonKey(name: "planId")
        String? planId,
        @JsonKey(name: "productId")
        String? productId,
        @JsonKey(name: "planAmount")
        int? planAmount,
    }) = _EditUserSubscriptionPlanRequestModel;

    factory EditUserSubscriptionPlanRequestModel.fromJson(Map<String, dynamic> json) => _$EditUserSubscriptionPlanRequestModelFromJson(json);
}

EditUserSubscriptionPlanResponseModel editUserSubscriptionPlanResponseModelFromJson(String str) => EditUserSubscriptionPlanResponseModel.fromJson(json.decode(str));

String editUserSubscriptionPlanResponseModelToJson(EditUserSubscriptionPlanResponseModel data) => json.encode(data.toJson());

@freezed
class EditUserSubscriptionPlanResponseModel with _$EditUserSubscriptionPlanResponseModel {
    const factory EditUserSubscriptionPlanResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _EditUserSubscriptionPlanResponseModel;

    factory EditUserSubscriptionPlanResponseModel.fromJson(Map<String, dynamic> json) => _$EditUserSubscriptionPlanResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "planCreate")
        PlanCreate? planCreate,
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

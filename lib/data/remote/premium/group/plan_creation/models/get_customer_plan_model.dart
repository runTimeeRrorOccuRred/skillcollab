// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_customer_plan_model.freezed.dart';
part 'get_customer_plan_model.g.dart';


///========= REQUEST =========///
GetCustomerPlanRequestModel getCustomerPlanRequestModelFromJson(String str) => GetCustomerPlanRequestModel.fromJson(json.decode(str));
String getCustomerPlanRequestModelToJson(GetCustomerPlanRequestModel data) => json.encode(data.toJson());

@freezed
class GetCustomerPlanRequestModel with _$GetCustomerPlanRequestModel {
    const factory GetCustomerPlanRequestModel({
        @JsonKey(name: "product")
        String? product,
    }) = _GetCustomerPlanRequestModel;

    factory GetCustomerPlanRequestModel.fromJson(Map<String, dynamic> json) => _$GetCustomerPlanRequestModelFromJson(json);
}


///======= RESPONSE ========///
GetCustomerPlanResponseModel getCustomerPlanResponseModelFromJson(String str) => GetCustomerPlanResponseModel.fromJson(json.decode(str));
String getCustomerPlanResponseModelToJson(GetCustomerPlanResponseModel data) => json.encode(data.toJson());

@freezed
class GetCustomerPlanResponseModel with _$GetCustomerPlanResponseModel {
    const factory GetCustomerPlanResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GetCustomerPlanResponseModel;

    factory GetCustomerPlanResponseModel.fromJson(Map<String, dynamic> json) => _$GetCustomerPlanResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "object")
        String? object,
        @JsonKey(name: "data")
        List<Datum>? data,
        @JsonKey(name: "has_more")
        bool? hasMore,
        @JsonKey(name: "next_page")
        dynamic nextPage,
        @JsonKey(name: "url")
        String? url,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: "id")
        String? id,
        @JsonKey(name: "object")
        String? object,
        @JsonKey(name: "active")
        bool? active,
        @JsonKey(name: "billing_scheme")
        String? billingScheme,
        @JsonKey(name: "created")
        int? created,
        @JsonKey(name: "currency")
        String? currency,
        @JsonKey(name: "custom_unit_amount")
        dynamic customUnitAmount,
        @JsonKey(name: "livemode")
        bool? livemode,
        @JsonKey(name: "lookup_key")
        dynamic lookupKey,
        @JsonKey(name: "metadata")
        Metadata? metadata,
        @JsonKey(name: "nickname")
        String? nickname,
        @JsonKey(name: "product")
        String? product,
        @JsonKey(name: "recurring")
        Recurring? recurring,
        @JsonKey(name: "tax_behavior")
        String? taxBehavior,
        @JsonKey(name: "tiers_mode")
        dynamic tiersMode,
        @JsonKey(name: "transform_quantity")
        dynamic transformQuantity,
        @JsonKey(name: "type")
        String? type,
        @JsonKey(name: "unit_amount")
        int? unitAmount,
        @JsonKey(name: "unit_amount_decimal")
        String? unitAmountDecimal,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Metadata with _$Metadata {
    const factory Metadata() = _Metadata;

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
}

@freezed
class Recurring with _$Recurring {
    const factory Recurring({
        @JsonKey(name: "aggregate_usage")
        dynamic aggregateUsage,
        @JsonKey(name: "interval")
        String? interval,
        @JsonKey(name: "interval_count")
        int? intervalCount,
        @JsonKey(name: "trial_period_days")
        dynamic trialPeriodDays,
        @JsonKey(name: "usage_type")
        String? usageType,
    }) = _Recurring;

    factory Recurring.fromJson(Map<String, dynamic> json) => _$RecurringFromJson(json);
}
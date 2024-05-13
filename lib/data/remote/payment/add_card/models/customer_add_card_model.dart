// To parse this JSON data, do
//
//     final addCustomerCardResponseModel = addCustomerCardResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_add_card_model.freezed.dart';
part 'customer_add_card_model.g.dart';

AddCustomerCardResponseModel addCustomerCardResponseModelFromJson(String str) => AddCustomerCardResponseModel.fromJson(json.decode(str));

String addCustomerCardResponseModelToJson(AddCustomerCardResponseModel data) => json.encode(data.toJson());

@freezed
class AddCustomerCardResponseModel with _$AddCustomerCardResponseModel {
    const factory AddCustomerCardResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _AddCustomerCardResponseModel;

    factory AddCustomerCardResponseModel.fromJson(Map<String, dynamic> json) => _$AddCustomerCardResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "id")
        String? id,
        @JsonKey(name: "object")
        String? object,
        @JsonKey(name: "address_city")
        dynamic addressCity,
        @JsonKey(name: "address_country")
        dynamic addressCountry,
        @JsonKey(name: "address_line1")
        dynamic addressLine1,
        @JsonKey(name: "address_line1_check")
        dynamic addressLine1Check,
        @JsonKey(name: "address_line2")
        dynamic addressLine2,
        @JsonKey(name: "address_state")
        dynamic addressState,
        @JsonKey(name: "address_zip")
        dynamic addressZip,
        @JsonKey(name: "address_zip_check")
        dynamic addressZipCheck,
        @JsonKey(name: "brand")
        String? brand,
        @JsonKey(name: "country")
        String? country,
        @JsonKey(name: "customer")
        String? customer,
        @JsonKey(name: "cvc_check")
        String? cvcCheck,
        @JsonKey(name: "dynamic_last4")
        dynamic dynamicLast4,
        @JsonKey(name: "exp_month")
        int? expMonth,
        @JsonKey(name: "exp_year")
        int? expYear,
        @JsonKey(name: "fingerprint")
        String? fingerprint,
        @JsonKey(name: "funding")
        String? funding,
        @JsonKey(name: "last4")
        String? last4,
        @JsonKey(name: "metadata")
        Metadata? metadata,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "tokenization_method")
        dynamic tokenizationMethod,
        @JsonKey(name: "wallet")
        dynamic wallet,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Metadata with _$Metadata {
    const factory Metadata() = _Metadata;

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
}


//==================REQUEST MODEL===========================
AddCustomerCardRequestModel addCustomerCardRequestModelFromJson(String str) => AddCustomerCardRequestModel.fromJson(json.decode(str));

String addCustomerCardRequestModelToJson(AddCustomerCardRequestModel data) => json.encode(data.toJson());

@freezed
class AddCustomerCardRequestModel with _$AddCustomerCardRequestModel {
    const factory AddCustomerCardRequestModel({
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "number")
        String? number,
        @JsonKey(name: "exp_month")
        int? expMonth,
        @JsonKey(name: "exp_year")
        int? expYear,
        @JsonKey(name: "cvc")
        String? cvc,
    }) = _AddCustomerCardRequestModel;

    factory AddCustomerCardRequestModel.fromJson(Map<String, dynamic> json) => _$AddCustomerCardRequestModelFromJson(json);
}

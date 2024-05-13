// To parse this JSON data, do
//
//     final getCardListModel = getCardListModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_card_model.freezed.dart';
part 'get_card_model.g.dart';

GetCardListModel getCardListModelFromJson(String str) => GetCardListModel.fromJson(json.decode(str));

String getCardListModelToJson(GetCardListModel data) => json.encode(data.toJson());

@freezed
class GetCardListModel with _$GetCardListModel {
    const factory GetCardListModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GetCardListModel;

    factory GetCardListModel.fromJson(Map<String, dynamic> json) => _$GetCardListModelFromJson(json);
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
        dynamic name,
        @JsonKey(name: "tokenization_method")
        dynamic tokenizationMethod,
        @JsonKey(name: "wallet")
        dynamic wallet,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Metadata with _$Metadata {
    const factory Metadata() = _Metadata;

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);
}

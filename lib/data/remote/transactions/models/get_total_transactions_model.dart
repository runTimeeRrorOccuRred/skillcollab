// To parse this JSON data, do
//
//     final getTotalTransactionResponseModel = getTotalTransactionResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_total_transactions_model.freezed.dart';
part 'get_total_transactions_model.g.dart';

GetTotalTransactionResponseModel getTotalTransactionResponseModelFromJson(String str) => GetTotalTransactionResponseModel.fromJson(json.decode(str));

String getTotalTransactionResponseModelToJson(GetTotalTransactionResponseModel data) => json.encode(data.toJson());

@freezed
class GetTotalTransactionResponseModel with _$GetTotalTransactionResponseModel {
    const factory GetTotalTransactionResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GetTotalTransactionResponseModel;

    factory GetTotalTransactionResponseModel.fromJson(Map<String, dynamic> json) => _$GetTotalTransactionResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "groupTotalAmount")
        TotalAmount? groupTotalAmount,
        @JsonKey(name: "profileTotalAmount")
        TotalAmount? profileTotalAmount,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class TotalAmount with _$TotalAmount {
    const factory TotalAmount({
        @JsonKey(name: "grossAmount")
        num? grossAmount,
        @JsonKey(name: "netAmount")
        num? netAmount,
    }) = _TotalAmount;

    factory TotalAmount.fromJson(Map<String, dynamic> json) => _$TotalAmountFromJson(json);
}
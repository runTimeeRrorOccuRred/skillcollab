// To parse this JSON data, do
//
//     final addBankRequestModel = addBankRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_add_bank_model.freezed.dart';
part 'customer_add_bank_model.g.dart';

//================request============================//

AddBankRequestModel addBankRequestModelFromJson(String str) => AddBankRequestModel.fromJson(json.decode(str));

String addBankRequestModelToJson(AddBankRequestModel data) => json.encode(data.toJson());

@freezed
class AddBankRequestModel with _$AddBankRequestModel {
    const factory AddBankRequestModel({
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "name")
        String? name,
    }) = _AddBankRequestModel;

    factory AddBankRequestModel.fromJson(Map<String, dynamic> json) => _$AddBankRequestModelFromJson(json);
}

//================response============================//

AddBankResponseModel addBankResponseModelFromJson(String str) => AddBankResponseModel.fromJson(json.decode(str));

String addBankResponseModelToJson(AddBankResponseModel data) => json.encode(data.toJson());

@freezed
class AddBankResponseModel with _$AddBankResponseModel {
    const factory AddBankResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _AddBankResponseModel;

    factory AddBankResponseModel.fromJson(Map<String, dynamic> json) => _$AddBankResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "accountLink")
        String? accountLink,
        @JsonKey(name: "accountId")
        String? accountId,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

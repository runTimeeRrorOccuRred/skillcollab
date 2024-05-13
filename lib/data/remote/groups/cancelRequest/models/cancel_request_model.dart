// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancel_request_model.freezed.dart';
part 'cancel_request_model.g.dart';

CancelRequestResponseModel cancelRequestResponseModelFromJson(String str) => CancelRequestResponseModel.fromJson(json.decode(str));
String cancelRequestResponseModelToJson(CancelRequestResponseModel data) => json.encode(data.toJson());

@freezed
class CancelRequestResponseModel with _$CancelRequestResponseModel {
    const factory CancelRequestResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _CancelRequestResponseModel;

    factory CancelRequestResponseModel.fromJson(Map<String, dynamic> json) => _$CancelRequestResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data() = _Data;
    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

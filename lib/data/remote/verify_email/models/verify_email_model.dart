import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_email_model.freezed.dart';
part 'verify_email_model.g.dart';


///============ REQUEST ============///
VerifyEmailRequestModel verifyEmailRequestModelFromJson(String str) => VerifyEmailRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String verifyEmailRequestModelToJson(VerifyEmailRequestModel data) => json.encode(data.toJson());

@freezed
class VerifyEmailRequestModel with _$VerifyEmailRequestModel {
    const factory VerifyEmailRequestModel({
        int? otp,
    }) = _VerifyEmailRequestModel;

    factory VerifyEmailRequestModel.fromJson(Map<String, dynamic> json) => _$VerifyEmailRequestModelFromJson(json);
}


///============ RESPONSE ============///
VerifyEmailResponseModel verifyEmailResponseModelFromJson(String str) => VerifyEmailResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String verifyEmailResponseModelToJson(VerifyEmailResponseModel data) => json.encode(data.toJson());

@freezed
class VerifyEmailResponseModel with _$VerifyEmailResponseModel {
    const factory VerifyEmailResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
    }) = _VerifyEmailResponseModel;

    factory VerifyEmailResponseModel.fromJson(Map<String, dynamic> json) => _$VerifyEmailResponseModelFromJson(json);
}

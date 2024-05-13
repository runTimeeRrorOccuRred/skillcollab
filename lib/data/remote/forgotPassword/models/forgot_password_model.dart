import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_model.freezed.dart';
part 'forgot_password_model.g.dart';

ForgotPasswordRequestModel forgotPasswordRequestModelFromJson(String str) => ForgotPasswordRequestModel.fromJson(json.decode(str));
String forgotPasswordRequestModelToJson(ForgotPasswordRequestModel data) => json.encode(data.toJson());

@freezed
class ForgotPasswordRequestModel with _$ForgotPasswordRequestModel {
    const factory ForgotPasswordRequestModel({
        String? email,
    }) = _ForgotPasswordRequestModel;

    factory ForgotPasswordRequestModel.fromJson(Map<String, dynamic> json) => _$ForgotPasswordRequestModelFromJson(json);
}

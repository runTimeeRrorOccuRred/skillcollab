// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_verify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForgotVerifyRequestModelImpl _$$ForgotVerifyRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotVerifyRequestModelImpl(
      email: json['email'] as String?,
      otp: json['otp'] as int?,
    );

Map<String, dynamic> _$$ForgotVerifyRequestModelImplToJson(
        _$ForgotVerifyRequestModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp': instance.otp,
    };

_$ForgotVerifyResponseModelImpl _$$ForgotVerifyResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotVerifyResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForgotVerifyResponseModelImplToJson(
        _$ForgotVerifyResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl();

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{};

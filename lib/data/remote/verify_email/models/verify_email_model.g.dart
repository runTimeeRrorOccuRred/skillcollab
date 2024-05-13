// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_email_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyEmailRequestModelImpl _$$VerifyEmailRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyEmailRequestModelImpl(
      otp: json['otp'] as int?,
    );

Map<String, dynamic> _$$VerifyEmailRequestModelImplToJson(
        _$VerifyEmailRequestModelImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
    };

_$VerifyEmailResponseModelImpl _$$VerifyEmailResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyEmailResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
    );

Map<String, dynamic> _$$VerifyEmailResponseModelImplToJson(
        _$VerifyEmailResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
    };

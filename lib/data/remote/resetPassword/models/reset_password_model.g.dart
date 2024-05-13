// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordRequestModelImpl _$$ResetPasswordRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordRequestModelImpl(
      otp: json['otp'] as int?,
      newPassword: json['newPassword'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$ResetPasswordRequestModelImplToJson(
        _$ResetPasswordRequestModelImpl instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
      'email': instance.email,
    };

_$ResetPasswordResponseModelImpl _$$ResetPasswordResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResetPasswordResponseModelImplToJson(
        _$ResetPasswordResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl();

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{};

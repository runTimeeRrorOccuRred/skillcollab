// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenRequestModelImpl _$$RefreshTokenRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenRequestModelImpl(
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$RefreshTokenRequestModelImplToJson(
        _$RefreshTokenRequestModelImpl instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

_$RefreshTokenResponseModelImpl _$$RefreshTokenResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshTokenResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$RefreshTokenResponseModelImplToJson(
        _$RefreshTokenResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl();

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{};

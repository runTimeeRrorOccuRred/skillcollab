// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'username_validator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsernameValidatorRequestImpl _$$UsernameValidatorRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UsernameValidatorRequestImpl(
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$$UsernameValidatorRequestImplToJson(
        _$UsernameValidatorRequestImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
    };

_$UsernameValidatorResponseImpl _$$UsernameValidatorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UsernameValidatorResponseImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UsernameValidatorResponseImplToJson(
        _$UsernameValidatorResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl();

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{};

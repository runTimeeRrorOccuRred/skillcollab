// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_add_bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddBankRequestModelImpl _$$AddBankRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddBankRequestModelImpl(
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$AddBankRequestModelImplToJson(
        _$AddBankRequestModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
    };

_$AddBankResponseModelImpl _$$AddBankResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddBankResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddBankResponseModelImplToJson(
        _$AddBankResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      accountLink: json['accountLink'] as String?,
      accountId: json['accountId'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'accountLink': instance.accountLink,
      'accountId': instance.accountId,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_total_transactions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTotalTransactionResponseModelImpl
    _$$GetTotalTransactionResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetTotalTransactionResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GetTotalTransactionResponseModelImplToJson(
        _$GetTotalTransactionResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      groupTotalAmount: json['groupTotalAmount'] == null
          ? null
          : TotalAmount.fromJson(
              json['groupTotalAmount'] as Map<String, dynamic>),
      profileTotalAmount: json['profileTotalAmount'] == null
          ? null
          : TotalAmount.fromJson(
              json['profileTotalAmount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'groupTotalAmount': instance.groupTotalAmount,
      'profileTotalAmount': instance.profileTotalAmount,
    };

_$TotalAmountImpl _$$TotalAmountImplFromJson(Map<String, dynamic> json) =>
    _$TotalAmountImpl(
      grossAmount: json['grossAmount'] as num?,
      netAmount: json['netAmount'] as num?,
    );

Map<String, dynamic> _$$TotalAmountImplToJson(_$TotalAmountImpl instance) =>
    <String, dynamic>{
      'grossAmount': instance.grossAmount,
      'netAmount': instance.netAmount,
    };

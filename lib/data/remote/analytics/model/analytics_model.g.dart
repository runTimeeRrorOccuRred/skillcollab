// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticsRequestModelImpl _$$AnalyticsRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsRequestModelImpl(
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );

Map<String, dynamic> _$$AnalyticsRequestModelImplToJson(
        _$AnalyticsRequestModelImpl instance) =>
    <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };

_$AnalyticsResponseModelImpl _$$AnalyticsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnalyticsResponseModelImplToJson(
        _$AnalyticsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxY: json['maxY'] as int?,
      minY: json['minY'] as int?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'values': instance.values,
      'maxY': instance.maxY,
      'minY': instance.minY,
    };

_$ValueImpl _$$ValueImplFromJson(Map<String, dynamic> json) => _$ValueImpl(
      id: json['_id'] as String?,
      groupId: json['groupId'] as String?,
      toUser: json['toUser'] as String?,
      fromUser: json['fromUser'] as String?,
      amount: json['amount'] as num?,
      currency: json['currency'] as String?,
      type: json['type'] as String?,
      netAmount: json['netAmount'] as num?,
      day: json['day'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ValueImplToJson(_$ValueImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'groupId': instance.groupId,
      'toUser': instance.toUser,
      'fromUser': instance.fromUser,
      'amount': instance.amount,
      'currency': instance.currency,
      'type': instance.type,
      'netAmount': instance.netAmount,
      'day': instance.day,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

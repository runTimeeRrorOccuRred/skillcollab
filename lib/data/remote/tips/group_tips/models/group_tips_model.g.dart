// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_tips_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupTipsRequestModelImpl _$$GroupTipsRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupTipsRequestModelImpl(
      groupId: json['groupId'] as String?,
      tipAmount: json['tipAmount'] as num?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$GroupTipsRequestModelImplToJson(
        _$GroupTipsRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'tipAmount': instance.tipAmount,
      'type': instance.type,
    };

_$GroupTipsResponseModelImpl _$$GroupTipsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupTipsResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroupTipsResponseModelImplToJson(
        _$GroupTipsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      groupId: json['groupId'] as String?,
      id: json['_id'] as String?,
      toUser: json['toUser'] as String?,
      fromUser: json['fromUser'] as String?,
      amount: json['amount'] as num?,
      currency: json['currency'] as String?,
      type: json['type'] as String?,
      day: json['day'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      '_id': instance.id,
      'toUser': instance.toUser,
      'fromUser': instance.fromUser,
      'amount': instance.amount,
      'currency': instance.currency,
      'type': instance.type,
      'day': instance.day,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

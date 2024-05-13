// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tips_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTipsRequestModelImpl _$$UserTipsRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserTipsRequestModelImpl(
      userId: json['userId'] as String?,
      tipAmount: json['tipAmount'] as int?,
      type: json['type'] as String?,
      destinationAccountId: json['destinationAccountId'] as String?,
      description: json['description'] as String?,
      cardId: json['cardId'] as String?,
    );

Map<String, dynamic> _$$UserTipsRequestModelImplToJson(
        _$UserTipsRequestModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'tipAmount': instance.tipAmount,
      'type': instance.type,
      'destinationAccountId': instance.destinationAccountId,
      'description': instance.description,
      'cardId': instance.cardId,
    };

_$UserTipsResponseModelImpl _$$UserTipsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserTipsResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserTipsResponseModelImplToJson(
        _$UserTipsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      groupId: json['groupId'],
      id: json['_id'] as String?,
      fromUser: json['fromUser'] as String?,
      toUser: json['toUser'] as String?,
      amount: json['amount'] as int?,
      currency: json['currency'] as String?,
      type: json['type'] as String?,
      netAmount: json['netAmount'] as int?,
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
      'fromUser': instance.fromUser,
      'toUser': instance.toUser,
      'amount': instance.amount,
      'currency': instance.currency,
      'type': instance.type,
      'netAmount': instance.netAmount,
      'day': instance.day,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

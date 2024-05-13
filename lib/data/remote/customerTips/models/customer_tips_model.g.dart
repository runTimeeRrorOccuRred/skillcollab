// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_tips_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerTipRequestModelImpl _$$CustomerTipRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerTipRequestModelImpl(
      groupId: json['groupId'] as String?,
      userId: json['userId'] as String?,
      tipAmount: json['tipAmount'] as int?,
    );

Map<String, dynamic> _$$CustomerTipRequestModelImplToJson(
        _$CustomerTipRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'userId': instance.userId,
      'tipAmount': instance.tipAmount,
    };

_$CustomerTipResponseModelImpl _$$CustomerTipResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomerTipResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomerTipResponseModelImplToJson(
        _$CustomerTipResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      sessionId: json['sessionId'] as String?,
      sessionUrl: json['sessionUrl'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'sessionUrl': instance.sessionUrl,
    };

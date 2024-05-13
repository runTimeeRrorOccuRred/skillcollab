// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_subscribe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerSubscribeRequestModelImpl
    _$$CustomerSubscribeRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$CustomerSubscribeRequestModelImpl(
          groupId: json['groupId'] as String?,
          subscribeUserId: json['subscribeUserId'] as String?,
          planId: json['planId'] as String?,
        );

Map<String, dynamic> _$$CustomerSubscribeRequestModelImplToJson(
        _$CustomerSubscribeRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'subscribeUserId': instance.subscribeUserId,
      'planId': instance.planId,
    };

_$CustomerSubscribeResponseModelImpl
    _$$CustomerSubscribeResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$CustomerSubscribeResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CustomerSubscribeResponseModelImplToJson(
        _$CustomerSubscribeResponseModelImpl instance) =>
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

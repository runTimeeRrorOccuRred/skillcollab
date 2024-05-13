// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_notifications_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatNotificationRequestModelImpl _$$ChatNotificationRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatNotificationRequestModelImpl(
      receiverUserId: json['receiverUserId'] as String?,
    );

Map<String, dynamic> _$$ChatNotificationRequestModelImplToJson(
        _$ChatNotificationRequestModelImpl instance) =>
    <String, dynamic>{
      'receiverUserId': instance.receiverUserId,
    };

_$ChatNotificationResponseModelImpl
    _$$ChatNotificationResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$ChatNotificationResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ChatNotificationResponseModelImplToJson(
        _$ChatNotificationResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl();

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{};

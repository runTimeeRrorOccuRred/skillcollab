// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_pin_unpin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupPinUnpinRequestModelImpl _$$GroupPinUnpinRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupPinUnpinRequestModelImpl(
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$$GroupPinUnpinRequestModelImplToJson(
        _$GroupPinUnpinRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
    };

_$GroupPinUnpinResponseModelImpl _$$GroupPinUnpinResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupPinUnpinResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroupPinUnpinResponseModelImplToJson(
        _$GroupPinUnpinResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      isPinned: json['isPinned'] as bool?,
      groupId: json['groupId'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'isPinned': instance.isPinned,
      'groupId': instance.groupId,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
    };

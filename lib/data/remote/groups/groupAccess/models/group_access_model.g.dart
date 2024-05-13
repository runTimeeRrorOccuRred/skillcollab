// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_access_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupAccessRequestModelImpl _$$GroupAccessRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupAccessRequestModelImpl(
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$$GroupAccessRequestModelImplToJson(
        _$GroupAccessRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
    };

_$GroupAccessResponseModelImpl _$$GroupAccessResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupAccessResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroupAccessResponseModelImplToJson(
        _$GroupAccessResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

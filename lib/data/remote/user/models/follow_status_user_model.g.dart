// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_status_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FollowStatusUserResponseModelImpl
    _$$FollowStatusUserResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$FollowStatusUserResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FollowStatusUserResponseModelImplToJson(
        _$FollowStatusUserResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      isFollow: json['isFollow'] as bool?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'isFollow': instance.isFollow,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FollowUserResponseModelImpl _$$FollowUserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FollowUserResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FollowUserResponseModelImplToJson(
        _$FollowUserResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      groupId: json['groupId'] as String?,
      status: json['status'] as String?,
      userId: json['userId'] as String?,
      following: json['following'] as String?,
      type: json['type'] as String?,
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
      'groupId': instance.groupId,
      'status': instance.status,
      'userId': instance.userId,
      'following': instance.following,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
    };

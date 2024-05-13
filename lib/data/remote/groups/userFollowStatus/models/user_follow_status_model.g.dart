// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_follow_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFollowStatusResponseModelImpl
    _$$UserFollowStatusResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$UserFollowStatusResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$UserFollowStatusResponseModelImplToJson(
        _$UserFollowStatusResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      groupId: json['groupId'] as String?,
      following: json['following'],
      status: json['status'] as String?,
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'following': instance.following,
      'status': instance.status,
      '_id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

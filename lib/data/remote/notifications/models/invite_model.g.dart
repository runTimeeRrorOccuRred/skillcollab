// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InviteRequestModelImpl _$$InviteRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InviteRequestModelImpl(
      groupId: json['groupId'] as String?,
      invitedUserId: json['invitedUserId'] as String?,
    );

Map<String, dynamic> _$$InviteRequestModelImplToJson(
        _$InviteRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'invitedUserId': instance.invitedUserId,
    };

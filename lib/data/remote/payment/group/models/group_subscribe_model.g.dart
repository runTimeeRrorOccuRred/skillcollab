// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_subscribe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupSubscribeRequestModelImpl _$$GroupSubscribeRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupSubscribeRequestModelImpl(
      groupId: json['groupId'] as String?,
      planId: json['planId'] as String?,
      destinationAccountId: json['destinationAccountId'] as String?,
      cardId: json['cardId'] as String?,
      description: json['description'] as String?,
      groupCreatorUserId: json['groupCreatorUserId'] as String?,
    );

Map<String, dynamic> _$$GroupSubscribeRequestModelImplToJson(
        _$GroupSubscribeRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'planId': instance.planId,
      'destinationAccountId': instance.destinationAccountId,
      'cardId': instance.cardId,
      'description': instance.description,
      'groupCreatorUserId': instance.groupCreatorUserId,
    };

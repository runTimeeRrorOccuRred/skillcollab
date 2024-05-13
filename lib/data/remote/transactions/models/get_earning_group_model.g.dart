// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_earning_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEarningGroupRequestModelImpl _$$GetEarningGroupRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEarningGroupRequestModelImpl(
      groupId:
          (json['groupId'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$GetEarningGroupRequestModelImplToJson(
        _$GetEarningGroupRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
    };

_$GetEarningGroupResponseModelImpl _$$GetEarningGroupResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEarningGroupResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetEarningGroupResponseModelImplToJson(
        _$GetEarningGroupResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      totalEarnings: json['totalEarnings'] as num?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'totalEarnings': instance.totalEarnings,
    };

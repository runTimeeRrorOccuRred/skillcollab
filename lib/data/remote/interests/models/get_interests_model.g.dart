// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_interests_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetInterestsRequestModelImpl _$$GetInterestsRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetInterestsRequestModelImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$GetInterestsRequestModelImplToJson(
        _$GetInterestsRequestModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$GetInterestsResponseModelImpl _$$GetInterestsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetInterestsResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetInterestsResponseModelImplToJson(
        _$GetInterestsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$InterestImpl _$$InterestImplFromJson(Map<String, dynamic> json) =>
    _$InterestImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      interestPhoto: json['interestPhoto'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$InterestImplToJson(_$InterestImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'interestPhoto': instance.interestPhoto,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

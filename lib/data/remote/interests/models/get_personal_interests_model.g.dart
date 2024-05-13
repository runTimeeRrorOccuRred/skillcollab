// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_personal_interests_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPersonalInterestRequestImpl _$$GetPersonalInterestRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPersonalInterestRequestImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$GetPersonalInterestRequestImplToJson(
        _$GetPersonalInterestRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$GetPersonalInterestResponseImpl _$$GetPersonalInterestResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPersonalInterestResponseImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetPersonalInterestResponseImplToJson(
        _$GetPersonalInterestResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['_id'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => PersonalInterest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'interests': instance.interests,
    };

_$PersonalInterestImpl _$$PersonalInterestImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalInterestImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      interestPhoto: json['interestPhoto'],
    );

Map<String, dynamic> _$$PersonalInterestImplToJson(
        _$PersonalInterestImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'interestPhoto': instance.interestPhoto,
    };

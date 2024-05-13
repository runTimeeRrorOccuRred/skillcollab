// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_single_tutorial_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSingleTutorialResponseModelImpl
    _$$GetSingleTutorialResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$GetSingleTutorialResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => TutorialData.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetSingleTutorialResponseModelImplToJson(
        _$GetSingleTutorialResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

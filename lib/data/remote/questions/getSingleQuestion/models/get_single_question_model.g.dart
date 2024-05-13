// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_single_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSingleQuestionResponseModelImpl
    _$$GetSingleQuestionResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$GetSingleQuestionResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => QuestionData.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetSingleQuestionResponseModelImplToJson(
        _$GetSingleQuestionResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

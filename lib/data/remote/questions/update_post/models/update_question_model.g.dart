// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateQuestionRequestModelImpl _$$UpdateQuestionRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateQuestionRequestModelImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateQuestionRequestModelImplToJson(
        _$UpdateQuestionRequestModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$UpdateQuestionResponseModelImpl _$$UpdateQuestionResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateQuestionResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : UpdateQuestionResponseModelData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateQuestionResponseModelImplToJson(
        _$UpdateQuestionResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$UpdateQuestionResponseModelDataImpl
    _$$UpdateQuestionResponseModelDataImplFromJson(Map<String, dynamic> json) =>
        _$UpdateQuestionResponseModelDataImpl(
          data: json['data'] == null
              ? null
              : DataData.fromJson(json['data'] as Map<String, dynamic>),
          gif: json['gif'],
          videoUrl: json['videoUrl'],
          bgColor: json['bgColor'],
          id: json['_id'] as String?,
          groupId: json['groupId'] as String?,
          userId: json['userId'] as String?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
        );

Map<String, dynamic> _$$UpdateQuestionResponseModelDataImplToJson(
        _$UpdateQuestionResponseModelDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      '_id': instance.id,
      'groupId': instance.groupId,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$DataDataImpl _$$DataDataImplFromJson(Map<String, dynamic> json) =>
    _$DataDataImpl(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$DataDataImplToJson(_$DataDataImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateQuestionRequestModelImpl _$$CreateQuestionRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateQuestionRequestModelImpl(
      groupId: json['groupId'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      gif: json['gif'] as String?,
      privacy: json['privacy'] as String?,
      bgColor: json['bgColor'] as String?,
      videoUrl: json['videoUrl'] as String?,
      questionImage: json['questionImage'] as String?,
    );

Map<String, dynamic> _$$CreateQuestionRequestModelImplToJson(
        _$CreateQuestionRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'data': instance.data,
      'gif': instance.gif,
      'privacy': instance.privacy,
      'bgColor': instance.bgColor,
      'videoUrl': instance.videoUrl,
      'questionImage': instance.questionImage,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };

_$CreateQuestionResponseModelImpl _$$CreateQuestionResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateQuestionResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : CreateQuestionResponseModelData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateQuestionResponseModelImplToJson(
        _$CreateQuestionResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$CreateQuestionResponseModelDataImpl
    _$$CreateQuestionResponseModelDataImplFromJson(Map<String, dynamic> json) =>
        _$CreateQuestionResponseModelDataImpl(
          gif: json['gif'] as String?,
          videoUrl: json['videoUrl'] as String?,
          bgColor: json['bgColor'] as String?,
          id: json['_id'] as String?,
          groupId: json['groupId'] as String?,
          data: json['data'] == null
              ? null
              : DataData.fromJson(json['data'] as Map<String, dynamic>),
          questionImage: json['questionImage'] as String?,
          userId: json['userId'] as String?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
        );

Map<String, dynamic> _$$CreateQuestionResponseModelDataImplToJson(
        _$CreateQuestionResponseModelDataImpl instance) =>
    <String, dynamic>{
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      '_id': instance.id,
      'groupId': instance.groupId,
      'data': instance.data,
      'questionImage': instance.questionImage,
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

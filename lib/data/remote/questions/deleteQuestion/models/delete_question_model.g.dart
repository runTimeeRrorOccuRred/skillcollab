// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteQuestionResponseModelImpl _$$DeleteQuestionResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteQuestionResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : DeleteQuestionResponseModelData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeleteQuestionResponseModelImplToJson(
        _$DeleteQuestionResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DeleteQuestionResponseModelDataImpl
    _$$DeleteQuestionResponseModelDataImplFromJson(Map<String, dynamic> json) =>
        _$DeleteQuestionResponseModelDataImpl(
          data: json['data'] == null
              ? null
              : DataData.fromJson(json['data'] as Map<String, dynamic>),
          gif: json['gif'],
          videoUrl: json['videoUrl'],
          bgColor: json['bgColor'] as String?,
          privacy: json['privacy'] as String?,
          id: json['_id'] as String?,
          groupId: json['groupId'] as String?,
          questionImage: json['questionImage'] as String?,
          userId: json['userId'] as String?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
        );

Map<String, dynamic> _$$DeleteQuestionResponseModelDataImplToJson(
        _$DeleteQuestionResponseModelDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'privacy': instance.privacy,
      '_id': instance.id,
      'groupId': instance.groupId,
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

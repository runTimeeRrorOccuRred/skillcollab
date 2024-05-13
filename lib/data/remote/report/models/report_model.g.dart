// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportRequestModelImpl _$$ReportRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportRequestModelImpl(
      postId: json['postId'] as String?,
      content: json['content'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$ReportRequestModelImplToJson(
        _$ReportRequestModelImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'content': instance.content,
      'type': instance.type,
    };

_$QuestionReportRequestModelImpl _$$QuestionReportRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionReportRequestModelImpl(
      questionId: json['questionId'] as String?,
      content: json['content'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$QuestionReportRequestModelImplToJson(
        _$QuestionReportRequestModelImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'content': instance.content,
      'type': instance.type,
    };

_$TutorialReportRequestModelImpl _$$TutorialReportRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TutorialReportRequestModelImpl(
      tutorialId: json['tutorialId'] as String?,
      content: json['content'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$TutorialReportRequestModelImplToJson(
        _$TutorialReportRequestModelImpl instance) =>
    <String, dynamic>{
      'tutorialId': instance.tutorialId,
      'content': instance.content,
      'type': instance.type,
    };

_$ReportResponseModelImpl _$$ReportResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReportResponseModelImplToJson(
        _$ReportResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      postId: json['postId'],
      tutorialId: json['tutorialId'],
      questionId: json['questionId'],
      id: json['_id'] as String?,
      toUserId: json['toUserId'] as String?,
      content: json['content'] as String?,
      type: json['type'] as String?,
      fromUserId: json['fromUserId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'tutorialId': instance.tutorialId,
      'questionId': instance.questionId,
      '_id': instance.id,
      'toUserId': instance.toUserId,
      'content': instance.content,
      'type': instance.type,
      'fromUserId': instance.fromUserId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

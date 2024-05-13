// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteCommentRequestModelImpl _$$DeleteCommentRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteCommentRequestModelImpl(
      postId: json['postId'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$DeleteCommentRequestModelImplToJson(
        _$DeleteCommentRequestModelImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'type': instance.type,
    };

_$DeleteCommentQuestionRequestModelImpl
    _$$DeleteCommentQuestionRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$DeleteCommentQuestionRequestModelImpl(
          questionId: json['questionId'] as String?,
          type: json['type'] as String?,
        );

Map<String, dynamic> _$$DeleteCommentQuestionRequestModelImplToJson(
        _$DeleteCommentQuestionRequestModelImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'type': instance.type,
    };

_$DeleteCommentTutorialRequestModelImpl
    _$$DeleteCommentTutorialRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$DeleteCommentTutorialRequestModelImpl(
          tutorialId: json['tutorialId'] as String?,
          type: json['type'] as String?,
        );

Map<String, dynamic> _$$DeleteCommentTutorialRequestModelImplToJson(
        _$DeleteCommentTutorialRequestModelImpl instance) =>
    <String, dynamic>{
      'tutorialId': instance.tutorialId,
      'type': instance.type,
    };

_$DeleteCommentResponseModelImpl _$$DeleteCommentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteCommentResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeleteCommentResponseModelImplToJson(
        _$DeleteCommentResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      postId: json['postId'] as String?,
      tutorialId: json['tutorialId'],
      questionId: json['questionId'],
      parentId: json['parentId'],
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      comment: json['comment'] as String?,
      type: json['type'] as String?,
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
      'parentId': instance.parentId,
      '_id': instance.id,
      'userId': instance.userId,
      'comment': instance.comment,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditCommentRequestModelImpl _$$EditCommentRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditCommentRequestModelImpl(
      comment: json['comment'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$EditCommentRequestModelImplToJson(
        _$EditCommentRequestModelImpl instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'type': instance.type,
    };

_$EditCommentResponseModelImpl _$$EditCommentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditCommentResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditCommentResponseModelImplToJson(
        _$EditCommentResponseModelImpl instance) =>
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

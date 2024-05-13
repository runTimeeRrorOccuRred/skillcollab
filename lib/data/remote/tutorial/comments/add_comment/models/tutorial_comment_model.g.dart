// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutorial_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TutorialAddCommentRequestModelImpl
    _$$TutorialAddCommentRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$TutorialAddCommentRequestModelImpl(
          tutorialId: json['tutorialId'] as String?,
          parentId: json['parentId'],
          comment: json['comment'] as String?,
          type: json['type'] as String?,
        );

Map<String, dynamic> _$$TutorialAddCommentRequestModelImplToJson(
        _$TutorialAddCommentRequestModelImpl instance) =>
    <String, dynamic>{
      'tutorialId': instance.tutorialId,
      'parentId': instance.parentId,
      'comment': instance.comment,
      'type': instance.type,
    };

_$TutorialAddCommentResponseModelImpl
    _$$TutorialAddCommentResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$TutorialAddCommentResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TutorialAddCommentResponseModelImplToJson(
        _$TutorialAddCommentResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      postId: json['postId'],
      tutorialId: json['tutorialId'] as String?,
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

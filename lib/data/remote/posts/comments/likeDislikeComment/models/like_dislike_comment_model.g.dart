// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_dislike_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikeDislikeCommentRequestModelImpl
    _$$LikeDislikeCommentRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$LikeDislikeCommentRequestModelImpl(
          isLike: json['isLike'] as bool?,
          isDislike: json['isDislike'] as bool?,
          commentId: json['commentId'] as String?,
          type: json['type'] as String?,
        );

Map<String, dynamic> _$$LikeDislikeCommentRequestModelImplToJson(
        _$LikeDislikeCommentRequestModelImpl instance) =>
    <String, dynamic>{
      'isLike': instance.isLike,
      'isDislike': instance.isDislike,
      'commentId': instance.commentId,
      'type': instance.type,
    };

_$LikeDislikeCommentResponseModelImpl
    _$$LikeDislikeCommentResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$LikeDislikeCommentResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$LikeDislikeCommentResponseModelImplToJson(
        _$LikeDislikeCommentResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      postId: json['postId'],
      tutorialId: json['tutorialId'],
      commentId: json['commentId'] as String?,
      questionId: json['questionId'],
      isLike: json['isLike'] as bool?,
      isDislike: json['isDislike'] as bool?,
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
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
      'commentId': instance.commentId,
      'questionId': instance.questionId,
      'isLike': instance.isLike,
      'isDislike': instance.isDislike,
      '_id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

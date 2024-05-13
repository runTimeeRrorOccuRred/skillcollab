// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_dislike_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikeDislikeRequestModelImpl _$$LikeDislikeRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LikeDislikeRequestModelImpl(
      isLike: json['isLike'] as bool?,
      isDislike: json['isDislike'] as bool?,
      type: json['type'] as String?,
      questionId: json['questionId'] as String?,
    );

Map<String, dynamic> _$$LikeDislikeRequestModelImplToJson(
        _$LikeDislikeRequestModelImpl instance) =>
    <String, dynamic>{
      'isLike': instance.isLike,
      'isDislike': instance.isDislike,
      'type': instance.type,
      'questionId': instance.questionId,
    };

_$LikeDislikeResponseModelImpl _$$LikeDislikeResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LikeDislikeResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LikeDislikeResponseModelImplToJson(
        _$LikeDislikeResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      postId: json['postId'] as String?,
      tutorialId: json['tutorialId'] as String?,
      questionId: json['questionId'] as String?,
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
      'questionId': instance.questionId,
      'isLike': instance.isLike,
      'isDislike': instance.isDislike,
      '_id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

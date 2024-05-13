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
      postId: json['postId'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$LikeDislikeRequestModelImplToJson(
        _$LikeDislikeRequestModelImpl instance) =>
    <String, dynamic>{
      'isLike': instance.isLike,
      'isDislike': instance.isDislike,
      'postId': instance.postId,
      'type': instance.type,
    };

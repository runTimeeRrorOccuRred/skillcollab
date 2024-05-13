// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostCommentRequestModelImpl _$$PostCommentRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostCommentRequestModelImpl(
      postId: json['postId'] as String?,
      parentId: json['parentId'] as String?,
      comment: json['comment'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$PostCommentRequestModelImplToJson(
        _$PostCommentRequestModelImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'parentId': instance.parentId,
      'comment': instance.comment,
      'type': instance.type,
    };

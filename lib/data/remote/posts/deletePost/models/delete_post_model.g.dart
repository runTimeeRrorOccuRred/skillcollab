// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeletePostByIdResponseModelImpl _$$DeletePostByIdResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeletePostByIdResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeletePostByIdResponseModelImplToJson(
        _$DeletePostByIdResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      postImage: json['postImage'] as String?,
      description: json['description'] as String?,
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) => Subscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupId: json['groupId'] as String?,
      slug: json['slug'] as String?,
      isActive: json['isActive'] as bool?,
      gif: json['gif'] as String?,
      videoUrl: json['videoUrl'] as String?,
      bgColor: json['bgColor'] as String?,
      privacy: json['privacy'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      title: json['title'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'postImage': instance.postImage,
      'description': instance.description,
      'subscribers': instance.subscribers,
      'groupId': instance.groupId,
      'slug': instance.slug,
      'isActive': instance.isActive,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'privacy': instance.privacy,
      'interests': instance.interests,
      '_id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

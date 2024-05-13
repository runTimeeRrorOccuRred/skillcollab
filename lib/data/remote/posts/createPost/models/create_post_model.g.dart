// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePostRequestModelImpl _$$CreatePostRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePostRequestModelImpl(
      postImage: json['postImage'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      groupId: json['groupId'] as String?,
      isActive: json['isActive'] as bool?,
      gif: json['gif'] as String?,
      privacy: json['privacy'] as String?,
      bgColor: json['bgColor'] as String?,
      videoUrl: json['videoUrl'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkIn: json['checkIn'] as String?,
      checkInImage: json['checkInImage'] as String?,
    );

Map<String, dynamic> _$$CreatePostRequestModelImplToJson(
        _$CreatePostRequestModelImpl instance) =>
    <String, dynamic>{
      'postImage': instance.postImage,
      'title': instance.title,
      'description': instance.description,
      'groupId': instance.groupId,
      'isActive': instance.isActive,
      'gif': instance.gif,
      'privacy': instance.privacy,
      'bgColor': instance.bgColor,
      'videoUrl': instance.videoUrl,
      'interests': instance.interests,
      'checkIn': instance.checkIn,
      'checkInImage': instance.checkInImage,
    };

_$CreateUserPostRequestModelImpl _$$CreateUserPostRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateUserPostRequestModelImpl(
      postImage: json['postImage'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      isActive: json['isActive'] as bool?,
      gif: json['gif'] as String?,
      bgColor: json['bgColor'] as String?,
      privacy: json['privacy'] as String?,
      videoUrl: json['videoUrl'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkIn: json['checkIn'] as String?,
      checkInImage: json['checkInImage'] as String?,
    );

Map<String, dynamic> _$$CreateUserPostRequestModelImplToJson(
        _$CreateUserPostRequestModelImpl instance) =>
    <String, dynamic>{
      'postImage': instance.postImage,
      'title': instance.title,
      'description': instance.description,
      'isActive': instance.isActive,
      'gif': instance.gif,
      'bgColor': instance.bgColor,
      'privacy': instance.privacy,
      'videoUrl': instance.videoUrl,
      'interests': instance.interests,
      'checkIn': instance.checkIn,
      'checkInImage': instance.checkInImage,
    };

_$CreatePostResponseModelImpl _$$CreatePostResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePostResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreatePostResponseModelImplToJson(
        _$CreatePostResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      subscribers: json['subscribers'] as List<dynamic>?,
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
      postImage: json['postImage'] as String?,
      slug: json['slug'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      groupId: json['groupId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      checkIn: json['checkIn'] as String?,
      checkInImage: json['checkInImage'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'subscribers': instance.subscribers,
      'isActive': instance.isActive,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'privacy': instance.privacy,
      'interests': instance.interests,
      '_id': instance.id,
      'userId': instance.userId,
      'postImage': instance.postImage,
      'slug': instance.slug,
      'title': instance.title,
      'description': instance.description,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'checkIn': instance.checkIn,
      'checkInImage': instance.checkInImage,
    };

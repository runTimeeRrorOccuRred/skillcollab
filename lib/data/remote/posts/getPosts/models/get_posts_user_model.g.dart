// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_posts_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPostsUserRequestModelImpl _$$GetPostsUserRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPostsUserRequestModelImpl(
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$GetPostsUserRequestModelImplToJson(
        _$GetPostsUserRequestModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$GetPostsUserResponseModelImpl _$$GetPostsUserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPostsUserResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetPostsUserResponseModelImplToJson(
        _$GetPostsUserResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['id'] as String?,
      isActive: json['isActive'] as bool?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      groupData: json['groupData'] == null
          ? null
          : GroupData.fromJson(json['groupData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'interests': instance.interests,
      'userId': instance.userId,
      'postImage': instance.postImage,
      'slug': instance.slug,
      'title': instance.title,
      'description': instance.description,
      'groupId': instance.groupId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'groupData': instance.groupData,
    };

_$GroupDataImpl _$$GroupDataImplFromJson(Map<String, dynamic> json) =>
    _$GroupDataImpl(
      id: json['id'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      privacy: json['privacy'] as String?,
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$GroupDataImplToJson(_$GroupDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'interests': instance.interests,
      'privacy': instance.privacy,
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

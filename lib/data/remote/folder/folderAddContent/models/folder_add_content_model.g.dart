// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_add_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderAddContentRequestModelImpl _$$FolderAddContentRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FolderAddContentRequestModelImpl(
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$$FolderAddContentRequestModelImplToJson(
        _$FolderAddContentRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
    };

_$FolderAddContentResponseModelImpl
    _$$FolderAddContentResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$FolderAddContentResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FolderAddContentResponseModelImplToJson(
        _$FolderAddContentResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      userId: json['userId'] as String?,
      folderGroups: (json['folderGroups'] as List<dynamic>?)
          ?.map((e) => FolderGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'userId': instance.userId,
      'folderGroups': instance.folderGroups,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$FolderGroupImpl _$$FolderGroupImplFromJson(Map<String, dynamic> json) =>
    _$FolderGroupImpl(
      id: json['_id'] as String?,
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$$FolderGroupImplToJson(_$FolderGroupImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'groupId': instance.groupId,
    };

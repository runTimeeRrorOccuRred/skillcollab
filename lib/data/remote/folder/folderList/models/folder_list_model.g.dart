// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderListResponseModelImpl _$$FolderListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FolderListResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FolderListResponseModelImplToJson(
        _$FolderListResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
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

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'userId': instance.userId,
      'folderGroups': instance.folderGroups,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

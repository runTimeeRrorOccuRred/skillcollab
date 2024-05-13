// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_tags_repo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddTagsResquestModelImpl _$$AddTagsResquestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddTagsResquestModelImpl(
      postId: json['postId'] as String?,
      tag: (json['tag'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AddTagsResquestModelImplToJson(
        _$AddTagsResquestModelImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'tag': instance.tag,
    };

_$AddTagsResponseModelImpl _$$AddTagsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddTagsResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddTagsResponseModelImplToJson(
        _$AddTagsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl();

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{};

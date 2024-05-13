// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tutorial_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTutorialRequestModelImpl _$$CreateTutorialRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTutorialRequestModelImpl(
      groupId: json['groupId'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      gif: json['gif'] as String?,
      privacy: json['privacy'] as String?,
      bgColor: json['bgColor'] as String?,
      videoUrl: json['videoUrl'] as String?,
      tutorialImage: json['tutorialImage'] as String?,
    );

Map<String, dynamic> _$$CreateTutorialRequestModelImplToJson(
        _$CreateTutorialRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'data': instance.data,
      'gif': instance.gif,
      'privacy': instance.privacy,
      'bgColor': instance.bgColor,
      'videoUrl': instance.videoUrl,
      'tutorialImage': instance.tutorialImage,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      title: json['title'] as String?,
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
    };

_$CreateTutorialResponseModelImpl _$$CreateTutorialResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTutorialResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : CreateTutorialResponseModelData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateTutorialResponseModelImplToJson(
        _$CreateTutorialResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$CreateTutorialResponseModelDataImpl
    _$$CreateTutorialResponseModelDataImplFromJson(Map<String, dynamic> json) =>
        _$CreateTutorialResponseModelDataImpl(
          gif: json['gif'] as String?,
          videoUrl: json['videoUrl'] as String?,
          bgColor: json['bgColor'] as String?,
          id: json['_id'] as String?,
          groupId: json['groupId'] as String?,
          data: json['data'] == null
              ? null
              : DataData.fromJson(json['data'] as Map<String, dynamic>),
          tutorialImage: json['tutorialImage'] as String?,
          userId: json['userId'] as String?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
        );

Map<String, dynamic> _$$CreateTutorialResponseModelDataImplToJson(
        _$CreateTutorialResponseModelDataImpl instance) =>
    <String, dynamic>{
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      '_id': instance.id,
      'groupId': instance.groupId,
      'data': instance.data,
      'tutorialImage': instance.tutorialImage,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$DataDataImpl _$$DataDataImplFromJson(Map<String, dynamic> json) =>
    _$DataDataImpl(
      title: json['title'] as String?,
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$$DataDataImplToJson(_$DataDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_tutorial_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTutorialRequestModelImpl _$$UpdateTutorialRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTutorialRequestModelImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      videoUrl: json['videoUrl'] as String?,
      tutorialImage: json['tutorialImage'] as String?,
    );

Map<String, dynamic> _$$UpdateTutorialRequestModelImplToJson(
        _$UpdateTutorialRequestModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
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

_$UpdateTutorialResponseModelImpl _$$UpdateTutorialResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTutorialResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : UpdateTutorialResponseModelData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateTutorialResponseModelImplToJson(
        _$UpdateTutorialResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$UpdateTutorialResponseModelDataImpl
    _$$UpdateTutorialResponseModelDataImplFromJson(Map<String, dynamic> json) =>
        _$UpdateTutorialResponseModelDataImpl(
          data: json['data'] == null
              ? null
              : DataData.fromJson(json['data'] as Map<String, dynamic>),
          gif: json['gif'],
          videoUrl: json['videoUrl'],
          bgColor: json['bgColor'] as String?,
          privacy: json['privacy'] as String?,
          id: json['_id'] as String?,
          groupId: json['groupId'] as String?,
          tutorialImage: json['tutorialImage'] as String?,
          userId: json['userId'] as String?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
        );

Map<String, dynamic> _$$UpdateTutorialResponseModelDataImplToJson(
        _$UpdateTutorialResponseModelDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'privacy': instance.privacy,
      '_id': instance.id,
      'groupId': instance.groupId,
      'tutorialImage': instance.tutorialImage,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$DataDataImpl _$$DataDataImplFromJson(Map<String, dynamic> json) =>
    _$DataDataImpl(
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$DataDataImplToJson(_$DataDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

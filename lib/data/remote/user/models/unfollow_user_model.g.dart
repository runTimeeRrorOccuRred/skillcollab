// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unfollow_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnfollowUserResponseModelImpl _$$UnfollowUserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UnfollowUserResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UnfollowUserResponseModelImplToJson(
        _$UnfollowUserResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl();

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{};

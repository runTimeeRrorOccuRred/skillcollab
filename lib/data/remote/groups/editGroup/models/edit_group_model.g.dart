// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditGroupRequestModelImpl _$$EditGroupRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditGroupRequestModelImpl(
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      privacy: json['privacy'] as String?,
      oneMonthSubscriptionPrice: json['oneMonthSubscriptionPrice'] as String?,
      sixMonthSubscriptionPrice: json['sixMonthSubscriptionPrice'] as String?,
      twelveMonthSubscriptionPrice:
          json['twelveMonthSubscriptionPrice'] as String?,
      promoCode: json['promoCode'] as String?,
      rules: json['rules'] as String?,
      discount: json['discount'] as int?,
    );

Map<String, dynamic> _$$EditGroupRequestModelImplToJson(
        _$EditGroupRequestModelImpl instance) =>
    <String, dynamic>{
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'interests': instance.interests,
      'privacy': instance.privacy,
      'oneMonthSubscriptionPrice': instance.oneMonthSubscriptionPrice,
      'sixMonthSubscriptionPrice': instance.sixMonthSubscriptionPrice,
      'twelveMonthSubscriptionPrice': instance.twelveMonthSubscriptionPrice,
      'promoCode': instance.promoCode,
      'rules': instance.rules,
      'discount': instance.discount,
    };

_$EditGroupResponseModelImpl _$$EditGroupResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditGroupResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditGroupResponseModelImplToJson(
        _$EditGroupResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      privacy: json['privacy'] as String?,
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      rules: json['rules'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'interests': instance.interests,
      'privacy': instance.privacy,
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'rules': instance.rules,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'id': instance.id,
    };

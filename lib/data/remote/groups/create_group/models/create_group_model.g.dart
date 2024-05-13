// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateGroupRequestModelImpl _$$CreateGroupRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateGroupRequestModelImpl(
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      privacy: json['privacy'] as String?,
      rules: json['rules'] as String?,
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) => Follower.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateGroupRequestModelImplToJson(
        _$CreateGroupRequestModelImpl instance) =>
    <String, dynamic>{
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'interests': instance.interests,
      'privacy': instance.privacy,
      'rules': instance.rules,
      'followers': instance.followers,
    };

_$CreatePremiumGroupRequestModelImpl
    _$$CreatePremiumGroupRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$CreatePremiumGroupRequestModelImpl(
          groupPhoto: json['groupPhoto'] as String?,
          coverPhoto: json['coverPhoto'] as String?,
          name: json['name'] as String?,
          description: json['description'] as String?,
          location: json['location'] as String?,
          interests: (json['interests'] as List<dynamic>?)
              ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
              .toList(),
          privacy: json['privacy'] as String?,
          rules: json['rules'] as String?,
          one_month_subscription_price:
              json['one_month_subscription_price'] as int?,
          six_month_subscription_price:
              json['six_month_subscription_price'] as int?,
          twelve_month_subscription_price:
              json['twelve_month_subscription_price'] as int?,
          promoCode: json['promoCode'] as String?,
          discount: json['discount'] as int?,
          followers: (json['followers'] as List<dynamic>?)
              ?.map((e) => Follower.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CreatePremiumGroupRequestModelImplToJson(
        _$CreatePremiumGroupRequestModelImpl instance) =>
    <String, dynamic>{
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'interests': instance.interests,
      'privacy': instance.privacy,
      'rules': instance.rules,
      'one_month_subscription_price': instance.one_month_subscription_price,
      'six_month_subscription_price': instance.six_month_subscription_price,
      'twelve_month_subscription_price':
          instance.twelve_month_subscription_price,
      'promoCode': instance.promoCode,
      'discount': instance.discount,
      'followers': instance.followers,
    };

_$CreateGroupResponseModelImpl _$$CreateGroupResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateGroupResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateGroupResponseModelImplToJson(
        _$CreateGroupResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      privacy: json['privacy'] as String?,
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      one_month_subscription_price:
          json['one_month_subscription_price'] as int?,
      six_month_subscription_price:
          json['six_month_subscription_price'] as int?,
      twelve_month_subscription_price:
          json['twelve_month_subscription_price'] as int?,
      promoCode: json['promoCode'] as String?,
      discount: json['discount'] as int?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      rules: json['rules'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'privacy': instance.privacy,
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'interests': instance.interests,
      'one_month_subscription_price': instance.one_month_subscription_price,
      'six_month_subscription_price': instance.six_month_subscription_price,
      'twelve_month_subscription_price':
          instance.twelve_month_subscription_price,
      'promoCode': instance.promoCode,
      'discount': instance.discount,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'rules': instance.rules,
      '_id': instance.id,
    };

_$FollowerImpl _$$FollowerImplFromJson(Map<String, dynamic> json) =>
    _$FollowerImpl(
      userId: json['userId'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$FollowerImplToJson(_$FollowerImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'status': instance.status,
    };

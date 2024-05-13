// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_unsubscribe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupUnubscribeRequestModelImpl _$$GroupUnubscribeRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupUnubscribeRequestModelImpl(
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$$GroupUnubscribeRequestModelImplToJson(
        _$GroupUnubscribeRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
    };

_$GroupUnubscribeResponseModelImpl _$$GroupUnubscribeResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupUnubscribeResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroupUnubscribeResponseModelImplToJson(
        _$GroupUnubscribeResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      privacy: json['privacy'] as String?,
      oneMonthSubscriptionPrice: json['one_month_subscription_price'] as int?,
      sixMonthSubscriptionPrice: json['six_month_subscription_price'] as int?,
      twelveMonthSubscriptionPrice:
          json['twelve_month_subscription_price'] as int?,
      promoCode: json['promoCode'] as String?,
      discount: json['discount'] as int?,
      productId: json['productId'] as String?,
      id: json['_id'] as String?,
      name: json['name'] as String?,
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) => Follower.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: json['subscribers'] as List<dynamic>?,
      reviewer: json['reviewer'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'description': instance.description,
      'location': instance.location,
      'privacy': instance.privacy,
      'one_month_subscription_price': instance.oneMonthSubscriptionPrice,
      'six_month_subscription_price': instance.sixMonthSubscriptionPrice,
      'twelve_month_subscription_price': instance.twelveMonthSubscriptionPrice,
      'promoCode': instance.promoCode,
      'discount': instance.discount,
      'productId': instance.productId,
      '_id': instance.id,
      'name': instance.name,
      'followers': instance.followers,
      'userId': instance.userId,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'reviewer': instance.reviewer,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$FollowerImpl _$$FollowerImplFromJson(Map<String, dynamic> json) =>
    _$FollowerImpl(
      status: json['status'] as String?,
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$FollowerImplToJson(_$FollowerImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      '_id': instance.id,
      'userId': instance.userId,
    };

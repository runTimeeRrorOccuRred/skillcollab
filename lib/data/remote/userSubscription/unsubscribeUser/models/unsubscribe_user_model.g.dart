// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsubscribe_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnsubscribeUserRequestModelImpl _$$UnsubscribeUserRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UnsubscribeUserRequestModelImpl(
      subscribeUserId: json['subscribeUserId'] as String?,
    );

Map<String, dynamic> _$$UnsubscribeUserRequestModelImplToJson(
        _$UnsubscribeUserRequestModelImpl instance) =>
    <String, dynamic>{
      'subscribeUserId': instance.subscribeUserId,
    };

_$UnsubscribeUserResponseModelImpl _$$UnsubscribeUserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UnsubscribeUserResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UnsubscribeUserResponseModelImplToJson(
        _$UnsubscribeUserResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      productId: json['productId'] as String?,
      id: json['_id'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      accountId: json['accountId'] as String?,
      accountLink: json['accountLink'] as String?,
      customerId: json['customerId'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'interests': instance.interests,
      'productId': instance.productId,
      '_id': instance.id,
      'subscribers': instance.subscribers,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'accountId': instance.accountId,
      'accountLink': instance.accountLink,
      'customerId': instance.customerId,
    };

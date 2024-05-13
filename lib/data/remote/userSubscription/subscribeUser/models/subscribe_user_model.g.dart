// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscribe_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscribeUserRequestModelImpl _$$SubscribeUserRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscribeUserRequestModelImpl(
      subscriptionId: json['subscriptionId'] as String?,
      subscribeUserId: json['subscribeUserId'] as String?,
    );

Map<String, dynamic> _$$SubscribeUserRequestModelImplToJson(
        _$SubscribeUserRequestModelImpl instance) =>
    <String, dynamic>{
      'subscriptionId': instance.subscriptionId,
      'subscribeUserId': instance.subscribeUserId,
    };

_$SubscribeUserResponseModelImpl _$$SubscribeUserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscribeUserResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubscribeUserResponseModelImplToJson(
        _$SubscribeUserResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      isKyc: json['isKyc'] as bool?,
      productId: json['productId'] as String?,
      deviceToken: (json['deviceToken'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) => DataSubscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
      followers: json['followers'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      customerId: json['customerId'] as String?,
      otp: json['otp'],
      otpExpiry: json['otpExpiry'],
      accountId: json['accountId'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'isKyc': instance.isKyc,
      'productId': instance.productId,
      'deviceToken': instance.deviceToken,
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'coverPhoto': instance.coverPhoto,
      'profilePhoto': instance.profilePhoto,
      'description': instance.description,
      'location': instance.location,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'followers': instance.followers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'customerId': instance.customerId,
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry,
      'accountId': instance.accountId,
    };

_$DataSubscriberImpl _$$DataSubscriberImplFromJson(Map<String, dynamic> json) =>
    _$DataSubscriberImpl(
      subscriptionId: json['subscription_id'] as String?,
      isPaid: json['isPaid'] as bool?,
      id: json['_id'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$$DataSubscriberImplToJson(
        _$DataSubscriberImpl instance) =>
    <String, dynamic>{
      'subscription_id': instance.subscriptionId,
      'isPaid': instance.isPaid,
      '_id': instance.id,
      'user': instance.user,
      'expirationDate': instance.expirationDate?.toIso8601String(),
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      isKyc: json['isKyc'] as bool?,
      productId: json['productId'] as String?,
      deviceToken: (json['deviceToken'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) => UserSubscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) => Follower.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      customerId: json['customerId'] as String?,
      otp: json['otp'],
      otpExpiry: json['otpExpiry'],
      accountId: json['accountId'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'isKyc': instance.isKyc,
      'productId': instance.productId,
      'deviceToken': instance.deviceToken,
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'coverPhoto': instance.coverPhoto,
      'profilePhoto': instance.profilePhoto,
      'description': instance.description,
      'location': instance.location,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'followers': instance.followers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'customerId': instance.customerId,
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry,
      'accountId': instance.accountId,
    };

_$UserSubscriberImpl _$$UserSubscriberImplFromJson(Map<String, dynamic> json) =>
    _$UserSubscriberImpl(
      subscriptionId: json['subscription_id'] as String?,
      isPaid: json['isPaid'] as bool?,
      id: json['_id'] as String?,
      user: json['user'] as String?,
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$$UserSubscriberImplToJson(
        _$UserSubscriberImpl instance) =>
    <String, dynamic>{
      'subscription_id': instance.subscriptionId,
      'isPaid': instance.isPaid,
      '_id': instance.id,
      'user': instance.user,
      'expirationDate': instance.expirationDate?.toIso8601String(),
    };

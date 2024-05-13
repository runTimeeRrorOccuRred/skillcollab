// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_and_tips_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionAndTipsRequestModelImpl
    _$$TransactionAndTipsRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$TransactionAndTipsRequestModelImpl(
          type: json['type'] as String?,
        );

Map<String, dynamic> _$$TransactionAndTipsRequestModelImplToJson(
        _$TransactionAndTipsRequestModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$TransactionAndTipsResponseModelImpl
    _$$TransactionAndTipsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$TransactionAndTipsResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$TransactionAndTipsResponseModelImplToJson(
        _$TransactionAndTipsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['_id'] as String?,
      groupId: json['groupId'],
      subscriptionId: json['subscriptionId'] as String?,
      status: json['status'] as String?,
      toUser: json['toUser'] as String?,
      fromUser: json['fromUser'] == null
          ? null
          : FromUser.fromJson(json['fromUser'] as Map<String, dynamic>),
      amount: json['amount'] as num?,
      currency: json['currency'] as String?,
      netAmount: json['netAmount'] as num?,
      type: json['type'] as String?,
      day: json['day'] as String?,
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
      'groupId': instance.groupId,
      'subscriptionId': instance.subscriptionId,
      'status': instance.status,
      'toUser': instance.toUser,
      'fromUser': instance.fromUser,
      'amount': instance.amount,
      'currency': instance.currency,
      'netAmount': instance.netAmount,
      'type': instance.type,
      'day': instance.day,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$FromUserImpl _$$FromUserImplFromJson(Map<String, dynamic> json) =>
    _$FromUserImpl(
      id: json['_id'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      productId: json['productId'] as String?,
      deviceToken: (json['deviceToken'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) => Subscriber.fromJson(e as Map<String, dynamic>))
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
      otp: json['otp'] as int?,
      otpExpiry: json['otpExpiry'] == null
          ? null
          : DateTime.parse(json['otpExpiry'] as String),
    );

Map<String, dynamic> _$$FromUserImplToJson(_$FromUserImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'productId': instance.productId,
      'deviceToken': instance.deviceToken,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'coverPhoto': instance.coverPhoto,
      'profilePhoto': instance.profilePhoto,
      'description': instance.description,
      'location': instance.location,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'followers': instance.followers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry?.toIso8601String(),
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

_$SubscriberImpl _$$SubscriberImplFromJson(Map<String, dynamic> json) =>
    _$SubscriberImpl(
      subscriptionId: json['subscription_id'] as String?,
      isPaid: json['isPaid'] as bool?,
      id: json['_id'] as String?,
      user: json['user'] as String?,
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$$SubscriberImplToJson(_$SubscriberImpl instance) =>
    <String, dynamic>{
      'subscription_id': instance.subscriptionId,
      'isPaid': instance.isPaid,
      '_id': instance.id,
      'user': instance.user,
      'expirationDate': instance.expirationDate?.toIso8601String(),
    };

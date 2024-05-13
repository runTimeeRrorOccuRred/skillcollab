// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_subscribe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupSubscribeRequestModelImpl _$$GroupSubscribeRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupSubscribeRequestModelImpl(
      groupId: json['groupId'] as String?,
      groupCreatorUserId: json['groupCreatorUserId'] as String?,
      subscriptionId: json['subscriptionId'] as String?,
    );

Map<String, dynamic> _$$GroupSubscribeRequestModelImplToJson(
        _$GroupSubscribeRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'groupCreatorUserId': instance.groupCreatorUserId,
      'subscriptionId': instance.subscriptionId,
    };

_$GroupSubscribeResponseModelImpl _$$GroupSubscribeResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupSubscribeResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroupSubscribeResponseModelImplToJson(
        _$GroupSubscribeResponseModelImpl instance) =>
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
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) => Subscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
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

_$SubscriberImpl _$$SubscriberImplFromJson(Map<String, dynamic> json) =>
    _$SubscriberImpl(
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

Map<String, dynamic> _$$SubscriberImplToJson(_$SubscriberImpl instance) =>
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
      password: json['password'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: json['subscribers'] as List<dynamic>?,
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) => Follower.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      accountId: json['accountId'] as String?,
      accountLink: json['accountLink'] as String?,
      customerId: json['customerId'] as String?,
      otp: json['otp'] as int?,
      otpExpiry: json['otpExpiry'] == null
          ? null
          : DateTime.parse(json['otpExpiry'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'productId': instance.productId,
      'deviceToken': instance.deviceToken,
      '_id': instance.id,
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
      'accountId': instance.accountId,
      'accountLink': instance.accountLink,
      'customerId': instance.customerId,
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry?.toIso8601String(),
    };

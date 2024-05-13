// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_group_interest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyGroupInterestRequestModelImpl _$$MyGroupInterestRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyGroupInterestRequestModelImpl(
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyGroupInterestRequestModelImplToJson(
        _$MyGroupInterestRequestModelImpl instance) =>
    <String, dynamic>{
      'interests': instance.interests,
    };

_$MyGroupInterestResponseModelImpl _$$MyGroupInterestResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyGroupInterestResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyGroupInterestResponseModelImplToJson(
        _$MyGroupInterestResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) => Subscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'description': instance.description,
      'location': instance.location,
      'interests': instance.interests,
      'privacy': instance.privacy,
      'one_month_subscription_price': instance.oneMonthSubscriptionPrice,
      'six_month_subscription_price': instance.sixMonthSubscriptionPrice,
      'twelve_month_subscription_price': instance.twelveMonthSubscriptionPrice,
      'promoCode': instance.promoCode,
      'discount': instance.discount,
      'productId': instance.productId,
      '_id': instance.id,
      'name': instance.name,
      'userId': instance.userId,
      'subscribers': instance.subscribers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$SubscriberImpl _$$SubscriberImplFromJson(Map<String, dynamic> json) =>
    _$SubscriberImpl(
      subscriptionId: json['subscription_id'] as String?,
      isPaid: json['isPaid'] as bool?,
      id: json['_id'] as String?,
      user: json['user'] as String?,
      expirationDate: json['expirationDate'],
    );

Map<String, dynamic> _$$SubscriberImplToJson(_$SubscriberImpl instance) =>
    <String, dynamic>{
      'subscription_id': instance.subscriptionId,
      'isPaid': instance.isPaid,
      '_id': instance.id,
      'user': instance.user,
      'expirationDate': instance.expirationDate,
    };

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      type: json['type'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      productId: json['productId'],
      deviceToken: (json['deviceToken'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      id: json['_id'] as String?,
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
      otp: json['otp'] as int?,
      otpExpiry: json['otpExpiry'] == null
          ? null
          : DateTime.parse(json['otpExpiry'] as String),
      coverPhoto: json['coverPhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
      accountId: json['accountId'] as String?,
      accountLink: json['accountLink'] as String?,
      customerId: json['customerId'] as String?,
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'interests': instance.interests,
      'productId': instance.productId,
      'deviceToken': instance.deviceToken,
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry?.toIso8601String(),
      'coverPhoto': instance.coverPhoto,
      'description': instance.description,
      'location': instance.location,
      'profilePhoto': instance.profilePhoto,
      'subscribers': instance.subscribers,
      'accountId': instance.accountId,
      'accountLink': instance.accountLink,
      'customerId': instance.customerId,
    };

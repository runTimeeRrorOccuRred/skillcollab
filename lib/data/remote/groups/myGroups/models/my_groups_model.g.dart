// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_groups_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyGroupsResponseModelImpl _$$MyGroupsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyGroupsResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyGroupsResponseModelImplToJson(
        _$MyGroupsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      id: json['_id'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      privacy: json['privacy'] as String?,
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      discount: json['discount'] as int?,
      promoCode: json['promoCode'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
      pinData: (json['pinData'] as List<dynamic>?)
          ?.map((e) => PinDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      oneMonthSubscriptionPrice: json['one_month_subscription_price'],
      sixMonthSubscriptionPrice: json['six_month_subscription_price'],
      twelveMonthSubscriptionPrice: json['twelve_month_subscription_price'],
      productId: json['productId'],
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'interests': instance.interests,
      'privacy': instance.privacy,
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'discount': instance.discount,
      'promoCode': instance.promoCode,
      'subscribers': instance.subscribers,
      'pinData': instance.pinData,
      'one_month_subscription_price': instance.oneMonthSubscriptionPrice,
      'six_month_subscription_price': instance.sixMonthSubscriptionPrice,
      'twelve_month_subscription_price': instance.twelveMonthSubscriptionPrice,
      'productId': instance.productId,
    };

_$PinDatumImpl _$$PinDatumImplFromJson(Map<String, dynamic> json) =>
    _$PinDatumImpl(
      id: json['_id'] as String?,
      isPinned: json['isPinned'] as bool?,
      groupId: json['groupId'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PinDatumImplToJson(_$PinDatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'isPinned': instance.isPinned,
      'groupId': instance.groupId,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      id: json['_id'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      otp: json['otp'],
      otpExpiry: json['otpExpiry'],
      coverPhoto: json['coverPhoto'] as String?,
      description: json['description'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: json['location'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry,
      'coverPhoto': instance.coverPhoto,
      'description': instance.description,
      'interests': instance.interests,
      'location': instance.location,
      'profilePhoto': instance.profilePhoto,
      'subscribers': instance.subscribers,
    };

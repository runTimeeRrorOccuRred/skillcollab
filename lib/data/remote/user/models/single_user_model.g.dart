// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingleUserResponseModelImpl _$$SingleUserResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleUserResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SingleUserResponseModelImplToJson(
        _$SingleUserResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
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
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      expertise: json['expertise'] as String?,
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
      customerId: json['customerId'] as String?,
      follower: json['follower'] as int?,
      accountId: json['accountId'] as String?,
      isKyc: json['isKyc'] as bool?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
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
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'profilePhoto': instance.profilePhoto,
      'description': instance.description,
      'location': instance.location,
      'expertise': instance.expertise,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'followers': instance.followers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'customerId': instance.customerId,
      'follower': instance.follower,
      'accountId': instance.accountId,
      'isKyc': instance.isKyc,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirebaseLoginRequestImpl _$$FirebaseLoginRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FirebaseLoginRequestImpl(
      uid: json['uid'] as String?,
      email: json['email'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      type: json['type'] as String?,
      username: json['username'] as String?,
      deviceToken: json['deviceToken'] as String?,
    );

Map<String, dynamic> _$$FirebaseLoginRequestImplToJson(
        _$FirebaseLoginRequestImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'isEmailVerified': instance.isEmailVerified,
      'type': instance.type,
      'username': instance.username,
      'deviceToken': instance.deviceToken,
    };

_$FirebaseLoginResponseImpl _$$FirebaseLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FirebaseLoginResponseImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$FirebaseLoginResponseImplToJson(
        _$FirebaseLoginResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      isKyc: json['isKyc'] as bool?,
      expertise: json['expertise'],
      profilePhoto: json['profilePhoto'],
      coverPhoto: json['coverPhoto'],
      productId: json['productId'],
      deviceToken: (json['deviceToken'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'],
      id: json['_id'] as String?,
      uid: json['uid'] as String?,
      email: json['email'] as String?,
      type: json['type'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: json['subscribers'] as List<dynamic>?,
      followers: json['followers'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      customerId: json['customerId'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'isKyc': instance.isKyc,
      'expertise': instance.expertise,
      'profilePhoto': instance.profilePhoto,
      'coverPhoto': instance.coverPhoto,
      'productId': instance.productId,
      'deviceToken': instance.deviceToken,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      '_id': instance.id,
      'uid': instance.uid,
      'email': instance.email,
      'type': instance.type,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'followers': instance.followers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'customerId': instance.customerId,
    };

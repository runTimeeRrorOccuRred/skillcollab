// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_people_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExplorePeopleResponseModelImpl _$$ExplorePeopleResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExplorePeopleResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PeopleDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExplorePeopleResponseModelImplToJson(
        _$ExplorePeopleResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$PeopleDatumImpl _$$PeopleDatumImplFromJson(Map<String, dynamic> json) =>
    _$PeopleDatumImpl(
      id: json['_id'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      expertise: json['expertise'] as String?,
      productId: json['productId'],
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
      otp: json['otp'],
      otpExpiry: json['otpExpiry'],
      follower: json['follower'] as int?,
      publicPost: json['publicPost'] as int?,
      premiumPost: json['premiumPost'] as int?,
      isFollowing: json['isFollowing'] as bool?,
    );

Map<String, dynamic> _$$PeopleDatumImplToJson(_$PeopleDatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'expertise': instance.expertise,
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
      'otpExpiry': instance.otpExpiry,
      'follower': instance.follower,
      'publicPost': instance.publicPost,
      'premiumPost': instance.premiumPost,
      'isFollowing': instance.isFollowing,
    };

_$ExplorePeopleRequestModelImpl _$$ExplorePeopleRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExplorePeopleRequestModelImpl(
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      searchKey: json['searchKey'] as String?,
    );

Map<String, dynamic> _$$ExplorePeopleRequestModelImplToJson(
        _$ExplorePeopleRequestModelImpl instance) =>
    <String, dynamic>{
      'interests': instance.interests,
      'searchKey': instance.searchKey,
    };

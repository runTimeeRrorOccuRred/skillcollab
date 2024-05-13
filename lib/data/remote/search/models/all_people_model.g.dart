// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_people_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllPeopleRequestModelImpl _$$AllPeopleRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AllPeopleRequestModelImpl(
      searchKey: json['searchKey'] as String?,
      interests: json['interests'] as String?,
      timeFilter: json['timeFilter'] as String?,
    );

Map<String, dynamic> _$$AllPeopleRequestModelImplToJson(
        _$AllPeopleRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'interests': instance.interests,
      'timeFilter': instance.timeFilter,
    };

_$AllPeopleResponseModelImpl _$$AllPeopleResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AllPeopleResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AllPeopleResponseModelImplToJson(
        _$AllPeopleResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      id: json['_id'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      productId: json['productId'],
      deviceToken: (json['deviceToken'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      expertise: json['expertise'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: json['subscribers'] as List<dynamic>?,
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Follower.fromJson(e as Map<String, dynamic>))
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
      publicPost: json['publicPost'] as int?,
      premiumPost: json['premiumPost'] as int?,
      isFollowing: json['isFollowing'] as bool?,
      uid: json['uid'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'productId': instance.productId,
      'deviceToken': instance.deviceToken,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'coverPhoto': instance.coverPhoto,
      'profilePhoto': instance.profilePhoto,
      'description': instance.description,
      'location': instance.location,
      'expertise': instance.expertise,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'followers': instance.followers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry?.toIso8601String(),
      'publicPost': instance.publicPost,
      'premiumPost': instance.premiumPost,
      'isFollowing': instance.isFollowing,
      'uid': instance.uid,
      'type': instance.type,
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

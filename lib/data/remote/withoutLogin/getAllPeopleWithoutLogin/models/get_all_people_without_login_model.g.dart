// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_people_without_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllPeopleWithoutLoginRequestModelImpl
    _$$GetAllPeopleWithoutLoginRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllPeopleWithoutLoginRequestModelImpl(
          searchKey: json['searchKey'] as String?,
          interests: json['interests'] as String?,
          timeFilter: json['timeFilter'] as String?,
        );

Map<String, dynamic> _$$GetAllPeopleWithoutLoginRequestModelImplToJson(
        _$GetAllPeopleWithoutLoginRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'interests': instance.interests,
      'timeFilter': instance.timeFilter,
    };

_$GetAllPeopleWithoutLoginResponseModelImpl
    _$$GetAllPeopleWithoutLoginResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllPeopleWithoutLoginResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => People.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetAllPeopleWithoutLoginResponseModelImplToJson(
        _$GetAllPeopleWithoutLoginResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$PeopleImpl _$$PeopleImplFromJson(Map<String, dynamic> json) => _$PeopleImpl(
      postImage: json['postImage'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      checkIn: json['checkIn'] as String?,
      checkInImage: json['checkInImage'] as String?,
      groupId: json['groupId'] == null
          ? null
          : GroupId.fromJson(json['groupId'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool?,
      gif: json['gif'] as String?,
      videoUrl: json['videoUrl'] as String?,
      bgColor: json['bgColor'] as String?,
      privacy: json['privacy'] as String?,
      hide: json['hide'] as List<dynamic>?,
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'],
      id: json['_id'] as String?,
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      title: json['title'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PeopleImplToJson(_$PeopleImpl instance) =>
    <String, dynamic>{
      'postImage': instance.postImage,
      'description': instance.description,
      'slug': instance.slug,
      'checkIn': instance.checkIn,
      'checkInImage': instance.checkInImage,
      'groupId': instance.groupId,
      'isActive': instance.isActive,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'privacy': instance.privacy,
      'hide': instance.hide,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      '_id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'interests': instance.interests,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      isKyc: json['isKyc'] as bool?,
      expertise: json['expertise'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      productId: json['productId'],
      deviceToken: (json['deviceToken'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'],
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
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
      customerId: json['customerId'] as String?,
      otp: json['otp'],
      otpExpiry: json['otpExpiry'],
      accountId: json['accountId'] as String?,
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
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
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
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

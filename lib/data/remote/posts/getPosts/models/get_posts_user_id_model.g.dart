// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_posts_user_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPostsByUserIdRequestModelImpl _$$GetPostsByUserIdRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPostsByUserIdRequestModelImpl(
      searchKey: json['searchKey'] as String?,
      interests: json['interests'] as String?,
      timeFilter: json['timeFilter'] as String?,
      privacy: json['privacy'] as String?,
    );

Map<String, dynamic> _$$GetPostsByUserIdRequestModelImplToJson(
        _$GetPostsByUserIdRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'interests': instance.interests,
      'timeFilter': instance.timeFilter,
      'privacy': instance.privacy,
    };

_$GetPostsByUserIdResponseModelImpl
    _$$GetPostsByUserIdResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$GetPostsByUserIdResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetPostsByUserIdResponseModelImplToJson(
        _$GetPostsByUserIdResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      postImage: json['postImage'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      checkIn: json['checkIn'] as String?,
      checkInImage: json['checkInImage'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
      groupId: json['groupId'] as String?,
      isActive: json['isActive'] as bool?,
      gif: json['gif'] as String?,
      likeDislike: json['likeDislike'] == null
          ? null
          : LikeDislike.fromJson(json['likeDislike'] as Map<String, dynamic>),
      videoUrl: json['videoUrl'] as String?,
      bgColor: json['bgColor'] as String?,
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
      privacy: json['privacy'] as String?,
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
      likeCounts: json['likeCounts'] as int?,
      dislikeCounts: json['disLikeCounts'] as int?,
      commentCounts: json['commentCounts'] as int?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'postImage': instance.postImage,
      'slug': instance.slug,
      'description': instance.description,
      'checkIn': instance.checkIn,
      'checkInImage': instance.checkInImage,
      'subscribers': instance.subscribers,
      'groupId': instance.groupId,
      'isActive': instance.isActive,
      'gif': instance.gif,
      'likeDislike': instance.likeDislike,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'privacy': instance.privacy,
      '_id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'interests': instance.interests,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'likeCounts': instance.likeCounts,
      'disLikeCounts': instance.dislikeCounts,
      'commentCounts': instance.commentCounts,
    };

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
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
      expertise: json['expertise'] as String?,
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
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
      otpExpiry: json['otpExpiry'],
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
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
      'expertise': instance.expertise,
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
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'otpExpiry': instance.otpExpiry,
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

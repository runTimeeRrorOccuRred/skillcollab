// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_posts_by_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPostsByGroupRequestModelImpl _$$GetPostsByGroupRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPostsByGroupRequestModelImpl(
      searchKey: json['searchKey'] as String?,
      timeFilter: json['timeFilter'] as String?,
    );

Map<String, dynamic> _$$GetPostsByGroupRequestModelImplToJson(
        _$GetPostsByGroupRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'timeFilter': instance.timeFilter,
    };

_$GetPostsByGroupModelImpl _$$GetPostsByGroupModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPostsByGroupModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetPostsByGroupModelImplToJson(
        _$GetPostsByGroupModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      subscribers: json['subscribers'] as List<dynamic>?,
      groupId: json['groupId'],
      isActive: json['isActive'] as bool?,
      gif: json['gif'] as String?,
      videoUrl: json['videoUrl'] as String?,
      bgColor: json['bgColor'] as String?,
      privacy: json['privacy'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['_id'] as String?,
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      postImage: json['postImage'] as String?,
      slug: json['slug'] as String?,
      checkIn: json['checkIn'] as String?,
      checkInImage: json['checkInImage'] as String?,
      title: json['title'] as String?,
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      commentCounts: json['commentCounts'] as int?,
      likeCounts: json['likeCounts'] as int?,
      dislikeCounts: json['disLikeCounts'] as int?,
      likeDislike: json['likeDislike'] == null
          ? null
          : LikeDislike.fromJson(json['likeDislike'] as Map<String, dynamic>),
      follower: json['follower'] as int?,
      groupData: json['groupData'] == null
          ? null
          : GroupData.fromJson(json['groupData'] as Map<String, dynamic>),
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) => Follower.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'subscribers': instance.subscribers,
      'groupId': instance.groupId,
      'isActive': instance.isActive,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'privacy': instance.privacy,
      'interests': instance.interests,
      '_id': instance.id,
      'userId': instance.userId,
      'postImage': instance.postImage,
      'slug': instance.slug,
      'checkIn': instance.checkIn,
      'checkInImage': instance.checkInImage,
      'title': instance.title,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'commentCounts': instance.commentCounts,
      'likeCounts': instance.likeCounts,
      'disLikeCounts': instance.dislikeCounts,
      'likeDislike': instance.likeDislike,
      'follower': instance.follower,
      'groupData': instance.groupData,
      'followers': instance.followers,
    };

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      type: json['type'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      productId: json['productId'],
      id: json['_id'] as String?,
      expertise: json['expertise'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
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
      location: json['location'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'interests': instance.interests,
      'productId': instance.productId,
      '_id': instance.id,
      'expertise': instance.expertise,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'phone': instance.phone,
      'password': instance.password,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry,
      'coverPhoto': instance.coverPhoto,
      'description': instance.description,
      'location': instance.location,
      'profilePhoto': instance.profilePhoto,
      'subscribers': instance.subscribers,
    };

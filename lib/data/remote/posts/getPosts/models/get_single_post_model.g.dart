// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_single_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetSinglePostResponseModelImpl _$$GetSinglePostResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSinglePostResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetSinglePostResponseModelImplToJson(
        _$GetSinglePostResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      postImage: json['postImage'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      checkIn: json['checkIn'],
      checkInImage: json['checkInImage'],
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
      title: json['title'] as String?,
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      likeCounts: json['totalLikeDislike'] as int?,
      dislikeCounts: json['totalDislike'] as int?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userLikeDislike: json['userLikeDislike'] == null
          ? null
          : UserLikeDislike.fromJson(
              json['userLikeDislike'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
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
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'privacy': instance.privacy,
      'interests': instance.interests,
      '_id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'createdAt': instance.createdAt?.toIso8601String(),
      'totalLikeDislike': instance.likeCounts,
      'totalDislike': instance.dislikeCounts,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'userLikeDislike': instance.userLikeDislike,
    };

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
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
      coverPhoto: json['coverPhoto'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
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
      followers: json['followers'] as List<dynamic>?,
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
    <String, dynamic>{
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
      'coverPhoto': instance.coverPhoto,
      'profilePhoto': instance.profilePhoto,
      'description': instance.description,
      'location': instance.location,
      'subscribers': instance.subscribers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'otp': instance.otp,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'otpExpiry': instance.otpExpiry,
      'followers': instance.followers,
    };

_$UserLikeDislikeImpl _$$UserLikeDislikeImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLikeDislikeImpl(
      postId: json['postId'],
      tutorialId: json['tutorialId'],
      commentId: json['commentId'] as String?,
      questionId: json['questionId'],
      isLike: json['isLike'] as bool?,
      isDislike: json['isDislike'] as bool?,
      id: json['_id'] as String?,
      userId: json['userId'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserLikeDislikeImplToJson(
        _$UserLikeDislikeImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'tutorialId': instance.tutorialId,
      'commentId': instance.commentId,
      'questionId': instance.questionId,
      'isLike': instance.isLike,
      'isDislike': instance.isDislike,
      '_id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_public_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExplorePublicPostResponseModelImpl
    _$$ExplorePublicPostResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$ExplorePublicPostResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => PostDatum.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ExplorePublicPostResponseModelImplToJson(
        _$ExplorePublicPostResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$PostDatumImpl _$$PostDatumImplFromJson(Map<String, dynamic> json) =>
    _$PostDatumImpl(
      id: json['_id'] as String?,
      postImage: json['postImage'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      checkIn: json['checkIn'] as String?,
      checkInImage: json['checkInImage'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
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
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      title: json['title'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => ExploreComment.fromJson(e as Map<String, dynamic>))
          .toList(),
      commentCounts: json['commentCounts'] as int?,
      likeDislike: json['likeDislike'] == null
          ? null
          : LikeDislike.fromJson(json['likeDislike'] as Map<String, dynamic>),
      isFollowing: json['isFollowing'] as bool?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      rating: json['rating'] as int?,
      likeCounts: json['likeCounts'] as int?,
      dislikeCounts: json['disLikeCounts'] as int?,
    );

Map<String, dynamic> _$$PostDatumImplToJson(_$PostDatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
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
      'hide': instance.hide,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'userId': instance.userId,
      'title': instance.title,
      'interests': instance.interests,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'comments': instance.comments,
      'commentCounts': instance.commentCounts,
      'likeDislike': instance.likeDislike,
      'isFollowing': instance.isFollowing,
      'averageRating': instance.averageRating,
      'rating': instance.rating,
      'likeCounts': instance.likeCounts,
      'disLikeCounts': instance.dislikeCounts,
    };

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      id: json['_id'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      isKyc: json['isKyc'] as bool?,
      expertise: json['expertise'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      productId: json['productId'] as String?,
      deviceToken: (json['deviceToken'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'],
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
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
      customerId: json['customerId'] as String?,
      otp: json['otp'],
      otpExpiry: json['otpExpiry'],
      accountId: json['accountId'] as String?,
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
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
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_people_with_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllPeopleWithLoginRequestModelImpl
    _$$GetAllPeopleWithLoginRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllPeopleWithLoginRequestModelImpl(
          searchKey: json['searchKey'] as String?,
          interests: json['interests'] as String?,
          timeFilter: json['timeFilter'] as String?,
          feedFilter: json['feedFilter'] as String?,
        );

Map<String, dynamic> _$$GetAllPeopleWithLoginRequestModelImplToJson(
        _$GetAllPeopleWithLoginRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'interests': instance.interests,
      'timeFilter': instance.timeFilter,
      'feedFilter': instance.feedFilter,
    };

_$GetAllPeopleWithLoginResponseModelImpl
    _$$GetAllPeopleWithLoginResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllPeopleWithLoginResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  DashboardPeopleData.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetAllPeopleWithLoginResponseModelImplToJson(
        _$GetAllPeopleWithLoginResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DashboardPeopleDataImpl _$$DashboardPeopleDataImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardPeopleDataImpl(
      id: json['_id'] as String?,
      postImage: json['postImage'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      checkIn: json['checkIn'] as String?,
      checkInImage: json['checkInImage'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
      groupId: json['groupId'],
      isActive: json['isActive'] as bool?,
      gif: json['gif'] as String?,
      videoUrl: json['videoUrl'] as String?,
      bgColor: json['bgColor'] as String?,
      privacy: json['privacy'] as String?,
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
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
      combinedCount: json['combinedCount'] as int?,
      commentCounts: json['commentCounts'] as int?,
      likeDislike: json['likeDislike'] == null
          ? null
          : LikeDislike.fromJson(json['likeDislike'] as Map<String, dynamic>),
      likeCounts: json['likeCounts'] as int?,
      dislikeCounts: json['disLikeCounts'] as int?,
      isFollowing: json['isFollowing'] as bool?,
    );

Map<String, dynamic> _$$DashboardPeopleDataImplToJson(
        _$DashboardPeopleDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'postImage': instance.postImage,
      'description': instance.description,
      'slug': instance.slug,
      'checkIn': instance.checkIn,
      'checkInImage': instance.checkInImage,
      'subscribers': instance.subscribers,
      'groupId': instance.groupId,
      'isActive': instance.isActive,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'privacy': instance.privacy,
      'userId': instance.userId,
      'title': instance.title,
      'interests': instance.interests,
      'createdAt': instance.createdAt?.toIso8601String(),
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'comments': instance.comments,
      'combinedCount': instance.combinedCount,
      'commentCounts': instance.commentCounts,
      'likeDislike': instance.likeDislike,
      'likeCounts': instance.likeCounts,
      'disLikeCounts': instance.dislikeCounts,
      'isFollowing': instance.isFollowing,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: json['_id'] as String?,
      postId: json['postId'] as String?,
      tutorialId: json['tutorialId'],
      questionId: json['questionId'],
      parentId: json['parentId'],
      userId: json['userId'] as String?,
      comment: json['comment'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'postId': instance.postId,
      'tutorialId': instance.tutorialId,
      'questionId': instance.questionId,
      'parentId': instance.parentId,
      'userId': instance.userId,
      'comment': instance.comment,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
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
      expertise: json['expertise'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Interest.fromJson(e as Map<String, dynamic>))
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
      otp: json['otp'],
      otpExpiry: json['otpExpiry'],
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
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
      'expertise': instance.expertise,
      'description': instance.description,
      'location': instance.location,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'followers': instance.followers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'otp': instance.otp,
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

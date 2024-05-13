// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_tutorial_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TutorialGetCommentResponseModelImpl
    _$$TutorialGetCommentResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$TutorialGetCommentResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => TutorialComment.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$TutorialGetCommentResponseModelImplToJson(
        _$TutorialGetCommentResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$TutorialCommentImpl _$$TutorialCommentImplFromJson(
        Map<String, dynamic> json) =>
    _$TutorialCommentImpl(
      postId: json['postId'],
      tutorialId: json['tutorialId'] as String?,
      questionId: json['questionId'],
      parentId: json['parentId'],
      id: json['_id'] as String?,
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      comment: json['comment'] as String?,
      type: json['type'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      userLikeDislike: json['userLikeDislike'] == null
          ? null
          : UserLikeDislike.fromJson(
              json['userLikeDislike'] as Map<String, dynamic>),
      count: json['count'] as int?,
      likeCounts: json['likeCounts'] as int?,
      dislikeCounts: json['disLikeCounts'] as int?,
    );

Map<String, dynamic> _$$TutorialCommentImplToJson(
        _$TutorialCommentImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'tutorialId': instance.tutorialId,
      'questionId': instance.questionId,
      'parentId': instance.parentId,
      '_id': instance.id,
      'userId': instance.userId,
      'comment': instance.comment,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'userLikeDislike': instance.userLikeDislike,
      'count': instance.count,
      'likeCounts': instance.likeCounts,
      'disLikeCounts': instance.dislikeCounts,
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
      password: json['password'] as String?,
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
      otpExpiry: json['otpExpiry'],
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
      'password': instance.password,
      'coverPhoto': instance.coverPhoto,
      'profilePhoto': instance.profilePhoto,
      'description': instance.description,
      'location': instance.location,
      'subscribers': instance.subscribers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry,
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

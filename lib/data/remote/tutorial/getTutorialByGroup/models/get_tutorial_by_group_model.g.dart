// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_tutorial_by_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetTutorialResponseModelImpl _$$GetTutorialResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetTutorialResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TutorialData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetTutorialResponseModelImplToJson(
        _$GetTutorialResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$TutorialDataImpl _$$TutorialDataImplFromJson(Map<String, dynamic> json) =>
    _$TutorialDataImpl(
      id: json['_id'] as String?,
      gif: json['gif'],
      videoUrl: json['videoUrl'],
      bgColor: json['bgColor'],
      groupId: json['groupId'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      tutorialImage: json['tutorialImage'] as String?,
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      groupDetails: json['groupDetails'] == null
          ? null
          : GroupDetails.fromJson(json['groupDetails'] as Map<String, dynamic>),
      commentCounts: json['commentCount'] as int?,
      likeCounts: json['likeCounts'] as int?,
      dislikeCounts: json['disLikeCounts'] as int?,
      likeDislike: json['likeDislike'] == null
          ? null
          : LikeDislike.fromJson(json['likeDislike'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TutorialDataImplToJson(_$TutorialDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'groupId': instance.groupId,
      'data': instance.data,
      'tutorialImage': instance.tutorialImage,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'groupDetails': instance.groupDetails,
      'commentCount': instance.commentCounts,
      'likeCounts': instance.likeCounts,
      'disLikeCounts': instance.dislikeCounts,
      'likeDislike': instance.likeDislike,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      title: json['title'] as String?,
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
    };

_$LikeDislikeImpl _$$LikeDislikeImplFromJson(Map<String, dynamic> json) =>
    _$LikeDislikeImpl(
      postId: json['postId'] as String?,
      tutorialId: json['tutorialId'] as String?,
      questionId: json['questionId'] as String?,
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

Map<String, dynamic> _$$LikeDislikeImplToJson(_$LikeDislikeImpl instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'tutorialId': instance.tutorialId,
      'questionId': instance.questionId,
      'isLike': instance.isLike,
      'isDislike': instance.isDislike,
      '_id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$GroupDetailsImpl _$$GroupDetailsImplFromJson(Map<String, dynamic> json) =>
    _$GroupDetailsImpl(
      id: json['_id'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      privacy: json['privacy'] as String?,
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$GroupDetailsImplToJson(_$GroupDetailsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'interests': instance.interests,
      'privacy': instance.privacy,
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      id: json['_id'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: json['subscribers'] as List<dynamic>?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      customerId: json['customerId'] as String?,
      accountId: json['accountId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      accountLink: json['accountLink'] as String?,
      otp: json['otp'],
      otpExpiry: json['otpExpiry'],
      coverPhoto: json['coverPhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) => Follower.fromJson(e as Map<String, dynamic>))
          .toList(),
      expertise: json['expertise'] as String?,
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'customerId': instance.customerId,
      'accountId': instance.accountId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'accountLink': instance.accountLink,
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry,
      'coverPhoto': instance.coverPhoto,
      'description': instance.description,
      'location': instance.location,
      'profilePhoto': instance.profilePhoto,
      'followers': instance.followers,
      'expertise': instance.expertise,
    };

_$GetTutorialRequestModelImpl _$$GetTutorialRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetTutorialRequestModelImpl(
      searchKey: json['searchKey'] as String?,
      filter: json['filter'] as String?,
    );

Map<String, dynamic> _$$GetTutorialRequestModelImplToJson(
        _$GetTutorialRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'filter': instance.filter,
    };

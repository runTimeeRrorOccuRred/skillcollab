// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_question_by_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetQuestionByGroupModelImpl _$$GetQuestionByGroupModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetQuestionByGroupModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => QuestionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetQuestionByGroupModelImplToJson(
        _$GetQuestionByGroupModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$QuestionDataImpl _$$QuestionDataImplFromJson(Map<String, dynamic> json) =>
    _$QuestionDataImpl(
      id: json['_id'] as String?,
      gif: json['gif'] as String?,
      videoUrl: json['videoUrl'] as String?,
      bgColor: json['bgColor'] as String?,
      groupId: json['groupId'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      questionImage: json['questionImage'] as String?,
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
      commentCount: json['commentCount'] as int?,
      likeCounts: json['likeCounts'] as int?,
      dislikeCounts: json['disLikeCounts'] as int?,
      likeDislike: json['likeDislike'] == null
          ? null
          : LikeDislike.fromJson(json['likeDislike'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuestionDataImplToJson(_$QuestionDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'groupId': instance.groupId,
      'data': instance.data,
      'questionImage': instance.questionImage,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'groupDetails': instance.groupDetails,
      'commentCount': instance.commentCount,
      'likeCounts': instance.likeCounts,
      'disLikeCounts': instance.dislikeCounts,
      'likeDislike': instance.likeDislike,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };

_$LikeDislikeImpl _$$LikeDislikeImplFromJson(Map<String, dynamic> json) =>
    _$LikeDislikeImpl(
      postId: json['postId'],
      tutorialId: json['tutorialId'],
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
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      expertise: json['expertise'] as String?,
      otp: json['otp'],
      otpExpiry: json['otpExpiry'],
      accountId: json['accountId'] as String?,
      accountLink: json['accountLink'] as String?,
      customerId: json['customerId'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: json['subscribers'] as List<dynamic>?,
      coverPhoto: json['coverPhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) => Follower.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'expertise': instance.expertise,
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry,
      'accountId': instance.accountId,
      'accountLink': instance.accountLink,
      'customerId': instance.customerId,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'coverPhoto': instance.coverPhoto,
      'description': instance.description,
      'location': instance.location,
      'profilePhoto': instance.profilePhoto,
      'followers': instance.followers,
    };

_$GetQuestionByGroupRequestModelImpl
    _$$GetQuestionByGroupRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$GetQuestionByGroupRequestModelImpl(
          searchKey: json['searchKey'] as String?,
          filter: json['filter'] as String?,
        );

Map<String, dynamic> _$$GetQuestionByGroupRequestModelImplToJson(
        _$GetQuestionByGroupRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'filter': instance.filter,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_groups_and_people_with_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllGroupsAndPeopleWithLoginRequestModelImpl
    _$$GetAllGroupsAndPeopleWithLoginRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllGroupsAndPeopleWithLoginRequestModelImpl(
          searchKey: json['searchKey'] as String?,
          interests: json['interests'] as String?,
          timeFilter: json['timeFilter'] as String?,
          feedFilter: json['feedFilter'] as String?,
        );

Map<String, dynamic> _$$GetAllGroupsAndPeopleWithLoginRequestModelImplToJson(
        _$GetAllGroupsAndPeopleWithLoginRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'interests': instance.interests,
      'timeFilter': instance.timeFilter,
      'feedFilter': instance.feedFilter,
    };

_$GetAllGroupsAndPeopleWithLoginResponseModelImpl
    _$$GetAllGroupsAndPeopleWithLoginResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllGroupsAndPeopleWithLoginResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => PeopleAndGroupPost.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetAllGroupsAndPeopleWithLoginResponseModelImplToJson(
        _$GetAllGroupsAndPeopleWithLoginResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$PeopleAndGroupPostImpl _$$PeopleAndGroupPostImplFromJson(
        Map<String, dynamic> json) =>
    _$PeopleAndGroupPostImpl(
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
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      title: json['title'] as String?,
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      comments: json['comments'] as List<dynamic>?,
      likeCounts: json['likeCounts'] as int?,
      dislikeCounts: json['disLikeCounts'] as int?,
      commentCounts: json['commentCounts'] as int?,
      likeDislike: json['likeDislike'] == null
          ? null
          : LikeDislike.fromJson(json['likeDislike'] as Map<String, dynamic>),
      averageRating: json['averageRating'],
      isFollowing: json['isFollowing'] as bool?,
    );

Map<String, dynamic> _$$PeopleAndGroupPostImplToJson(
        _$PeopleAndGroupPostImpl instance) =>
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
      'userId': instance.userId,
      'title': instance.title,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'interests': instance.interests,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'comments': instance.comments,
      'likeCounts': instance.likeCounts,
      'disLikeCounts': instance.dislikeCounts,
      'commentCounts': instance.commentCounts,
      'likeDislike': instance.likeDislike,
      'averageRating': instance.averageRating,
      'isFollowing': instance.isFollowing,
    };

_$GroupIdImpl _$$GroupIdImplFromJson(Map<String, dynamic> json) =>
    _$GroupIdImpl(
      id: json['_id'] as String?,
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      privacy: json['privacy'] as String?,
      oneMonthSubscriptionPrice: json['one_month_subscription_price'],
      sixMonthSubscriptionPrice: json['six_month_subscription_price'],
      twelveMonthSubscriptionPrice: json['twelve_month_subscription_price'],
      promoCode: json['promoCode'],
      discount: json['discount'],
      productId: json['productId'],
      name: json['name'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Follower.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map((e) => Reviewer.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$GroupIdImplToJson(_$GroupIdImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'description': instance.description,
      'location': instance.location,
      'privacy': instance.privacy,
      'one_month_subscription_price': instance.oneMonthSubscriptionPrice,
      'six_month_subscription_price': instance.sixMonthSubscriptionPrice,
      'twelve_month_subscription_price': instance.twelveMonthSubscriptionPrice,
      'promoCode': instance.promoCode,
      'discount': instance.discount,
      'productId': instance.productId,
      'name': instance.name,
      'interests': instance.interests,
      'userId': instance.userId,
      'subscribers': instance.subscribers,
      'followers': instance.followers,
      'reviewer': instance.reviewer,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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

_$ReviewerImpl _$$ReviewerImplFromJson(Map<String, dynamic> json) =>
    _$ReviewerImpl(
      review: json['review'],
      title: json['title'] as String?,
      id: json['_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      rating: json['rating'] as int?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$ReviewerImplToJson(_$ReviewerImpl instance) =>
    <String, dynamic>{
      'review': instance.review,
      'title': instance.title,
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'rating': instance.rating,
      'userId': instance.userId,
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
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
      expertise: json['expertise'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: json['subscribers'] as List<dynamic>?,
      followers: json['followers'] as List<dynamic>?,
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
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'coverPhoto': instance.coverPhoto,
      'profilePhoto': instance.profilePhoto,
      'description': instance.description,
      'location': instance.location,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'expertise': instance.expertise,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'followers': instance.followers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'otp': instance.otp,
      'otpExpiry': instance.otpExpiry,
    };

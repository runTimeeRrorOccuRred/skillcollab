// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_public_posts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPublicPostsRequestModelImpl _$$GetPublicPostsRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPublicPostsRequestModelImpl(
      searchKey: json['searchKey'] as String?,
      interests: json['interests'] as String?,
      timeFilter: json['timeFilter'] as String?,
      feedFilter: json['feedFilter'] as String?,
    );

Map<String, dynamic> _$$GetPublicPostsRequestModelImplToJson(
        _$GetPublicPostsRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'interests': instance.interests,
      'timeFilter': instance.timeFilter,
      'feedFilter': instance.feedFilter,
    };

_$GetPublicPostsResponseModelImpl _$$GetPublicPostsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPublicPostsResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DashboardGroupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetPublicPostsResponseModelImplToJson(
        _$GetPublicPostsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DashboardGroupModelImpl _$$DashboardGroupModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardGroupModelImpl(
      id: json['_id'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
      groupId: json['groupId'] as String?,
      isActive: json['isActive'] as bool?,
      gif: json['gif'] as String?,
      videoUrl: json['videoUrl'] as String?,
      bgColor: json['bgColor'] as String?,
      privacy: json['privacy'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      postImage: json['postImage'] as String?,
      slug: json['slug'] as String?,
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
      checkIn: json['checkIn'] as String?,
      checkInImage: json['checkInImage'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      groupData: json['groupData'] == null
          ? null
          : GroupData.fromJson(json['groupData'] as Map<String, dynamic>),
      commentCounts: json['commentCounts'] as int?,
      likeCounts: json['likeCounts'] as int?,
      dislikeCounts: json['disLikeCounts'] as int?,
      likeDislike: json['likeDislike'] == null
          ? null
          : LikeDislike.fromJson(json['likeDislike'] as Map<String, dynamic>),
      follower: json['follower'] as int?,
      rating: json['rating'] as int?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      isFollowing: json['isFollowing'] as bool?,
    );

Map<String, dynamic> _$$DashboardGroupModelImplToJson(
        _$DashboardGroupModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'subscribers': instance.subscribers,
      'groupId': instance.groupId,
      'isActive': instance.isActive,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'privacy': instance.privacy,
      'interests': instance.interests,
      'userId': instance.userId,
      'postImage': instance.postImage,
      'slug': instance.slug,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'checkIn': instance.checkIn,
      'checkInImage': instance.checkInImage,
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'groupData': instance.groupData,
      'commentCounts': instance.commentCounts,
      'likeCounts': instance.likeCounts,
      'disLikeCounts': instance.dislikeCounts,
      'likeDislike': instance.likeDislike,
      'follower': instance.follower,
      'rating': instance.rating,
      'averageRating': instance.averageRating,
      'isFollowing': instance.isFollowing,
    };

_$GroupDataImpl _$$GroupDataImplFromJson(Map<String, dynamic> json) =>
    _$GroupDataImpl(
      id: json['_id'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      privacy: json['privacy'] as String?,
      oneMonthSubscriptionPrice: json['one_month_subscription_price'] as int?,
      sixMonthSubscriptionPrice: json['six_month_subscription_price'] as int?,
      twelveMonthSubscriptionPrice:
          json['twelve_month_subscription_price'] as int?,
      productId: json['productId'],
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      userId: json['userId'] as String?,
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
      promoCode: json['promoCode'] as String?,
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map((e) => Reviewer.fromJson(e as Map<String, dynamic>))
          .toList(),
      discount: json['discount'] as int?,
    );

Map<String, dynamic> _$$GroupDataImplToJson(_$GroupDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'interests': instance.interests,
      'privacy': instance.privacy,
      'one_month_subscription_price': instance.oneMonthSubscriptionPrice,
      'six_month_subscription_price': instance.sixMonthSubscriptionPrice,
      'twelve_month_subscription_price': instance.twelveMonthSubscriptionPrice,
      'productId': instance.productId,
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'userId': instance.userId,
      'subscribers': instance.subscribers,
      'followers': instance.followers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'promoCode': instance.promoCode,
      'reviewer': instance.reviewer,
      'discount': instance.discount,
    };

_$LikeDislikeImpl _$$LikeDislikeImplFromJson(Map<String, dynamic> json) =>
    _$LikeDislikeImpl(
      postId: json['postId'] as String?,
      tutorialId: json['tutorialId'],
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

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      id: json['_id'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      expertise: json['expertise'] as String?,
      phone: json['phone'] as String?,
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'] as String?,
      password: json['password'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      otp: json['otp'],
      otpExpiry: json['otpExpiry'],
      accountId: json['accountId'] as String?,
      accountLink: json['accountLink'] as String?,
      customerId: json['customerId'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: json['subscribers'] as List<dynamic>?,
      coverPhoto: json['coverPhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      profilePhoto: json['profilePhoto'] as String?,
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
      'expertise': instance.expertise,
      'phone': instance.phone,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      'password': instance.password,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
    };

_$ReviewerImpl _$$ReviewerImplFromJson(Map<String, dynamic> json) =>
    _$ReviewerImpl(
      review: json['review'],
      title: json['title'],
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

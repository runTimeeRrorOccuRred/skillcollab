// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explore_all_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExploreAllResponseModelImpl _$$ExploreAllResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExploreAllResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ExploreData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExploreAllResponseModelImplToJson(
        _$ExploreAllResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$ExploreDataImpl _$$ExploreDataImplFromJson(Map<String, dynamic> json) =>
    _$ExploreDataImpl(
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
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Subscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      publicPost: json['publicPost'] as int?,
      premiumPost: json['premiumPost'] as int?,
      exploreType: json['exploreType'] as String?,
      isFollowing: json['isFollowing'] as bool?,
      postImage: json['postImage'] as String?,
      slug: json['slug'] as String?,
      checkIn: json['checkIn'] as String?,
      checkInImage: json['checkInImage'] as String?,
      groupId: json['groupId'] == null
          ? null
          : GroupId.fromJson(json['groupId'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool?,
      gif: json['gif'] as String?,
      videoUrl: json['videoUrl'] as String?,
      bgColor: json['bgColor'] as String?,
      privacy: json['privacy'] as String?,
      hide: json['hide'] as List<dynamic>?,
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      title: json['title'] as String?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : ExploreComment.fromJson(e as Map<String, dynamic>))
          .toList(),
      commentCounts: json['commentCounts'] as int?,
      likeDislike: json['likeDislike'] == null
          ? null
          : LikeDislike.fromJson(json['likeDislike'] as Map<String, dynamic>),
      groupPhoto: json['groupPhoto'] as String?,
      oneMonthSubscriptionPrice: json['one_month_subscription_price'],
      sixMonthSubscriptionPrice: json['six_month_subscription_price'],
      twelveMonthSubscriptionPrice: json['twelve_month_subscription_price'],
      promoCode: json['promoCode'],
      discount: json['discount'],
      name: json['name'] as String?,
      rules: json['rules'] as String?,
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Reviewer.fromJson(e as Map<String, dynamic>))
          .toList(),
      likeCounts: json['likeCounts'] as int?,
      dislikeCounts: json['dislikeCounts'] as int?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ExploreDataImplToJson(_$ExploreDataImpl instance) =>
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
      'publicPost': instance.publicPost,
      'premiumPost': instance.premiumPost,
      'exploreType': instance.exploreType,
      'isFollowing': instance.isFollowing,
      'postImage': instance.postImage,
      'slug': instance.slug,
      'checkIn': instance.checkIn,
      'checkInImage': instance.checkInImage,
      'groupId': instance.groupId,
      'isActive': instance.isActive,
      'gif': instance.gif,
      'videoUrl': instance.videoUrl,
      'bgColor': instance.bgColor,
      'privacy': instance.privacy,
      'hide': instance.hide,
      'userId': instance.userId,
      'title': instance.title,
      'comments': instance.comments,
      'commentCounts': instance.commentCounts,
      'likeDislike': instance.likeDislike,
      'groupPhoto': instance.groupPhoto,
      'one_month_subscription_price': instance.oneMonthSubscriptionPrice,
      'six_month_subscription_price': instance.sixMonthSubscriptionPrice,
      'twelve_month_subscription_price': instance.twelveMonthSubscriptionPrice,
      'promoCode': instance.promoCode,
      'discount': instance.discount,
      'name': instance.name,
      'rules': instance.rules,
      'reviewer': instance.reviewer,
      'likeCounts': instance.likeCounts,
      'dislikeCounts': instance.dislikeCounts,
      'averageRating': instance.averageRating,
      'rating': instance.rating,
    };

_$ExploreCommentImpl _$$ExploreCommentImplFromJson(Map<String, dynamic> json) =>
    _$ExploreCommentImpl(
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

Map<String, dynamic> _$$ExploreCommentImplToJson(
        _$ExploreCommentImpl instance) =>
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
          ?.map((e) =>
              e == null ? null : Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Subscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
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

_$SubscriberImpl _$$SubscriberImplFromJson(Map<String, dynamic> json) =>
    _$SubscriberImpl(
      subscriptionId: json['subscription_id'] as String?,
      isPaid: json['isPaid'] as bool?,
      id: json['_id'] as String?,
      user: json['user'] as String?,
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$$SubscriberImplToJson(_$SubscriberImpl instance) =>
    <String, dynamic>{
      'subscription_id': instance.subscriptionId,
      'isPaid': instance.isPaid,
      '_id': instance.id,
      'user': instance.user,
      'expirationDate': instance.expirationDate?.toIso8601String(),
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_of_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberOfResponseModelImpl _$$MemberOfResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberOfResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MemberOfResponseModelImplToJson(
        _$MemberOfResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      groupId: json['groupId'] == null
          ? null
          : GroupId.fromJson(json['groupId'] as Map<String, dynamic>),
      following: json['following'],
      status: json['status'] as String?,
      id: json['_id'] as String?,
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      type: json['type'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      pinData: (json['pinData'] as List<dynamic>?)
          ?.map((e) => PinDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'following': instance.following,
      'status': instance.status,
      '_id': instance.id,
      'userId': instance.userId,
      'type': instance.type,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'pinData': instance.pinData,
    };

_$GroupIdImpl _$$GroupIdImplFromJson(Map<String, dynamic> json) =>
    _$GroupIdImpl(
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
      id: json['_id'] as String?,
      name: json['name'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      followers: (json['followers'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Follower.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['userId'] as String?,
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Subscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewer: (json['reviewer'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Reviewer.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      follower: json['follower'] as int?,
      rating: json['rating'] as int?,
      averageRating: json['averageRating'] as int?,
    );

Map<String, dynamic> _$$GroupIdImplToJson(_$GroupIdImpl instance) =>
    <String, dynamic>{
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
      '_id': instance.id,
      'name': instance.name,
      'interests': instance.interests,
      'followers': instance.followers,
      'userId': instance.userId,
      'subscribers': instance.subscribers,
      'reviewer': instance.reviewer,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'follower': instance.follower,
      'rating': instance.rating,
      'averageRating': instance.averageRating,
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

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      productId: json['productId'],
      deviceToken: (json['deviceToken'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      expertise: json['expertise'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      coverPhoto: json['coverPhoto'],
      profilePhoto: json['profilePhoto'],
      description: json['description'],
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
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'productId': instance.productId,
      'deviceToken': instance.deviceToken,
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'expertise': instance.expertise,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'coverPhoto': instance.coverPhoto,
      'profilePhoto': instance.profilePhoto,
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

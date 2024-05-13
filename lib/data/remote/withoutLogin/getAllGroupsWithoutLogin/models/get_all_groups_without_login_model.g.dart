// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_groups_without_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllGroupsWithoutLoginRequestModelImpl
    _$$GetAllGroupsWithoutLoginRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllGroupsWithoutLoginRequestModelImpl(
          searchKey: json['searchKey'] as String?,
          interests: json['interests'] as String?,
          timeFilter: json['timeFilter'] as String?,
        );

Map<String, dynamic> _$$GetAllGroupsWithoutLoginRequestModelImplToJson(
        _$GetAllGroupsWithoutLoginRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'interests': instance.interests,
      'timeFilter': instance.timeFilter,
    };

_$GetAllGroupsWithoutLoginResponseModelImpl
    _$$GetAllGroupsWithoutLoginResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllGroupsWithoutLoginResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => GroupDatum.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetAllGroupsWithoutLoginResponseModelImplToJson(
        _$GetAllGroupsWithoutLoginResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$GroupDatumImpl _$$GroupDatumImplFromJson(Map<String, dynamic> json) =>
    _$GroupDatumImpl(
      groupPhoto: json['groupPhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      privacy: json['privacy'] as String?,
      oneMonthSubscriptionPrice: json['one_month_subscription_price'],
      sixMonthSubscriptionPrice: json['six_month_subscription_price'],
      twelveMonthSubscriptionPrice: json['twelve_month_subscription_price'],
      promoCode: json['promoCode'],
      discount: json['discount'],
      productId: json['productId'],
      id: json['_id'] as String?,
      rules: json['rules'] as String?,
      name: json['name'] as String?,
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) => Subscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      follower: json['follower'] as int?,
      rating: json['rating'] as int?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      groupId: json['groupId'] == null
          ? null
          : GroupId.fromJson(json['groupId'] as Map<String, dynamic>),
      peopleAndGroupPost: json['peopleAndGroupPost'] == null
          ? null
          : PeopleAndGroupPost.fromJson(
              json['peopleAndGroupPost'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroupDatumImplToJson(_$GroupDatumImpl instance) =>
    <String, dynamic>{
      'groupPhoto': instance.groupPhoto,
      'coverPhoto': instance.coverPhoto,
      'description': instance.description,
      'location': instance.location,
      'interests': instance.interests,
      'privacy': instance.privacy,
      'one_month_subscription_price': instance.oneMonthSubscriptionPrice,
      'six_month_subscription_price': instance.sixMonthSubscriptionPrice,
      'twelve_month_subscription_price': instance.twelveMonthSubscriptionPrice,
      'promoCode': instance.promoCode,
      'discount': instance.discount,
      'productId': instance.productId,
      '_id': instance.id,
      'rules': instance.rules,
      'name': instance.name,
      'userId': instance.userId,
      'subscribers': instance.subscribers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'follower': instance.follower,
      'rating': instance.rating,
      'averageRating': instance.averageRating,
      'groupId': instance.groupId,
      'peopleAndGroupPost': instance.peopleAndGroupPost,
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
      otp: json['otp'],
      otpExpiry: json['otpExpiry'],
      accountId: json['accountId'] as String?,
      accountLink: json['accountLink'] as String?,
      customerId: json['customerId'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => Interest.fromJson(e as Map<String, dynamic>))
          .toList(),
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) => Subscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'phone': instance.phone,
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
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) => Subscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
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

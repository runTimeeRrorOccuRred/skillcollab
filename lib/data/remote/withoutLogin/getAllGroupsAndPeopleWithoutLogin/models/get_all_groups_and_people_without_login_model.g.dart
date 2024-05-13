// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_groups_and_people_without_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl
    _$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl(
          searchKey: json['searchKey'] as String?,
          interests: json['interests'] as String?,
          timeFilter: json['timeFilter'] as String?,
        );

Map<String, dynamic> _$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplToJson(
        _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'interests': instance.interests,
      'timeFilter': instance.timeFilter,
    };

_$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl
    _$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : PeopleAndGroupPostWOL.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplToJson(
            _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl instance) =>
        <String, dynamic>{
          'code': instance.code,
          'message': instance.message,
          'isSuccess': instance.isSuccess,
          'data': instance.data,
        };

_$PeopleAndGroupPostWOLImpl _$$PeopleAndGroupPostWOLImplFromJson(
        Map<String, dynamic> json) =>
    _$PeopleAndGroupPostWOLImpl(
      postImage: json['postImage'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      checkIn: json['checkIn'] as String?,
      checkInImage: json['checkInImage'] as String?,
      subscribers: (json['subscribers'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Subscriber.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      id: json['_id'] as String?,
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
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PeopleAndGroupPostWOLImplToJson(
        _$PeopleAndGroupPostWOLImpl instance) =>
    <String, dynamic>{
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
      'hide': instance.hide,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      '_id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'interests': instance.interests,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
      rules: json['rules'] as String?,
      userId: json['userId'] as String?,
      subscribers: json['subscribers'] as List<dynamic>?,
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
      'rules': instance.rules,
      'userId': instance.userId,
      'subscribers': instance.subscribers,
      'reviewer': instance.reviewer,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
      isEmailVerified: json['isEmailVerified'] as bool?,
      isKyc: json['isKyc'] as bool?,
      expertise: json['expertise'],
      profilePhoto: json['profilePhoto'] as String?,
      coverPhoto: json['coverPhoto'] as String?,
      productId: json['productId'],
      deviceToken: (json['deviceToken'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      isBan: json['isBan'] as bool?,
      banReason: json['banReason'],
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      interests: json['interests'] as List<dynamic>?,
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
      customerId: json['customerId'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
    <String, dynamic>{
      'isEmailVerified': instance.isEmailVerified,
      'isKyc': instance.isKyc,
      'expertise': instance.expertise,
      'profilePhoto': instance.profilePhoto,
      'coverPhoto': instance.coverPhoto,
      'productId': instance.productId,
      'deviceToken': instance.deviceToken,
      'isBan': instance.isBan,
      'banReason': instance.banReason,
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userName': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'interests': instance.interests,
      'subscribers': instance.subscribers,
      'followers': instance.followers,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'customerId': instance.customerId,
      'description': instance.description,
      'location': instance.location,
    };

_$ReviewerImpl _$$ReviewerImplFromJson(Map<String, dynamic> json) =>
    _$ReviewerImpl(
      review: json['review'] as String?,
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_rating_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupRatingResponseModelImpl _$$GroupRatingResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupRatingResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupRatingResponseModelImplToJson(
        _$GroupRatingResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['_id'] as String?,
      groupName: json['groupName'] as String?,
      groupDescription: json['groupDescription'] as String?,
      averageRating: (json['average_rating'] as num?)?.toDouble(),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'groupName': instance.groupName,
      'groupDescription': instance.groupDescription,
      'average_rating': instance.averageRating,
      'reviews': instance.reviews,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      review: json['review'] as String?,
      isAnonymous: json['isAnonymous'] as bool?,
      reviewDate: json['review_date'] == null
          ? null
          : DateTime.parse(json['review_date'] as String),
      userId: json['user_id'] as String?,
      userFirstName: json['user_first_name'] as String?,
      userLastName: json['user_last_name'] as String?,
      userProfilePhoto: json['user_profile_photo'],
      reviewId: json['review_id'] as String?,
      title: json['title'] as String?,
      rating: json['rating'] as int?,
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'review': instance.review,
      'isAnonymous': instance.isAnonymous,
      'review_date': instance.reviewDate?.toIso8601String(),
      'user_id': instance.userId,
      'user_first_name': instance.userFirstName,
      'user_last_name': instance.userLastName,
      'user_profile_photo': instance.userProfilePhoto,
      'review_id': instance.reviewId,
      'title': instance.title,
      'rating': instance.rating,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_review_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteReviewResponseModelImpl _$$DeleteReviewResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteReviewResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeleteReviewResponseModelImplToJson(
        _$DeleteReviewResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      review: json['review'] as String?,
      title: json['title'] as String?,
      id: json['_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      rating: json['rating'] as int?,
      isAnonymous: json['isAnonymous'] as bool?,
      groupId: json['groupId'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'review': instance.review,
      'title': instance.title,
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'rating': instance.rating,
      'isAnonymous': instance.isAnonymous,
      'groupId': instance.groupId,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$DeleteReviewRequestModelImpl _$$DeleteReviewRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteReviewRequestModelImpl(
      groupId: json['groupId'] as String?,
    );

Map<String, dynamic> _$$DeleteReviewRequestModelImplToJson(
        _$DeleteReviewRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
    };

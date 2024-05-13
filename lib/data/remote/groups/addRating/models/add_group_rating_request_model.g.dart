// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_group_rating_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddGroupRatingRequestModelImpl _$$AddGroupRatingRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddGroupRatingRequestModelImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      title: json['title'] as String?,
      review: json['review'] as String?,
      isAnonymous: json['isAnonymous'] as bool?,
    );

Map<String, dynamic> _$$AddGroupRatingRequestModelImplToJson(
        _$AddGroupRatingRequestModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'rating': instance.rating,
      'title': instance.title,
      'review': instance.review,
      'isAnonymous': instance.isAnonymous,
    };

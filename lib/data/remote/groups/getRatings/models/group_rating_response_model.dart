// To parse this JSON data, do
//
//     final groupRatingResponseModel = groupRatingResponseModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_rating_response_model.freezed.dart';
part 'group_rating_response_model.g.dart';

GroupRatingResponseModel groupRatingResponseModelFromJson(String str) => GroupRatingResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String groupRatingResponseModelToJson(GroupRatingResponseModel data) => json.encode(data.toJson());

@freezed
class GroupRatingResponseModel with _$GroupRatingResponseModel {
    const factory GroupRatingResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Datum>? data,
    }) = _GroupRatingResponseModel;

    factory GroupRatingResponseModel.fromJson(Map<String, dynamic> json) => _$GroupRatingResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "groupName")
        String? groupName,
        @JsonKey(name: "groupDescription")
        String? groupDescription,
        @JsonKey(name: "average_rating")
        double? averageRating,
        @JsonKey(name: "reviews")
        List<Review>? reviews,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Review with _$Review {
    const factory Review({
        @JsonKey(name: "review")
        String? review,
        @JsonKey(name: "isAnonymous")
        bool? isAnonymous,
        @JsonKey(name: "review_date")
        DateTime? reviewDate,
        @JsonKey(name: "user_id")
        String? userId,
        @JsonKey(name: "user_first_name")
        String? userFirstName,
        @JsonKey(name: "user_last_name")
        String? userLastName,
        @JsonKey(name: "user_profile_photo")
        dynamic userProfilePhoto,
        @JsonKey(name: "review_id")
        String? reviewId,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "rating")
        int? rating,
    }) = _Review;

    factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
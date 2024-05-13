// To parse this JSON data, do
//
//     final addGroupRatingRequestModel = addGroupRatingRequestModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_group_rating_request_model.freezed.dart';
part 'add_group_rating_request_model.g.dart';

AddGroupRatingRequestModel addGroupRatingRequestModelFromJson(String str) => AddGroupRatingRequestModel.fromJson(json.decode(str));

String addGroupRatingRequestModelToJson(AddGroupRatingRequestModel data) => json.encode(data.toJson());

@freezed
class AddGroupRatingRequestModel with _$AddGroupRatingRequestModel {
    const factory AddGroupRatingRequestModel({
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "email")
        String? email,
        @JsonKey(name: "rating")
        double? rating,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "review")
        String? review,
        @JsonKey(name: "isAnonymous")
        bool? isAnonymous,
    }) = _AddGroupRatingRequestModel;

    factory AddGroupRatingRequestModel.fromJson(Map<String, dynamic> json) => _$AddGroupRatingRequestModelFromJson(json);
}

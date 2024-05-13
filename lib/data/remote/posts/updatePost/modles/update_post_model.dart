// To parse this JSON data, do
//
//     final editPostResquest = editPostResquestFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'update_post_model.freezed.dart';
part 'update_post_model.g.dart';

EditPostResquest editPostResquestFromJson(String str) => EditPostResquest.fromJson(json.decode(str));

String editPostResquestToJson(EditPostResquest data) => json.encode(data.toJson());

@freezed
class EditPostResquest with _$EditPostResquest {
    const factory EditPostResquest({
        String? description,
        String? privacy,
    }) = _EditPostResquest;

    factory EditPostResquest.fromJson(Map<String, dynamic> json) => _$EditPostResquestFromJson(json);
}






EditPostResponse editPostResponseFromJson(String str) => EditPostResponse.fromJson(json.decode(str));

String editPostResponseToJson(EditPostResponse data) => json.encode(data.toJson());

@freezed
class EditPostResponse with _$EditPostResponse {
    const factory EditPostResponse({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _EditPostResponse;

    factory EditPostResponse.fromJson(Map<String, dynamic> json) => _$EditPostResponseFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        String? postImage,
        // ignore: invalid_annotation_target
        @JsonKey(name: "slug")
        String? slug,
        String? description,
        List<dynamic>? subscribers,
        dynamic groupId,
        bool? isActive,
        String? gif,
        String? videoUrl,
        String? bgColor,
        String? privacy,
        List<Interest>? interests,
        String? id,
        String? userId,
        String? title,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

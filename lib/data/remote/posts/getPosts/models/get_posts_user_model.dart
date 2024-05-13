// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'get_posts_user_model.freezed.dart';
part 'get_posts_user_model.g.dart';


///=========== REQUEST ===========///
GetPostsUserRequestModel getPostsUserRequestModelFromJson(String str) => GetPostsUserRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getPostsUserRequestModelToJson(GetPostsUserRequestModel data) => json.encode(data.toJson());

@freezed
class GetPostsUserRequestModel with _$GetPostsUserRequestModel {
    const factory GetPostsUserRequestModel({
        String? type,
    }) = _GetPostsUserRequestModel;

    factory GetPostsUserRequestModel.fromJson(Map<String, dynamic> json) => _$GetPostsUserRequestModelFromJson(json);
}


///=========== RESPONSE ===========///
GetPostsUserResponseModel getPostsUserResponseModelFromJson(String str) => GetPostsUserResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getPostsUserResponseModelToJson(GetPostsUserResponseModel data) => json.encode(data.toJson());

@freezed
class GetPostsUserResponseModel with _$GetPostsUserResponseModel {
    const factory GetPostsUserResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        List<Datum>? data,
    }) = _GetPostsUserResponseModel;

    factory GetPostsUserResponseModel.fromJson(Map<String, dynamic> json) => _$GetPostsUserResponseModelFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        String? id,
        bool? isActive,
        List<Interest>? interests,
        String? userId,
        String? postImage,
        @JsonKey(name: "slug")
        String? slug,
        String? title,
        String? description,
        String? groupId,
        DateTime? createdAt,
        DateTime? updatedAt,
        GroupData? groupData,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class GroupData with _$GroupData {
    const factory GroupData({
        String? id,
        List<Interest>? interests,
        String? privacy,
        String? groupPhoto,
        String? coverPhoto,
        String? name,
        String? description,
        String? location,
        String? userId,
        DateTime? createdAt,
        DateTime? updatedAt,
    }) = _GroupData;

    factory GroupData.fromJson(Map<String, dynamic> json) => _$GroupDataFromJson(json);
}

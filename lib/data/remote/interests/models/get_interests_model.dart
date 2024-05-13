// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_interests_model.freezed.dart';
part 'get_interests_model.g.dart';



///========= REQUEST ===========///
GetInterestsRequestModel getInterestsRequestModelFromJson(String str) => GetInterestsRequestModel.fromJson(json.decode(str));
String getInterestsRequestModelToJson(GetInterestsRequestModel data) => json.encode(data.toJson());

@freezed
class GetInterestsRequestModel with _$GetInterestsRequestModel {
    const factory GetInterestsRequestModel({
        @JsonKey(name: "name")
        String? name,
    }) = _GetInterestsRequestModel;

    factory GetInterestsRequestModel.fromJson(Map<String, dynamic> json) => _$GetInterestsRequestModelFromJson(json);
}


///========= RESPONSE =========///
GetInterestsResponseModel getInterestsResponseModelFromJson(String str) => GetInterestsResponseModel.fromJson(json.decode(str));
String getInterestsResponseModelToJson(GetInterestsResponseModel data) => json.encode(data.toJson());

@freezed
class GetInterestsResponseModel with _$GetInterestsResponseModel {
    const factory GetInterestsResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        List<Interest>? data,
    }) = _GetInterestsResponseModel;

    factory GetInterestsResponseModel.fromJson(Map<String, dynamic> json) => _$GetInterestsResponseModelFromJson(json);
}

@freezed
class Interest with _$Interest {
    const factory Interest({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "interestPhoto")
        String? interestPhoto,
        @JsonKey(name: "createdAt")
        DateTime? createdAt,
        @JsonKey(name: "updatedAt")
        DateTime? updatedAt,
    }) = _Interest;

    factory Interest.fromJson(Map<String, dynamic> json) => _$InterestFromJson(json);
}
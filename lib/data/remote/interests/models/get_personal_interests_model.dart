// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_personal_interests_model.freezed.dart';
part 'get_personal_interests_model.g.dart';

GetPersonalInterestRequest getPersonalInterestRequestFromJson(String str) => GetPersonalInterestRequest.fromJson(json.decode(str));
String getPersonalInterestRequestToJson(GetPersonalInterestRequest data) => json.encode(data.toJson());

@freezed
class GetPersonalInterestRequest with _$GetPersonalInterestRequest {
    const factory GetPersonalInterestRequest({
        @JsonKey(name: "name")
        String? name,
    }) = _GetPersonalInterestRequest;

    factory GetPersonalInterestRequest.fromJson(Map<String, dynamic> json) => _$GetPersonalInterestRequestFromJson(json);
}


GetPersonalInterestResponse getPersonalInterestResponseFromJson(String str) => GetPersonalInterestResponse.fromJson(json.decode(str));
String getPersonalInterestResponseToJson(GetPersonalInterestResponse data) => json.encode(data.toJson());

@freezed
class GetPersonalInterestResponse with _$GetPersonalInterestResponse {
    const factory GetPersonalInterestResponse({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _GetPersonalInterestResponse;

    factory GetPersonalInterestResponse.fromJson(Map<String, dynamic> json) => _$GetPersonalInterestResponseFromJson(json);

  getPersonalInterest(String s) {}
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "interests")
        List<PersonalInterest>? interests,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class PersonalInterest with _$PersonalInterest {
    const factory PersonalInterest({
        @JsonKey(name: "_id")
        String? id,
        @JsonKey(name: "name")
        String? name,
        @JsonKey(name: "interestPhoto")
        dynamic interestPhoto,
    }) = _PersonalInterest;

    factory PersonalInterest.fromJson(Map<String, dynamic> json) => _$PersonalInterestFromJson(json);
}

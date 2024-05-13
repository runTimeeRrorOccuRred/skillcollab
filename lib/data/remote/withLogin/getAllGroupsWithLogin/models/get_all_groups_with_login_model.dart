// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/withoutLogin/getAllGroupsWithoutLogin/models/get_all_groups_without_login_model.dart';

part 'get_all_groups_with_login_model.freezed.dart';
part 'get_all_groups_with_login_model.g.dart';


//========== REQUEST ==========//
GetAllGroupsWithLoginRequestModel getAllGroupsWithLoginRequestModelFromJson(String str) => GetAllGroupsWithLoginRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getAllGroupsWithLoginRequestModelToJson(GetAllGroupsWithLoginRequestModel data) => json.encode(data.toJson());

@freezed
class GetAllGroupsWithLoginRequestModel with _$GetAllGroupsWithLoginRequestModel {
    const factory GetAllGroupsWithLoginRequestModel({
        String? searchKey,
        String? interests,
        String? timeFilter,
        @JsonKey(name: "feedFilter")
        String? feedFilter,
    }) = _GetAllGroupsWithLoginRequestModel;

    factory GetAllGroupsWithLoginRequestModel.fromJson(Map<String, dynamic> json) => _$GetAllGroupsWithLoginRequestModelFromJson(json);
}


//========== RESPONSE ==========//
GetAllGroupsWithLoginResponseModel getAllGroupsWithLoginResponseModelFromJson(String str) => GetAllGroupsWithLoginResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String getAllGroupsWithLoginResponseModelToJson(GetAllGroupsWithLoginResponseModel data) => json.encode(data.toJson());

@freezed
class GetAllGroupsWithLoginResponseModel with _$GetAllGroupsWithLoginResponseModel {
    const factory GetAllGroupsWithLoginResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        List<GroupDatum>? data,
    }) = _GetAllGroupsWithLoginResponseModel;

    factory GetAllGroupsWithLoginResponseModel.fromJson(Map<String, dynamic> json) => _$GetAllGroupsWithLoginResponseModelFromJson(json);
}

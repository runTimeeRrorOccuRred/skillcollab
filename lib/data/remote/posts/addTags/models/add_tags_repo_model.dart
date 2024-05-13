// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_tags_repo_model.freezed.dart';
part 'add_tags_repo_model.g.dart';

AddTagsResquestModel addTagsResquestModelFromJson(String str) => AddTagsResquestModel.fromJson(json.decode(str));

String addTagsResquestModelToJson(AddTagsResquestModel data) => json.encode(data.toJson());

@freezed
class AddTagsResquestModel with _$AddTagsResquestModel {
    const factory AddTagsResquestModel({
        @JsonKey(name: "postId")
        String? postId,
        @JsonKey(name: "tag")
        List<String>? tag,
    }) = _AddTagsResquestModel;

    factory AddTagsResquestModel.fromJson(Map<String, dynamic> json) => _$AddTagsResquestModelFromJson(json);
}




//====Respone Model

AddTagsResponseModel addTagsResponseModelFromJson(String str) => AddTagsResponseModel.fromJson(json.decode(str));

String addTagsResponseModelToJson(AddTagsResponseModel data) => json.encode(data.toJson());

@freezed
class AddTagsResponseModel with _$AddTagsResponseModel {
    const factory AddTagsResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _AddTagsResponseModel;

    factory AddTagsResponseModel.fromJson(Map<String, dynamic> json) => _$AddTagsResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data() = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_unsubscribe_model.freezed.dart';
part 'group_unsubscribe_model.g.dart';

//======= REQUEST MODEL =======//
GroupUnsubscribeRequestModel groupUnsubscribeRequestModelFromJson(String str) => GroupUnsubscribeRequestModel.fromJson(json.decode(str));
String groupUnsubscribeRequestModelToJson(GroupUnsubscribeRequestModel data) => json.encode(data.toJson());

@freezed
class GroupUnsubscribeRequestModel with _$GroupUnsubscribeRequestModel {
    const factory GroupUnsubscribeRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
    }) = _GroupUnsubscribeRequestModel;

    factory GroupUnsubscribeRequestModel.fromJson(Map<String, dynamic> json) => _$GroupUnsubscribeRequestModelFromJson(json);
}

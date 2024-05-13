// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_subscribe_model.freezed.dart';
part 'group_subscribe_model.g.dart';

//======== REQUEST MODEL ========//
GroupSubscribeRequestModel groupSubscribeRequestModelFromJson(String str) => GroupSubscribeRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String groupSubscribeRequestModelToJson(GroupSubscribeRequestModel data) => json.encode(data.toJson());

@freezed
class GroupSubscribeRequestModel with _$GroupSubscribeRequestModel {
    const factory GroupSubscribeRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "planId")
        String? planId,
        @JsonKey(name: "destinationAccountId")
        String? destinationAccountId,
        @JsonKey(name: "cardId")
        String? cardId,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "groupCreatorUserId")
        String? groupCreatorUserId,
    }) = _GroupSubscribeRequestModel;

    factory GroupSubscribeRequestModel.fromJson(Map<String, dynamic> json) => _$GroupSubscribeRequestModelFromJson(json);
}

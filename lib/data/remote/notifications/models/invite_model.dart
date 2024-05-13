// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'invite_model.freezed.dart';
part 'invite_model.g.dart';

InviteRequestModel inviteRequestModelFromJson(String str) => InviteRequestModel.fromJson(json.decode(str));
String inviteRequestModelToJson(InviteRequestModel data) => json.encode(data.toJson());

@freezed
class InviteRequestModel with _$InviteRequestModel {
    const factory InviteRequestModel({
        @JsonKey(name: "groupId")
        String? groupId,
        @JsonKey(name: "invitedUserId")
        String? invitedUserId,
    }) = _InviteRequestModel;

    factory InviteRequestModel.fromJson(Map<String, dynamic> json) => _$InviteRequestModelFromJson(json);
}

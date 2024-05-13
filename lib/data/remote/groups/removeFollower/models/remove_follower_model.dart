import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_follower_model.freezed.dart';
part 'remove_follower_model.g.dart';

RemoveFollowerRequestModel removeFollowerRequestModelFromJson(String str) => RemoveFollowerRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String removeFollowerRequestModelToJson(RemoveFollowerRequestModel data) => json.encode(data.toJson());

@freezed
class RemoveFollowerRequestModel with _$RemoveFollowerRequestModel {
    const factory RemoveFollowerRequestModel({
        String? memberId,
    }) = _RemoveFollowerRequestModel;

    factory RemoveFollowerRequestModel.fromJson(Map<String, dynamic> json) => _$RemoveFollowerRequestModelFromJson(json);
}

// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_group_plan_model.freezed.dart';
part 'edit_group_plan_model.g.dart';


///========= REQUEST =========///
EditGroupPlanRequestModel editGroupPlanRequestModelFromJson(String str) => EditGroupPlanRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String editGroupPlanRequestModelToJson(EditGroupPlanRequestModel data) => json.encode(data.toJson());

@freezed
class EditGroupPlanRequestModel with _$EditGroupPlanRequestModel {
    const factory EditGroupPlanRequestModel({
        @JsonKey(name: "productId")
        String? productId,
        @JsonKey(name: "monthlyPlanId")
        String? monthlyPlanId,
        @JsonKey(name: "monthlyPlanAmount")
        int? monthlyPlanAmount,
        @JsonKey(name: "yearlyPlanId")
        String? yearlyPlanId,
        @JsonKey(name: "yearlyPlanAmount")
        int? yearlyPlanAmount,
        @JsonKey(name: "quartPlanId")
        String? quartPlanId,
        @JsonKey(name: "quartPlanAmount")
        int? quartPlanAmount,
    }) = _EditGroupPlanRequestModel;

    factory EditGroupPlanRequestModel.fromJson(Map<String, dynamic> json) => _$EditGroupPlanRequestModelFromJson(json);
}

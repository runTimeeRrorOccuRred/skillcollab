import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skill_colab/data/remote/interests/models/get_interests_model.dart';

part 'edit_group_model.freezed.dart';
part 'edit_group_model.g.dart';

//========== REQUEST =========//
EditGroupRequestModel editGroupRequestModelFromJson(String str) => EditGroupRequestModel.fromJson(json.decode(str) as Map<String, dynamic>);
String editGroupRequestModelToJson(EditGroupRequestModel data) => json.encode(data.toJson());

@freezed
class EditGroupRequestModel with _$EditGroupRequestModel {
    const factory EditGroupRequestModel({
        String? groupPhoto,
        String? coverPhoto,
        String? name,
        String? description,
        String? location,
        List<Interest>? interests,
        String? privacy,
        String? oneMonthSubscriptionPrice,
        String? sixMonthSubscriptionPrice,
        String? twelveMonthSubscriptionPrice,
        String? promoCode,
        String? rules,
        int? discount,
    }) = _EditGroupRequestModel;

    factory EditGroupRequestModel.fromJson(Map<String, dynamic> json) => _$EditGroupRequestModelFromJson(json);
}


//========== RESPONSE =========//
EditGroupResponseModel editGroupResponseModelFromJson(String str) => EditGroupResponseModel.fromJson(json.decode(str) as Map<String, dynamic>);
String editGroupResponseModelToJson(EditGroupResponseModel data) => json.encode(data.toJson());

@freezed
class EditGroupResponseModel with _$EditGroupResponseModel {
    const factory EditGroupResponseModel({
        int? code,
        String? message,
        bool? isSuccess,
        Data? data,
    }) = _EditGroupResponseModel;

    factory EditGroupResponseModel.fromJson(Map<String, dynamic> json) => _$EditGroupResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        List<Interest>? interests,
        String? privacy,
        String? groupPhoto,
        String? coverPhoto,
        String? name,
        String? description,
        String? location,
        String? rules,
        String? userId,
        DateTime? createdAt,
        DateTime? updatedAt,
        String? id,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

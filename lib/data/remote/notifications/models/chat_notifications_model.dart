// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_notifications_model.freezed.dart';
part 'chat_notifications_model.g.dart';

ChatNotificationRequestModel chatNotificationRequestModelFromJson(String str) => ChatNotificationRequestModel.fromJson(json.decode(str));
String chatNotificationRequestModelToJson(ChatNotificationRequestModel data) => json.encode(data.toJson());

@freezed
class ChatNotificationRequestModel with _$ChatNotificationRequestModel {
    const factory ChatNotificationRequestModel({
        @JsonKey(name: "receiverUserId")
        String? receiverUserId,
    }) = _ChatNotificationRequestModel;

    factory ChatNotificationRequestModel.fromJson(Map<String, dynamic> json) => _$ChatNotificationRequestModelFromJson(json);
}



ChatNotificationResponseModel chatNotificationResponseModelFromJson(String str) => ChatNotificationResponseModel.fromJson(json.decode(str));
String chatNotificationResponseModelToJson(ChatNotificationResponseModel data) => json.encode(data.toJson());

@freezed
class ChatNotificationResponseModel with _$ChatNotificationResponseModel {
    const factory ChatNotificationResponseModel({
        @JsonKey(name: "code")
        int? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "isSuccess")
        bool? isSuccess,
        @JsonKey(name: "data")
        Data? data,
    }) = _ChatNotificationResponseModel;

    factory ChatNotificationResponseModel.fromJson(Map<String, dynamic> json) => _$ChatNotificationResponseModelFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data() = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'like_dislike_model.freezed.dart';
part 'like_dislike_model.g.dart';

LikeDislikeRequestModel likeDislikeRequestModelFromJson(String str) => LikeDislikeRequestModel.fromJson(json.decode(str));

String likeDislikeRequestModelToJson(LikeDislikeRequestModel data) => json.encode(data.toJson());

@freezed
class LikeDislikeRequestModel with _$LikeDislikeRequestModel {
    const factory LikeDislikeRequestModel({
        bool? isLike,
        bool? isDislike,
        String? postId,
        String? type,
    }) = _LikeDislikeRequestModel;

    factory LikeDislikeRequestModel.fromJson(Map<String, dynamic> json) => _$LikeDislikeRequestModelFromJson(json);
}

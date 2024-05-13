import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_comment_model.freezed.dart';
part 'post_comment_model.g.dart';

PostCommentRequestModel postCommentRequestModelFromJson(String str) => PostCommentRequestModel.fromJson(json.decode(str));

String postCommentRequestModelToJson(PostCommentRequestModel data) => json.encode(data.toJson());

@freezed
class PostCommentRequestModel with _$PostCommentRequestModel {
    const factory PostCommentRequestModel({
        String? postId,
        String? parentId,
        String? comment,
        String? type,
    }) = _PostCommentRequestModel;

    factory PostCommentRequestModel.fromJson(Map<String, dynamic> json) => _$PostCommentRequestModelFromJson(json);
}

    

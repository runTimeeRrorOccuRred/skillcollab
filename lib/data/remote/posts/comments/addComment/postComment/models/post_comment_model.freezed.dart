// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostCommentRequestModel _$PostCommentRequestModelFromJson(
    Map<String, dynamic> json) {
  return _PostCommentRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PostCommentRequestModel {
  String? get postId => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCommentRequestModelCopyWith<PostCommentRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentRequestModelCopyWith<$Res> {
  factory $PostCommentRequestModelCopyWith(PostCommentRequestModel value,
          $Res Function(PostCommentRequestModel) then) =
      _$PostCommentRequestModelCopyWithImpl<$Res, PostCommentRequestModel>;
  @useResult
  $Res call({String? postId, String? parentId, String? comment, String? type});
}

/// @nodoc
class _$PostCommentRequestModelCopyWithImpl<$Res,
        $Val extends PostCommentRequestModel>
    implements $PostCommentRequestModelCopyWith<$Res> {
  _$PostCommentRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? parentId = freezed,
    Object? comment = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostCommentRequestModelImplCopyWith<$Res>
    implements $PostCommentRequestModelCopyWith<$Res> {
  factory _$$PostCommentRequestModelImplCopyWith(
          _$PostCommentRequestModelImpl value,
          $Res Function(_$PostCommentRequestModelImpl) then) =
      __$$PostCommentRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? postId, String? parentId, String? comment, String? type});
}

/// @nodoc
class __$$PostCommentRequestModelImplCopyWithImpl<$Res>
    extends _$PostCommentRequestModelCopyWithImpl<$Res,
        _$PostCommentRequestModelImpl>
    implements _$$PostCommentRequestModelImplCopyWith<$Res> {
  __$$PostCommentRequestModelImplCopyWithImpl(
      _$PostCommentRequestModelImpl _value,
      $Res Function(_$PostCommentRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? parentId = freezed,
    Object? comment = freezed,
    Object? type = freezed,
  }) {
    return _then(_$PostCommentRequestModelImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostCommentRequestModelImpl implements _PostCommentRequestModel {
  const _$PostCommentRequestModelImpl(
      {this.postId, this.parentId, this.comment, this.type});

  factory _$PostCommentRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCommentRequestModelImplFromJson(json);

  @override
  final String? postId;
  @override
  final String? parentId;
  @override
  final String? comment;
  @override
  final String? type;

  @override
  String toString() {
    return 'PostCommentRequestModel(postId: $postId, parentId: $parentId, comment: $comment, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommentRequestModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId, parentId, comment, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentRequestModelImplCopyWith<_$PostCommentRequestModelImpl>
      get copyWith => __$$PostCommentRequestModelImplCopyWithImpl<
          _$PostCommentRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCommentRequestModelImplToJson(
      this,
    );
  }
}

abstract class _PostCommentRequestModel implements PostCommentRequestModel {
  const factory _PostCommentRequestModel(
      {final String? postId,
      final String? parentId,
      final String? comment,
      final String? type}) = _$PostCommentRequestModelImpl;

  factory _PostCommentRequestModel.fromJson(Map<String, dynamic> json) =
      _$PostCommentRequestModelImpl.fromJson;

  @override
  String? get postId;
  @override
  String? get parentId;
  @override
  String? get comment;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$PostCommentRequestModelImplCopyWith<_$PostCommentRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

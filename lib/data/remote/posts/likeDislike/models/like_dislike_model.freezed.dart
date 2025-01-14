// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_dislike_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LikeDislikeRequestModel _$LikeDislikeRequestModelFromJson(
    Map<String, dynamic> json) {
  return _LikeDislikeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LikeDislikeRequestModel {
  bool? get isLike => throw _privateConstructorUsedError;
  bool? get isDislike => throw _privateConstructorUsedError;
  String? get postId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeDislikeRequestModelCopyWith<LikeDislikeRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeDislikeRequestModelCopyWith<$Res> {
  factory $LikeDislikeRequestModelCopyWith(LikeDislikeRequestModel value,
          $Res Function(LikeDislikeRequestModel) then) =
      _$LikeDislikeRequestModelCopyWithImpl<$Res, LikeDislikeRequestModel>;
  @useResult
  $Res call({bool? isLike, bool? isDislike, String? postId, String? type});
}

/// @nodoc
class _$LikeDislikeRequestModelCopyWithImpl<$Res,
        $Val extends LikeDislikeRequestModel>
    implements $LikeDislikeRequestModelCopyWith<$Res> {
  _$LikeDislikeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? postId = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      isLike: freezed == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDislike: freezed == isDislike
          ? _value.isDislike
          : isDislike // ignore: cast_nullable_to_non_nullable
              as bool?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikeDislikeRequestModelImplCopyWith<$Res>
    implements $LikeDislikeRequestModelCopyWith<$Res> {
  factory _$$LikeDislikeRequestModelImplCopyWith(
          _$LikeDislikeRequestModelImpl value,
          $Res Function(_$LikeDislikeRequestModelImpl) then) =
      __$$LikeDislikeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isLike, bool? isDislike, String? postId, String? type});
}

/// @nodoc
class __$$LikeDislikeRequestModelImplCopyWithImpl<$Res>
    extends _$LikeDislikeRequestModelCopyWithImpl<$Res,
        _$LikeDislikeRequestModelImpl>
    implements _$$LikeDislikeRequestModelImplCopyWith<$Res> {
  __$$LikeDislikeRequestModelImplCopyWithImpl(
      _$LikeDislikeRequestModelImpl _value,
      $Res Function(_$LikeDislikeRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? postId = freezed,
    Object? type = freezed,
  }) {
    return _then(_$LikeDislikeRequestModelImpl(
      isLike: freezed == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDislike: freezed == isDislike
          ? _value.isDislike
          : isDislike // ignore: cast_nullable_to_non_nullable
              as bool?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
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
class _$LikeDislikeRequestModelImpl implements _LikeDislikeRequestModel {
  const _$LikeDislikeRequestModelImpl(
      {this.isLike, this.isDislike, this.postId, this.type});

  factory _$LikeDislikeRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeDislikeRequestModelImplFromJson(json);

  @override
  final bool? isLike;
  @override
  final bool? isDislike;
  @override
  final String? postId;
  @override
  final String? type;

  @override
  String toString() {
    return 'LikeDislikeRequestModel(isLike: $isLike, isDislike: $isDislike, postId: $postId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeDislikeRequestModelImpl &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.isDislike, isDislike) ||
                other.isDislike == isDislike) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLike, isDislike, postId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeDislikeRequestModelImplCopyWith<_$LikeDislikeRequestModelImpl>
      get copyWith => __$$LikeDislikeRequestModelImplCopyWithImpl<
          _$LikeDislikeRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeDislikeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _LikeDislikeRequestModel implements LikeDislikeRequestModel {
  const factory _LikeDislikeRequestModel(
      {final bool? isLike,
      final bool? isDislike,
      final String? postId,
      final String? type}) = _$LikeDislikeRequestModelImpl;

  factory _LikeDislikeRequestModel.fromJson(Map<String, dynamic> json) =
      _$LikeDislikeRequestModelImpl.fromJson;

  @override
  bool? get isLike;
  @override
  bool? get isDislike;
  @override
  String? get postId;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$LikeDislikeRequestModelImplCopyWith<_$LikeDislikeRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

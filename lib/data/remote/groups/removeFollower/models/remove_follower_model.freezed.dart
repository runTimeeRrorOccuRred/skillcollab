// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_follower_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemoveFollowerRequestModel _$RemoveFollowerRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RemoveFollowerRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RemoveFollowerRequestModel {
  String? get memberId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveFollowerRequestModelCopyWith<RemoveFollowerRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFollowerRequestModelCopyWith<$Res> {
  factory $RemoveFollowerRequestModelCopyWith(RemoveFollowerRequestModel value,
          $Res Function(RemoveFollowerRequestModel) then) =
      _$RemoveFollowerRequestModelCopyWithImpl<$Res,
          RemoveFollowerRequestModel>;
  @useResult
  $Res call({String? memberId});
}

/// @nodoc
class _$RemoveFollowerRequestModelCopyWithImpl<$Res,
        $Val extends RemoveFollowerRequestModel>
    implements $RemoveFollowerRequestModelCopyWith<$Res> {
  _$RemoveFollowerRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = freezed,
  }) {
    return _then(_value.copyWith(
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveFollowerRequestModelImplCopyWith<$Res>
    implements $RemoveFollowerRequestModelCopyWith<$Res> {
  factory _$$RemoveFollowerRequestModelImplCopyWith(
          _$RemoveFollowerRequestModelImpl value,
          $Res Function(_$RemoveFollowerRequestModelImpl) then) =
      __$$RemoveFollowerRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? memberId});
}

/// @nodoc
class __$$RemoveFollowerRequestModelImplCopyWithImpl<$Res>
    extends _$RemoveFollowerRequestModelCopyWithImpl<$Res,
        _$RemoveFollowerRequestModelImpl>
    implements _$$RemoveFollowerRequestModelImplCopyWith<$Res> {
  __$$RemoveFollowerRequestModelImplCopyWithImpl(
      _$RemoveFollowerRequestModelImpl _value,
      $Res Function(_$RemoveFollowerRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = freezed,
  }) {
    return _then(_$RemoveFollowerRequestModelImpl(
      memberId: freezed == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveFollowerRequestModelImpl implements _RemoveFollowerRequestModel {
  const _$RemoveFollowerRequestModelImpl({this.memberId});

  factory _$RemoveFollowerRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemoveFollowerRequestModelImplFromJson(json);

  @override
  final String? memberId;

  @override
  String toString() {
    return 'RemoveFollowerRequestModel(memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFollowerRequestModelImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFollowerRequestModelImplCopyWith<_$RemoveFollowerRequestModelImpl>
      get copyWith => __$$RemoveFollowerRequestModelImplCopyWithImpl<
          _$RemoveFollowerRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveFollowerRequestModelImplToJson(
      this,
    );
  }
}

abstract class _RemoveFollowerRequestModel
    implements RemoveFollowerRequestModel {
  const factory _RemoveFollowerRequestModel({final String? memberId}) =
      _$RemoveFollowerRequestModelImpl;

  factory _RemoveFollowerRequestModel.fromJson(Map<String, dynamic> json) =
      _$RemoveFollowerRequestModelImpl.fromJson;

  @override
  String? get memberId;
  @override
  @JsonKey(ignore: true)
  _$$RemoveFollowerRequestModelImplCopyWith<_$RemoveFollowerRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

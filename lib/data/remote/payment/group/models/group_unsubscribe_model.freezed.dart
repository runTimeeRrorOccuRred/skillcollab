// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_unsubscribe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupUnsubscribeRequestModel _$GroupUnsubscribeRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GroupUnsubscribeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GroupUnsubscribeRequestModel {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupUnsubscribeRequestModelCopyWith<GroupUnsubscribeRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupUnsubscribeRequestModelCopyWith<$Res> {
  factory $GroupUnsubscribeRequestModelCopyWith(
          GroupUnsubscribeRequestModel value,
          $Res Function(GroupUnsubscribeRequestModel) then) =
      _$GroupUnsubscribeRequestModelCopyWithImpl<$Res,
          GroupUnsubscribeRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class _$GroupUnsubscribeRequestModelCopyWithImpl<$Res,
        $Val extends GroupUnsubscribeRequestModel>
    implements $GroupUnsubscribeRequestModelCopyWith<$Res> {
  _$GroupUnsubscribeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupUnsubscribeRequestModelImplCopyWith<$Res>
    implements $GroupUnsubscribeRequestModelCopyWith<$Res> {
  factory _$$GroupUnsubscribeRequestModelImplCopyWith(
          _$GroupUnsubscribeRequestModelImpl value,
          $Res Function(_$GroupUnsubscribeRequestModelImpl) then) =
      __$$GroupUnsubscribeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class __$$GroupUnsubscribeRequestModelImplCopyWithImpl<$Res>
    extends _$GroupUnsubscribeRequestModelCopyWithImpl<$Res,
        _$GroupUnsubscribeRequestModelImpl>
    implements _$$GroupUnsubscribeRequestModelImplCopyWith<$Res> {
  __$$GroupUnsubscribeRequestModelImplCopyWithImpl(
      _$GroupUnsubscribeRequestModelImpl _value,
      $Res Function(_$GroupUnsubscribeRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$GroupUnsubscribeRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupUnsubscribeRequestModelImpl
    implements _GroupUnsubscribeRequestModel {
  const _$GroupUnsubscribeRequestModelImpl(
      {@JsonKey(name: "groupId") this.groupId});

  factory _$GroupUnsubscribeRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GroupUnsubscribeRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;

  @override
  String toString() {
    return 'GroupUnsubscribeRequestModel(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupUnsubscribeRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupUnsubscribeRequestModelImplCopyWith<
          _$GroupUnsubscribeRequestModelImpl>
      get copyWith => __$$GroupUnsubscribeRequestModelImplCopyWithImpl<
          _$GroupUnsubscribeRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupUnsubscribeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GroupUnsubscribeRequestModel
    implements GroupUnsubscribeRequestModel {
  const factory _GroupUnsubscribeRequestModel(
          {@JsonKey(name: "groupId") final String? groupId}) =
      _$GroupUnsubscribeRequestModelImpl;

  factory _GroupUnsubscribeRequestModel.fromJson(Map<String, dynamic> json) =
      _$GroupUnsubscribeRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$GroupUnsubscribeRequestModelImplCopyWith<
          _$GroupUnsubscribeRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

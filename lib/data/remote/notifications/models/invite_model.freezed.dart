// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InviteRequestModel _$InviteRequestModelFromJson(Map<String, dynamic> json) {
  return _InviteRequestModel.fromJson(json);
}

/// @nodoc
mixin _$InviteRequestModel {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "invitedUserId")
  String? get invitedUserId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InviteRequestModelCopyWith<InviteRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteRequestModelCopyWith<$Res> {
  factory $InviteRequestModelCopyWith(
          InviteRequestModel value, $Res Function(InviteRequestModel) then) =
      _$InviteRequestModelCopyWithImpl<$Res, InviteRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "invitedUserId") String? invitedUserId});
}

/// @nodoc
class _$InviteRequestModelCopyWithImpl<$Res, $Val extends InviteRequestModel>
    implements $InviteRequestModelCopyWith<$Res> {
  _$InviteRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? invitedUserId = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedUserId: freezed == invitedUserId
          ? _value.invitedUserId
          : invitedUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InviteRequestModelImplCopyWith<$Res>
    implements $InviteRequestModelCopyWith<$Res> {
  factory _$$InviteRequestModelImplCopyWith(_$InviteRequestModelImpl value,
          $Res Function(_$InviteRequestModelImpl) then) =
      __$$InviteRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "invitedUserId") String? invitedUserId});
}

/// @nodoc
class __$$InviteRequestModelImplCopyWithImpl<$Res>
    extends _$InviteRequestModelCopyWithImpl<$Res, _$InviteRequestModelImpl>
    implements _$$InviteRequestModelImplCopyWith<$Res> {
  __$$InviteRequestModelImplCopyWithImpl(_$InviteRequestModelImpl _value,
      $Res Function(_$InviteRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? invitedUserId = freezed,
  }) {
    return _then(_$InviteRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedUserId: freezed == invitedUserId
          ? _value.invitedUserId
          : invitedUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InviteRequestModelImpl implements _InviteRequestModel {
  const _$InviteRequestModelImpl(
      {@JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "invitedUserId") this.invitedUserId});

  factory _$InviteRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InviteRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "invitedUserId")
  final String? invitedUserId;

  @override
  String toString() {
    return 'InviteRequestModel(groupId: $groupId, invitedUserId: $invitedUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.invitedUserId, invitedUserId) ||
                other.invitedUserId == invitedUserId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, invitedUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteRequestModelImplCopyWith<_$InviteRequestModelImpl> get copyWith =>
      __$$InviteRequestModelImplCopyWithImpl<_$InviteRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InviteRequestModelImplToJson(
      this,
    );
  }
}

abstract class _InviteRequestModel implements InviteRequestModel {
  const factory _InviteRequestModel(
          {@JsonKey(name: "groupId") final String? groupId,
          @JsonKey(name: "invitedUserId") final String? invitedUserId}) =
      _$InviteRequestModelImpl;

  factory _InviteRequestModel.fromJson(Map<String, dynamic> json) =
      _$InviteRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "invitedUserId")
  String? get invitedUserId;
  @override
  @JsonKey(ignore: true)
  _$$InviteRequestModelImplCopyWith<_$InviteRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

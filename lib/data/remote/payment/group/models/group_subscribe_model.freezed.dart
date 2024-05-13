// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_subscribe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupSubscribeRequestModel _$GroupSubscribeRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GroupSubscribeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GroupSubscribeRequestModel {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "planId")
  String? get planId => throw _privateConstructorUsedError;
  @JsonKey(name: "destinationAccountId")
  String? get destinationAccountId => throw _privateConstructorUsedError;
  @JsonKey(name: "cardId")
  String? get cardId => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "groupCreatorUserId")
  String? get groupCreatorUserId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupSubscribeRequestModelCopyWith<GroupSubscribeRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupSubscribeRequestModelCopyWith<$Res> {
  factory $GroupSubscribeRequestModelCopyWith(GroupSubscribeRequestModel value,
          $Res Function(GroupSubscribeRequestModel) then) =
      _$GroupSubscribeRequestModelCopyWithImpl<$Res,
          GroupSubscribeRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "planId") String? planId,
      @JsonKey(name: "destinationAccountId") String? destinationAccountId,
      @JsonKey(name: "cardId") String? cardId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "groupCreatorUserId") String? groupCreatorUserId});
}

/// @nodoc
class _$GroupSubscribeRequestModelCopyWithImpl<$Res,
        $Val extends GroupSubscribeRequestModel>
    implements $GroupSubscribeRequestModelCopyWith<$Res> {
  _$GroupSubscribeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? planId = freezed,
    Object? destinationAccountId = freezed,
    Object? cardId = freezed,
    Object? description = freezed,
    Object? groupCreatorUserId = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAccountId: freezed == destinationAccountId
          ? _value.destinationAccountId
          : destinationAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      groupCreatorUserId: freezed == groupCreatorUserId
          ? _value.groupCreatorUserId
          : groupCreatorUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupSubscribeRequestModelImplCopyWith<$Res>
    implements $GroupSubscribeRequestModelCopyWith<$Res> {
  factory _$$GroupSubscribeRequestModelImplCopyWith(
          _$GroupSubscribeRequestModelImpl value,
          $Res Function(_$GroupSubscribeRequestModelImpl) then) =
      __$$GroupSubscribeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "planId") String? planId,
      @JsonKey(name: "destinationAccountId") String? destinationAccountId,
      @JsonKey(name: "cardId") String? cardId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "groupCreatorUserId") String? groupCreatorUserId});
}

/// @nodoc
class __$$GroupSubscribeRequestModelImplCopyWithImpl<$Res>
    extends _$GroupSubscribeRequestModelCopyWithImpl<$Res,
        _$GroupSubscribeRequestModelImpl>
    implements _$$GroupSubscribeRequestModelImplCopyWith<$Res> {
  __$$GroupSubscribeRequestModelImplCopyWithImpl(
      _$GroupSubscribeRequestModelImpl _value,
      $Res Function(_$GroupSubscribeRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? planId = freezed,
    Object? destinationAccountId = freezed,
    Object? cardId = freezed,
    Object? description = freezed,
    Object? groupCreatorUserId = freezed,
  }) {
    return _then(_$GroupSubscribeRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAccountId: freezed == destinationAccountId
          ? _value.destinationAccountId
          : destinationAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      groupCreatorUserId: freezed == groupCreatorUserId
          ? _value.groupCreatorUserId
          : groupCreatorUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupSubscribeRequestModelImpl implements _GroupSubscribeRequestModel {
  const _$GroupSubscribeRequestModelImpl(
      {@JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "planId") this.planId,
      @JsonKey(name: "destinationAccountId") this.destinationAccountId,
      @JsonKey(name: "cardId") this.cardId,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "groupCreatorUserId") this.groupCreatorUserId});

  factory _$GroupSubscribeRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GroupSubscribeRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "planId")
  final String? planId;
  @override
  @JsonKey(name: "destinationAccountId")
  final String? destinationAccountId;
  @override
  @JsonKey(name: "cardId")
  final String? cardId;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "groupCreatorUserId")
  final String? groupCreatorUserId;

  @override
  String toString() {
    return 'GroupSubscribeRequestModel(groupId: $groupId, planId: $planId, destinationAccountId: $destinationAccountId, cardId: $cardId, description: $description, groupCreatorUserId: $groupCreatorUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupSubscribeRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.destinationAccountId, destinationAccountId) ||
                other.destinationAccountId == destinationAccountId) &&
            (identical(other.cardId, cardId) || other.cardId == cardId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.groupCreatorUserId, groupCreatorUserId) ||
                other.groupCreatorUserId == groupCreatorUserId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, planId,
      destinationAccountId, cardId, description, groupCreatorUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupSubscribeRequestModelImplCopyWith<_$GroupSubscribeRequestModelImpl>
      get copyWith => __$$GroupSubscribeRequestModelImplCopyWithImpl<
          _$GroupSubscribeRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupSubscribeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GroupSubscribeRequestModel
    implements GroupSubscribeRequestModel {
  const factory _GroupSubscribeRequestModel(
      {@JsonKey(name: "groupId") final String? groupId,
      @JsonKey(name: "planId") final String? planId,
      @JsonKey(name: "destinationAccountId") final String? destinationAccountId,
      @JsonKey(name: "cardId") final String? cardId,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "groupCreatorUserId")
      final String? groupCreatorUserId}) = _$GroupSubscribeRequestModelImpl;

  factory _GroupSubscribeRequestModel.fromJson(Map<String, dynamic> json) =
      _$GroupSubscribeRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "planId")
  String? get planId;
  @override
  @JsonKey(name: "destinationAccountId")
  String? get destinationAccountId;
  @override
  @JsonKey(name: "cardId")
  String? get cardId;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "groupCreatorUserId")
  String? get groupCreatorUserId;
  @override
  @JsonKey(ignore: true)
  _$$GroupSubscribeRequestModelImplCopyWith<_$GroupSubscribeRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

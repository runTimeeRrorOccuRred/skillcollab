// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_pin_unpin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupPinUnpinRequestModel _$GroupPinUnpinRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GroupPinUnpinRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GroupPinUnpinRequestModel {
  String? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupPinUnpinRequestModelCopyWith<GroupPinUnpinRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupPinUnpinRequestModelCopyWith<$Res> {
  factory $GroupPinUnpinRequestModelCopyWith(GroupPinUnpinRequestModel value,
          $Res Function(GroupPinUnpinRequestModel) then) =
      _$GroupPinUnpinRequestModelCopyWithImpl<$Res, GroupPinUnpinRequestModel>;
  @useResult
  $Res call({String? groupId});
}

/// @nodoc
class _$GroupPinUnpinRequestModelCopyWithImpl<$Res,
        $Val extends GroupPinUnpinRequestModel>
    implements $GroupPinUnpinRequestModelCopyWith<$Res> {
  _$GroupPinUnpinRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GroupPinUnpinRequestModelImplCopyWith<$Res>
    implements $GroupPinUnpinRequestModelCopyWith<$Res> {
  factory _$$GroupPinUnpinRequestModelImplCopyWith(
          _$GroupPinUnpinRequestModelImpl value,
          $Res Function(_$GroupPinUnpinRequestModelImpl) then) =
      __$$GroupPinUnpinRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? groupId});
}

/// @nodoc
class __$$GroupPinUnpinRequestModelImplCopyWithImpl<$Res>
    extends _$GroupPinUnpinRequestModelCopyWithImpl<$Res,
        _$GroupPinUnpinRequestModelImpl>
    implements _$$GroupPinUnpinRequestModelImplCopyWith<$Res> {
  __$$GroupPinUnpinRequestModelImplCopyWithImpl(
      _$GroupPinUnpinRequestModelImpl _value,
      $Res Function(_$GroupPinUnpinRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$GroupPinUnpinRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupPinUnpinRequestModelImpl implements _GroupPinUnpinRequestModel {
  const _$GroupPinUnpinRequestModelImpl({this.groupId});

  factory _$GroupPinUnpinRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupPinUnpinRequestModelImplFromJson(json);

  @override
  final String? groupId;

  @override
  String toString() {
    return 'GroupPinUnpinRequestModel(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupPinUnpinRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupPinUnpinRequestModelImplCopyWith<_$GroupPinUnpinRequestModelImpl>
      get copyWith => __$$GroupPinUnpinRequestModelImplCopyWithImpl<
          _$GroupPinUnpinRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupPinUnpinRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GroupPinUnpinRequestModel implements GroupPinUnpinRequestModel {
  const factory _GroupPinUnpinRequestModel({final String? groupId}) =
      _$GroupPinUnpinRequestModelImpl;

  factory _GroupPinUnpinRequestModel.fromJson(Map<String, dynamic> json) =
      _$GroupPinUnpinRequestModelImpl.fromJson;

  @override
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$GroupPinUnpinRequestModelImplCopyWith<_$GroupPinUnpinRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GroupPinUnpinResponseModel _$GroupPinUnpinResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GroupPinUnpinResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GroupPinUnpinResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupPinUnpinResponseModelCopyWith<GroupPinUnpinResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupPinUnpinResponseModelCopyWith<$Res> {
  factory $GroupPinUnpinResponseModelCopyWith(GroupPinUnpinResponseModel value,
          $Res Function(GroupPinUnpinResponseModel) then) =
      _$GroupPinUnpinResponseModelCopyWithImpl<$Res,
          GroupPinUnpinResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GroupPinUnpinResponseModelCopyWithImpl<$Res,
        $Val extends GroupPinUnpinResponseModel>
    implements $GroupPinUnpinResponseModelCopyWith<$Res> {
  _$GroupPinUnpinResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupPinUnpinResponseModelImplCopyWith<$Res>
    implements $GroupPinUnpinResponseModelCopyWith<$Res> {
  factory _$$GroupPinUnpinResponseModelImplCopyWith(
          _$GroupPinUnpinResponseModelImpl value,
          $Res Function(_$GroupPinUnpinResponseModelImpl) then) =
      __$$GroupPinUnpinResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GroupPinUnpinResponseModelImplCopyWithImpl<$Res>
    extends _$GroupPinUnpinResponseModelCopyWithImpl<$Res,
        _$GroupPinUnpinResponseModelImpl>
    implements _$$GroupPinUnpinResponseModelImplCopyWith<$Res> {
  __$$GroupPinUnpinResponseModelImplCopyWithImpl(
      _$GroupPinUnpinResponseModelImpl _value,
      $Res Function(_$GroupPinUnpinResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GroupPinUnpinResponseModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupPinUnpinResponseModelImpl implements _GroupPinUnpinResponseModel {
  const _$GroupPinUnpinResponseModelImpl(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$GroupPinUnpinResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GroupPinUnpinResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  @override
  final Data? data;

  @override
  String toString() {
    return 'GroupPinUnpinResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupPinUnpinResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupPinUnpinResponseModelImplCopyWith<_$GroupPinUnpinResponseModelImpl>
      get copyWith => __$$GroupPinUnpinResponseModelImplCopyWithImpl<
          _$GroupPinUnpinResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupPinUnpinResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GroupPinUnpinResponseModel
    implements GroupPinUnpinResponseModel {
  const factory _GroupPinUnpinResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$GroupPinUnpinResponseModelImpl;

  factory _GroupPinUnpinResponseModel.fromJson(Map<String, dynamic> json) =
      _$GroupPinUnpinResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$GroupPinUnpinResponseModelImplCopyWith<_$GroupPinUnpinResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  bool? get isPinned => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {bool? isPinned,
      String? groupId,
      String? userId,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? id});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPinned = freezed,
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      isPinned: freezed == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isPinned,
      String? groupId,
      String? userId,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? id});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPinned = freezed,
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DataImpl(
      isPinned: freezed == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.isPinned,
      this.groupId,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.id});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final bool? isPinned;
  @override
  final String? groupId;
  @override
  final String? userId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? id;

  @override
  String toString() {
    return 'Data(isPinned: $isPinned, groupId: $groupId, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isPinned, groupId, userId, createdAt, updatedAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final bool? isPinned,
      final String? groupId,
      final String? userId,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? id}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  bool? get isPinned;
  @override
  String? get groupId;
  @override
  String? get userId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

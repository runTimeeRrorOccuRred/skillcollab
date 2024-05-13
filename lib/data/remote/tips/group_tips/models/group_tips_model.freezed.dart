// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_tips_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupTipsRequestModel _$GroupTipsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GroupTipsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GroupTipsRequestModel {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipAmount")
  num? get tipAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupTipsRequestModelCopyWith<GroupTipsRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupTipsRequestModelCopyWith<$Res> {
  factory $GroupTipsRequestModelCopyWith(GroupTipsRequestModel value,
          $Res Function(GroupTipsRequestModel) then) =
      _$GroupTipsRequestModelCopyWithImpl<$Res, GroupTipsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "tipAmount") num? tipAmount,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$GroupTipsRequestModelCopyWithImpl<$Res,
        $Val extends GroupTipsRequestModel>
    implements $GroupTipsRequestModelCopyWith<$Res> {
  _$GroupTipsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? tipAmount = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      tipAmount: freezed == tipAmount
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupTipsRequestModelImplCopyWith<$Res>
    implements $GroupTipsRequestModelCopyWith<$Res> {
  factory _$$GroupTipsRequestModelImplCopyWith(
          _$GroupTipsRequestModelImpl value,
          $Res Function(_$GroupTipsRequestModelImpl) then) =
      __$$GroupTipsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "tipAmount") num? tipAmount,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$GroupTipsRequestModelImplCopyWithImpl<$Res>
    extends _$GroupTipsRequestModelCopyWithImpl<$Res,
        _$GroupTipsRequestModelImpl>
    implements _$$GroupTipsRequestModelImplCopyWith<$Res> {
  __$$GroupTipsRequestModelImplCopyWithImpl(_$GroupTipsRequestModelImpl _value,
      $Res Function(_$GroupTipsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? tipAmount = freezed,
    Object? type = freezed,
  }) {
    return _then(_$GroupTipsRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      tipAmount: freezed == tipAmount
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupTipsRequestModelImpl implements _GroupTipsRequestModel {
  const _$GroupTipsRequestModelImpl(
      {@JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "tipAmount") this.tipAmount,
      @JsonKey(name: "type") this.type});

  factory _$GroupTipsRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupTipsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "tipAmount")
  final num? tipAmount;
  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'GroupTipsRequestModel(groupId: $groupId, tipAmount: $tipAmount, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupTipsRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.tipAmount, tipAmount) ||
                other.tipAmount == tipAmount) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, tipAmount, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupTipsRequestModelImplCopyWith<_$GroupTipsRequestModelImpl>
      get copyWith => __$$GroupTipsRequestModelImplCopyWithImpl<
          _$GroupTipsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupTipsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GroupTipsRequestModel implements GroupTipsRequestModel {
  const factory _GroupTipsRequestModel(
      {@JsonKey(name: "groupId") final String? groupId,
      @JsonKey(name: "tipAmount") final num? tipAmount,
      @JsonKey(name: "type") final String? type}) = _$GroupTipsRequestModelImpl;

  factory _GroupTipsRequestModel.fromJson(Map<String, dynamic> json) =
      _$GroupTipsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "tipAmount")
  num? get tipAmount;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$GroupTipsRequestModelImplCopyWith<_$GroupTipsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GroupTipsResponseModel _$GroupTipsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GroupTipsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GroupTipsResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupTipsResponseModelCopyWith<GroupTipsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupTipsResponseModelCopyWith<$Res> {
  factory $GroupTipsResponseModelCopyWith(GroupTipsResponseModel value,
          $Res Function(GroupTipsResponseModel) then) =
      _$GroupTipsResponseModelCopyWithImpl<$Res, GroupTipsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GroupTipsResponseModelCopyWithImpl<$Res,
        $Val extends GroupTipsResponseModel>
    implements $GroupTipsResponseModelCopyWith<$Res> {
  _$GroupTipsResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GroupTipsResponseModelImplCopyWith<$Res>
    implements $GroupTipsResponseModelCopyWith<$Res> {
  factory _$$GroupTipsResponseModelImplCopyWith(
          _$GroupTipsResponseModelImpl value,
          $Res Function(_$GroupTipsResponseModelImpl) then) =
      __$$GroupTipsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GroupTipsResponseModelImplCopyWithImpl<$Res>
    extends _$GroupTipsResponseModelCopyWithImpl<$Res,
        _$GroupTipsResponseModelImpl>
    implements _$$GroupTipsResponseModelImplCopyWith<$Res> {
  __$$GroupTipsResponseModelImplCopyWithImpl(
      _$GroupTipsResponseModelImpl _value,
      $Res Function(_$GroupTipsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GroupTipsResponseModelImpl(
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
class _$GroupTipsResponseModelImpl implements _GroupTipsResponseModel {
  const _$GroupTipsResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$GroupTipsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupTipsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'GroupTipsResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupTipsResponseModelImpl &&
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
  _$$GroupTipsResponseModelImplCopyWith<_$GroupTipsResponseModelImpl>
      get copyWith => __$$GroupTipsResponseModelImplCopyWithImpl<
          _$GroupTipsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupTipsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GroupTipsResponseModel implements GroupTipsResponseModel {
  const factory _GroupTipsResponseModel(
      {@JsonKey(name: "code") final int? code,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "isSuccess") final bool? isSuccess,
      @JsonKey(name: "data") final Data? data}) = _$GroupTipsResponseModelImpl;

  factory _GroupTipsResponseModel.fromJson(Map<String, dynamic> json) =
      _$GroupTipsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int? get code;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "isSuccess")
  bool? get isSuccess;
  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$GroupTipsResponseModelImplCopyWith<_$GroupTipsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "toUser")
  String? get toUser => throw _privateConstructorUsedError;
  @JsonKey(name: "fromUser")
  String? get fromUser => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  num? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "day")
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "toUser") String? toUser,
      @JsonKey(name: "fromUser") String? fromUser,
      @JsonKey(name: "amount") num? amount,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "day") String? day,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
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
    Object? groupId = freezed,
    Object? id = freezed,
    Object? toUser = freezed,
    Object? fromUser = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? type = freezed,
    Object? day = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      toUser: freezed == toUser
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUser: freezed == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "toUser") String? toUser,
      @JsonKey(name: "fromUser") String? fromUser,
      @JsonKey(name: "amount") num? amount,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "day") String? day,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
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
    Object? groupId = freezed,
    Object? id = freezed,
    Object? toUser = freezed,
    Object? fromUser = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? type = freezed,
    Object? day = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      toUser: freezed == toUser
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUser: freezed == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "toUser") this.toUser,
      @JsonKey(name: "fromUser") this.fromUser,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "currency") this.currency,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "day") this.day,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "toUser")
  final String? toUser;
  @override
  @JsonKey(name: "fromUser")
  final String? fromUser;
  @override
  @JsonKey(name: "amount")
  final num? amount;
  @override
  @JsonKey(name: "currency")
  final String? currency;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "day")
  final String? day;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Data(groupId: $groupId, id: $id, toUser: $toUser, fromUser: $fromUser, amount: $amount, currency: $currency, type: $type, day: $day, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.toUser, toUser) || other.toUser == toUser) &&
            (identical(other.fromUser, fromUser) ||
                other.fromUser == fromUser) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, id, toUser, fromUser,
      amount, currency, type, day, createdAt, updatedAt);

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
      {@JsonKey(name: "groupId") final String? groupId,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "toUser") final String? toUser,
      @JsonKey(name: "fromUser") final String? fromUser,
      @JsonKey(name: "amount") final num? amount,
      @JsonKey(name: "currency") final String? currency,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "day") final String? day,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "toUser")
  String? get toUser;
  @override
  @JsonKey(name: "fromUser")
  String? get fromUser;
  @override
  @JsonKey(name: "amount")
  num? get amount;
  @override
  @JsonKey(name: "currency")
  String? get currency;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "day")
  String? get day;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

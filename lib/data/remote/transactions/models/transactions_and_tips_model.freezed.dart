// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_and_tips_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionAndTipsRequestModel _$TransactionAndTipsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _TransactionAndTipsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionAndTipsRequestModel {
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionAndTipsRequestModelCopyWith<TransactionAndTipsRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionAndTipsRequestModelCopyWith<$Res> {
  factory $TransactionAndTipsRequestModelCopyWith(
          TransactionAndTipsRequestModel value,
          $Res Function(TransactionAndTipsRequestModel) then) =
      _$TransactionAndTipsRequestModelCopyWithImpl<$Res,
          TransactionAndTipsRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "type") String? type});
}

/// @nodoc
class _$TransactionAndTipsRequestModelCopyWithImpl<$Res,
        $Val extends TransactionAndTipsRequestModel>
    implements $TransactionAndTipsRequestModelCopyWith<$Res> {
  _$TransactionAndTipsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionAndTipsRequestModelImplCopyWith<$Res>
    implements $TransactionAndTipsRequestModelCopyWith<$Res> {
  factory _$$TransactionAndTipsRequestModelImplCopyWith(
          _$TransactionAndTipsRequestModelImpl value,
          $Res Function(_$TransactionAndTipsRequestModelImpl) then) =
      __$$TransactionAndTipsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$TransactionAndTipsRequestModelImplCopyWithImpl<$Res>
    extends _$TransactionAndTipsRequestModelCopyWithImpl<$Res,
        _$TransactionAndTipsRequestModelImpl>
    implements _$$TransactionAndTipsRequestModelImplCopyWith<$Res> {
  __$$TransactionAndTipsRequestModelImplCopyWithImpl(
      _$TransactionAndTipsRequestModelImpl _value,
      $Res Function(_$TransactionAndTipsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$TransactionAndTipsRequestModelImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionAndTipsRequestModelImpl
    implements _TransactionAndTipsRequestModel {
  const _$TransactionAndTipsRequestModelImpl(
      {@JsonKey(name: "type") this.type});

  factory _$TransactionAndTipsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionAndTipsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'TransactionAndTipsRequestModel(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionAndTipsRequestModelImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionAndTipsRequestModelImplCopyWith<
          _$TransactionAndTipsRequestModelImpl>
      get copyWith => __$$TransactionAndTipsRequestModelImplCopyWithImpl<
          _$TransactionAndTipsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionAndTipsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionAndTipsRequestModel
    implements TransactionAndTipsRequestModel {
  const factory _TransactionAndTipsRequestModel(
          {@JsonKey(name: "type") final String? type}) =
      _$TransactionAndTipsRequestModelImpl;

  factory _TransactionAndTipsRequestModel.fromJson(Map<String, dynamic> json) =
      _$TransactionAndTipsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$TransactionAndTipsRequestModelImplCopyWith<
          _$TransactionAndTipsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionAndTipsResponseModel _$TransactionAndTipsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _TransactionAndTipsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionAndTipsResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionAndTipsResponseModelCopyWith<TransactionAndTipsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionAndTipsResponseModelCopyWith<$Res> {
  factory $TransactionAndTipsResponseModelCopyWith(
          TransactionAndTipsResponseModel value,
          $Res Function(TransactionAndTipsResponseModel) then) =
      _$TransactionAndTipsResponseModelCopyWithImpl<$Res,
          TransactionAndTipsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Datum>? data});
}

/// @nodoc
class _$TransactionAndTipsResponseModelCopyWithImpl<$Res,
        $Val extends TransactionAndTipsResponseModel>
    implements $TransactionAndTipsResponseModelCopyWith<$Res> {
  _$TransactionAndTipsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionAndTipsResponseModelImplCopyWith<$Res>
    implements $TransactionAndTipsResponseModelCopyWith<$Res> {
  factory _$$TransactionAndTipsResponseModelImplCopyWith(
          _$TransactionAndTipsResponseModelImpl value,
          $Res Function(_$TransactionAndTipsResponseModelImpl) then) =
      __$$TransactionAndTipsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Datum>? data});
}

/// @nodoc
class __$$TransactionAndTipsResponseModelImplCopyWithImpl<$Res>
    extends _$TransactionAndTipsResponseModelCopyWithImpl<$Res,
        _$TransactionAndTipsResponseModelImpl>
    implements _$$TransactionAndTipsResponseModelImplCopyWith<$Res> {
  __$$TransactionAndTipsResponseModelImplCopyWithImpl(
      _$TransactionAndTipsResponseModelImpl _value,
      $Res Function(_$TransactionAndTipsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TransactionAndTipsResponseModelImpl(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionAndTipsResponseModelImpl
    implements _TransactionAndTipsResponseModel {
  const _$TransactionAndTipsResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<Datum>? data})
      : _data = data;

  factory _$TransactionAndTipsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionAndTipsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<Datum>? _data;
  @override
  @JsonKey(name: "data")
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransactionAndTipsResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionAndTipsResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionAndTipsResponseModelImplCopyWith<
          _$TransactionAndTipsResponseModelImpl>
      get copyWith => __$$TransactionAndTipsResponseModelImplCopyWithImpl<
          _$TransactionAndTipsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionAndTipsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionAndTipsResponseModel
    implements TransactionAndTipsResponseModel {
  const factory _TransactionAndTipsResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<Datum>? data}) =
      _$TransactionAndTipsResponseModelImpl;

  factory _TransactionAndTipsResponseModel.fromJson(Map<String, dynamic> json) =
      _$TransactionAndTipsResponseModelImpl.fromJson;

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
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$TransactionAndTipsResponseModelImplCopyWith<
          _$TransactionAndTipsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  dynamic get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "subscriptionId")
  String? get subscriptionId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "toUser")
  String? get toUser => throw _privateConstructorUsedError;
  @JsonKey(name: "fromUser")
  FromUser? get fromUser => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  num? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "netAmount")
  num? get netAmount => throw _privateConstructorUsedError;
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
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") dynamic groupId,
      @JsonKey(name: "subscriptionId") String? subscriptionId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "toUser") String? toUser,
      @JsonKey(name: "fromUser") FromUser? fromUser,
      @JsonKey(name: "amount") num? amount,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "netAmount") num? netAmount,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "day") String? day,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  $FromUserCopyWith<$Res>? get fromUser;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? subscriptionId = freezed,
    Object? status = freezed,
    Object? toUser = freezed,
    Object? fromUser = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? netAmount = freezed,
    Object? type = freezed,
    Object? day = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      toUser: freezed == toUser
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUser: freezed == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as FromUser?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num?,
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

  @override
  @pragma('vm:prefer-inline')
  $FromUserCopyWith<$Res>? get fromUser {
    if (_value.fromUser == null) {
      return null;
    }

    return $FromUserCopyWith<$Res>(_value.fromUser!, (value) {
      return _then(_value.copyWith(fromUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") dynamic groupId,
      @JsonKey(name: "subscriptionId") String? subscriptionId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "toUser") String? toUser,
      @JsonKey(name: "fromUser") FromUser? fromUser,
      @JsonKey(name: "amount") num? amount,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "netAmount") num? netAmount,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "day") String? day,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  @override
  $FromUserCopyWith<$Res>? get fromUser;
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? subscriptionId = freezed,
    Object? status = freezed,
    Object? toUser = freezed,
    Object? fromUser = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? netAmount = freezed,
    Object? type = freezed,
    Object? day = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      toUser: freezed == toUser
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUser: freezed == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as FromUser?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num?,
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
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "subscriptionId") this.subscriptionId,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "toUser") this.toUser,
      @JsonKey(name: "fromUser") this.fromUser,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "currency") this.currency,
      @JsonKey(name: "netAmount") this.netAmount,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "day") this.day,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "groupId")
  final dynamic groupId;
  @override
  @JsonKey(name: "subscriptionId")
  final String? subscriptionId;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "toUser")
  final String? toUser;
  @override
  @JsonKey(name: "fromUser")
  final FromUser? fromUser;
  @override
  @JsonKey(name: "amount")
  final num? amount;
  @override
  @JsonKey(name: "currency")
  final String? currency;
  @override
  @JsonKey(name: "netAmount")
  final num? netAmount;
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
    return 'Datum(id: $id, groupId: $groupId, subscriptionId: $subscriptionId, status: $status, toUser: $toUser, fromUser: $fromUser, amount: $amount, currency: $currency, netAmount: $netAmount, type: $type, day: $day, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.toUser, toUser) || other.toUser == toUser) &&
            (identical(other.fromUser, fromUser) ||
                other.fromUser == fromUser) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(groupId),
      subscriptionId,
      status,
      toUser,
      fromUser,
      amount,
      currency,
      netAmount,
      type,
      day,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "groupId") final dynamic groupId,
      @JsonKey(name: "subscriptionId") final String? subscriptionId,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "toUser") final String? toUser,
      @JsonKey(name: "fromUser") final FromUser? fromUser,
      @JsonKey(name: "amount") final num? amount,
      @JsonKey(name: "currency") final String? currency,
      @JsonKey(name: "netAmount") final num? netAmount,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "day") final String? day,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "groupId")
  dynamic get groupId;
  @override
  @JsonKey(name: "subscriptionId")
  String? get subscriptionId;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "toUser")
  String? get toUser;
  @override
  @JsonKey(name: "fromUser")
  FromUser? get fromUser;
  @override
  @JsonKey(name: "amount")
  num? get amount;
  @override
  @JsonKey(name: "currency")
  String? get currency;
  @override
  @JsonKey(name: "netAmount")
  num? get netAmount;
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
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FromUser _$FromUserFromJson(Map<String, dynamic> json) {
  return _FromUser.fromJson(json);
}

/// @nodoc
mixin _$FromUser {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "userName")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<Subscriber>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<Follower>? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  int? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "otpExpiry")
  DateTime? get otpExpiry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FromUserCopyWith<FromUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FromUserCopyWith<$Res> {
  factory $FromUserCopyWith(FromUser value, $Res Function(FromUser) then) =
      _$FromUserCopyWithImpl<$Res, FromUser>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "productId") String? productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<Subscriber>? subscribers,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") int? otp,
      @JsonKey(name: "otpExpiry") DateTime? otpExpiry});
}

/// @nodoc
class _$FromUserCopyWithImpl<$Res, $Val extends FromUser>
    implements $FromUserCopyWith<$Res> {
  _$FromUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? coverPhoto = freezed,
    Object? profilePhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<Subscriber>?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FromUserImplCopyWith<$Res>
    implements $FromUserCopyWith<$Res> {
  factory _$$FromUserImplCopyWith(
          _$FromUserImpl value, $Res Function(_$FromUserImpl) then) =
      __$$FromUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "productId") String? productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<Subscriber>? subscribers,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") int? otp,
      @JsonKey(name: "otpExpiry") DateTime? otpExpiry});
}

/// @nodoc
class __$$FromUserImplCopyWithImpl<$Res>
    extends _$FromUserCopyWithImpl<$Res, _$FromUserImpl>
    implements _$$FromUserImplCopyWith<$Res> {
  __$$FromUserImplCopyWithImpl(
      _$FromUserImpl _value, $Res Function(_$FromUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? coverPhoto = freezed,
    Object? profilePhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
  }) {
    return _then(_$FromUserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value._deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<Subscriber>?,
      followers: freezed == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FromUserImpl implements _FromUser {
  const _$FromUserImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<Subscriber>? subscribers,
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry})
      : _deviceToken = deviceToken,
        _interests = interests,
        _subscribers = subscribers,
        _followers = followers;

  factory _$FromUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$FromUserImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "isEmailVerified")
  final bool? isEmailVerified;
  @override
  @JsonKey(name: "productId")
  final String? productId;
  final List<String?>? _deviceToken;
  @override
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken {
    final value = _deviceToken;
    if (value == null) return null;
    if (_deviceToken is EqualUnmodifiableListView) return _deviceToken;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "firstName")
  final String? firstName;
  @override
  @JsonKey(name: "lastName")
  final String? lastName;
  @override
  @JsonKey(name: "userName")
  final String? userName;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "password")
  final String? password;
  @override
  @JsonKey(name: "coverPhoto")
  final String? coverPhoto;
  @override
  @JsonKey(name: "profilePhoto")
  final String? profilePhoto;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "location")
  final String? location;
  final List<Interest>? _interests;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Subscriber>? _subscribers;
  @override
  @JsonKey(name: "subscribers")
  List<Subscriber>? get subscribers {
    final value = _subscribers;
    if (value == null) return null;
    if (_subscribers is EqualUnmodifiableListView) return _subscribers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Follower>? _followers;
  @override
  @JsonKey(name: "followers")
  List<Follower>? get followers {
    final value = _followers;
    if (value == null) return null;
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "otp")
  final int? otp;
  @override
  @JsonKey(name: "otpExpiry")
  final DateTime? otpExpiry;

  @override
  String toString() {
    return 'FromUser(id: $id, role: $role, isEmailVerified: $isEmailVerified, productId: $productId, deviceToken: $deviceToken, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, password: $password, coverPhoto: $coverPhoto, profilePhoto: $profilePhoto, description: $description, location: $location, interests: $interests, subscribers: $subscribers, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, otpExpiry: $otpExpiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            const DeepCollectionEquality()
                .equals(other._deviceToken, _deviceToken) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.otpExpiry, otpExpiry) ||
                other.otpExpiry == otpExpiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        role,
        isEmailVerified,
        productId,
        const DeepCollectionEquality().hash(_deviceToken),
        firstName,
        lastName,
        userName,
        email,
        phone,
        password,
        coverPhoto,
        profilePhoto,
        description,
        location,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_followers),
        createdAt,
        updatedAt,
        otp,
        otpExpiry
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FromUserImplCopyWith<_$FromUserImpl> get copyWith =>
      __$$FromUserImplCopyWithImpl<_$FromUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FromUserImplToJson(
      this,
    );
  }
}

abstract class _FromUser implements FromUser {
  const factory _FromUser(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "role") final String? role,
      @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
      @JsonKey(name: "productId") final String? productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "firstName") final String? firstName,
      @JsonKey(name: "lastName") final String? lastName,
      @JsonKey(name: "userName") final String? userName,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "password") final String? password,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "profilePhoto") final String? profilePhoto,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<Subscriber>? subscribers,
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "otp") final int? otp,
      @JsonKey(name: "otpExpiry") final DateTime? otpExpiry}) = _$FromUserImpl;

  factory _FromUser.fromJson(Map<String, dynamic> json) =
      _$FromUserImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified;
  @override
  @JsonKey(name: "productId")
  String? get productId;
  @override
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken;
  @override
  @JsonKey(name: "firstName")
  String? get firstName;
  @override
  @JsonKey(name: "lastName")
  String? get lastName;
  @override
  @JsonKey(name: "userName")
  String? get userName;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "password")
  String? get password;
  @override
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto;
  @override
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  @JsonKey(name: "subscribers")
  List<Subscriber>? get subscribers;
  @override
  @JsonKey(name: "followers")
  List<Follower>? get followers;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "otp")
  int? get otp;
  @override
  @JsonKey(name: "otpExpiry")
  DateTime? get otpExpiry;
  @override
  @JsonKey(ignore: true)
  _$$FromUserImplCopyWith<_$FromUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Follower _$FollowerFromJson(Map<String, dynamic> json) {
  return _Follower.fromJson(json);
}

/// @nodoc
mixin _$Follower {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowerCopyWith<Follower> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowerCopyWith<$Res> {
  factory $FollowerCopyWith(Follower value, $Res Function(Follower) then) =
      _$FollowerCopyWithImpl<$Res, Follower>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class _$FollowerCopyWithImpl<$Res, $Val extends Follower>
    implements $FollowerCopyWith<$Res> {
  _$FollowerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowerImplCopyWith<$Res>
    implements $FollowerCopyWith<$Res> {
  factory _$$FollowerImplCopyWith(
          _$FollowerImpl value, $Res Function(_$FollowerImpl) then) =
      __$$FollowerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class __$$FollowerImplCopyWithImpl<$Res>
    extends _$FollowerCopyWithImpl<$Res, _$FollowerImpl>
    implements _$$FollowerImplCopyWith<$Res> {
  __$$FollowerImplCopyWithImpl(
      _$FollowerImpl _value, $Res Function(_$FollowerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$FollowerImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowerImpl implements _Follower {
  const _$FollowerImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId});

  factory _$FollowerImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowerImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "userId")
  final String? userId;

  @override
  String toString() {
    return 'Follower(status: $status, id: $id, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowerImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, id, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowerImplCopyWith<_$FollowerImpl> get copyWith =>
      __$$FollowerImplCopyWithImpl<_$FollowerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowerImplToJson(
      this,
    );
  }
}

abstract class _Follower implements Follower {
  const factory _Follower(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userId") final String? userId}) = _$FollowerImpl;

  factory _Follower.fromJson(Map<String, dynamic> json) =
      _$FollowerImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$FollowerImplCopyWith<_$FollowerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subscriber _$SubscriberFromJson(Map<String, dynamic> json) {
  return _Subscriber.fromJson(json);
}

/// @nodoc
mixin _$Subscriber {
  @JsonKey(name: "subscription_id")
  String? get subscriptionId => throw _privateConstructorUsedError;
  @JsonKey(name: "isPaid")
  bool? get isPaid => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  String? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "expirationDate")
  DateTime? get expirationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriberCopyWith<Subscriber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriberCopyWith<$Res> {
  factory $SubscriberCopyWith(
          Subscriber value, $Res Function(Subscriber) then) =
      _$SubscriberCopyWithImpl<$Res, Subscriber>;
  @useResult
  $Res call(
      {@JsonKey(name: "subscription_id") String? subscriptionId,
      @JsonKey(name: "isPaid") bool? isPaid,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "user") String? user,
      @JsonKey(name: "expirationDate") DateTime? expirationDate});
}

/// @nodoc
class _$SubscriberCopyWithImpl<$Res, $Val extends Subscriber>
    implements $SubscriberCopyWith<$Res> {
  _$SubscriberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = freezed,
    Object? isPaid = freezed,
    Object? id = freezed,
    Object? user = freezed,
    Object? expirationDate = freezed,
  }) {
    return _then(_value.copyWith(
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriberImplCopyWith<$Res>
    implements $SubscriberCopyWith<$Res> {
  factory _$$SubscriberImplCopyWith(
          _$SubscriberImpl value, $Res Function(_$SubscriberImpl) then) =
      __$$SubscriberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "subscription_id") String? subscriptionId,
      @JsonKey(name: "isPaid") bool? isPaid,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "user") String? user,
      @JsonKey(name: "expirationDate") DateTime? expirationDate});
}

/// @nodoc
class __$$SubscriberImplCopyWithImpl<$Res>
    extends _$SubscriberCopyWithImpl<$Res, _$SubscriberImpl>
    implements _$$SubscriberImplCopyWith<$Res> {
  __$$SubscriberImplCopyWithImpl(
      _$SubscriberImpl _value, $Res Function(_$SubscriberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = freezed,
    Object? isPaid = freezed,
    Object? id = freezed,
    Object? user = freezed,
    Object? expirationDate = freezed,
  }) {
    return _then(_$SubscriberImpl(
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriberImpl implements _Subscriber {
  const _$SubscriberImpl(
      {@JsonKey(name: "subscription_id") this.subscriptionId,
      @JsonKey(name: "isPaid") this.isPaid,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "user") this.user,
      @JsonKey(name: "expirationDate") this.expirationDate});

  factory _$SubscriberImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriberImplFromJson(json);

  @override
  @JsonKey(name: "subscription_id")
  final String? subscriptionId;
  @override
  @JsonKey(name: "isPaid")
  final bool? isPaid;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "user")
  final String? user;
  @override
  @JsonKey(name: "expirationDate")
  final DateTime? expirationDate;

  @override
  String toString() {
    return 'Subscriber(subscriptionId: $subscriptionId, isPaid: $isPaid, id: $id, user: $user, expirationDate: $expirationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriberImpl &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, subscriptionId, isPaid, id, user, expirationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriberImplCopyWith<_$SubscriberImpl> get copyWith =>
      __$$SubscriberImplCopyWithImpl<_$SubscriberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriberImplToJson(
      this,
    );
  }
}

abstract class _Subscriber implements Subscriber {
  const factory _Subscriber(
          {@JsonKey(name: "subscription_id") final String? subscriptionId,
          @JsonKey(name: "isPaid") final bool? isPaid,
          @JsonKey(name: "_id") final String? id,
          @JsonKey(name: "user") final String? user,
          @JsonKey(name: "expirationDate") final DateTime? expirationDate}) =
      _$SubscriberImpl;

  factory _Subscriber.fromJson(Map<String, dynamic> json) =
      _$SubscriberImpl.fromJson;

  @override
  @JsonKey(name: "subscription_id")
  String? get subscriptionId;
  @override
  @JsonKey(name: "isPaid")
  bool? get isPaid;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "user")
  String? get user;
  @override
  @JsonKey(name: "expirationDate")
  DateTime? get expirationDate;
  @override
  @JsonKey(ignore: true)
  _$$SubscriberImplCopyWith<_$SubscriberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

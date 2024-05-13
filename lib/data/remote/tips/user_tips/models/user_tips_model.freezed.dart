// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tips_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTipsRequestModel _$UserTipsRequestModelFromJson(Map<String, dynamic> json) {
  return _UserTipsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UserTipsRequestModel {
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipAmount")
  int? get tipAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "destinationAccountId")
  String? get destinationAccountId => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "cardId")
  String? get cardId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTipsRequestModelCopyWith<UserTipsRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTipsRequestModelCopyWith<$Res> {
  factory $UserTipsRequestModelCopyWith(UserTipsRequestModel value,
          $Res Function(UserTipsRequestModel) then) =
      _$UserTipsRequestModelCopyWithImpl<$Res, UserTipsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "tipAmount") int? tipAmount,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "destinationAccountId") String? destinationAccountId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "cardId") String? cardId});
}

/// @nodoc
class _$UserTipsRequestModelCopyWithImpl<$Res,
        $Val extends UserTipsRequestModel>
    implements $UserTipsRequestModelCopyWith<$Res> {
  _$UserTipsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? tipAmount = freezed,
    Object? type = freezed,
    Object? destinationAccountId = freezed,
    Object? description = freezed,
    Object? cardId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      tipAmount: freezed == tipAmount
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAccountId: freezed == destinationAccountId
          ? _value.destinationAccountId
          : destinationAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTipsRequestModelImplCopyWith<$Res>
    implements $UserTipsRequestModelCopyWith<$Res> {
  factory _$$UserTipsRequestModelImplCopyWith(_$UserTipsRequestModelImpl value,
          $Res Function(_$UserTipsRequestModelImpl) then) =
      __$$UserTipsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "tipAmount") int? tipAmount,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "destinationAccountId") String? destinationAccountId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "cardId") String? cardId});
}

/// @nodoc
class __$$UserTipsRequestModelImplCopyWithImpl<$Res>
    extends _$UserTipsRequestModelCopyWithImpl<$Res, _$UserTipsRequestModelImpl>
    implements _$$UserTipsRequestModelImplCopyWith<$Res> {
  __$$UserTipsRequestModelImplCopyWithImpl(_$UserTipsRequestModelImpl _value,
      $Res Function(_$UserTipsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? tipAmount = freezed,
    Object? type = freezed,
    Object? destinationAccountId = freezed,
    Object? description = freezed,
    Object? cardId = freezed,
  }) {
    return _then(_$UserTipsRequestModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      tipAmount: freezed == tipAmount
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      destinationAccountId: freezed == destinationAccountId
          ? _value.destinationAccountId
          : destinationAccountId // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cardId: freezed == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTipsRequestModelImpl implements _UserTipsRequestModel {
  const _$UserTipsRequestModelImpl(
      {@JsonKey(name: "userId") this.userId,
      @JsonKey(name: "tipAmount") this.tipAmount,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "destinationAccountId") this.destinationAccountId,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "cardId") this.cardId});

  factory _$UserTipsRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTipsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "tipAmount")
  final int? tipAmount;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "destinationAccountId")
  final String? destinationAccountId;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "cardId")
  final String? cardId;

  @override
  String toString() {
    return 'UserTipsRequestModel(userId: $userId, tipAmount: $tipAmount, type: $type, destinationAccountId: $destinationAccountId, description: $description, cardId: $cardId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTipsRequestModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tipAmount, tipAmount) ||
                other.tipAmount == tipAmount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.destinationAccountId, destinationAccountId) ||
                other.destinationAccountId == destinationAccountId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cardId, cardId) || other.cardId == cardId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, tipAmount, type,
      destinationAccountId, description, cardId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTipsRequestModelImplCopyWith<_$UserTipsRequestModelImpl>
      get copyWith =>
          __$$UserTipsRequestModelImplCopyWithImpl<_$UserTipsRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTipsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UserTipsRequestModel implements UserTipsRequestModel {
  const factory _UserTipsRequestModel(
      {@JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "tipAmount") final int? tipAmount,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "destinationAccountId") final String? destinationAccountId,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "cardId")
      final String? cardId}) = _$UserTipsRequestModelImpl;

  factory _UserTipsRequestModel.fromJson(Map<String, dynamic> json) =
      _$UserTipsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "tipAmount")
  int? get tipAmount;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "destinationAccountId")
  String? get destinationAccountId;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "cardId")
  String? get cardId;
  @override
  @JsonKey(ignore: true)
  _$$UserTipsRequestModelImplCopyWith<_$UserTipsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserTipsResponseModel _$UserTipsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UserTipsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserTipsResponseModel {
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
  $UserTipsResponseModelCopyWith<UserTipsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTipsResponseModelCopyWith<$Res> {
  factory $UserTipsResponseModelCopyWith(UserTipsResponseModel value,
          $Res Function(UserTipsResponseModel) then) =
      _$UserTipsResponseModelCopyWithImpl<$Res, UserTipsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserTipsResponseModelCopyWithImpl<$Res,
        $Val extends UserTipsResponseModel>
    implements $UserTipsResponseModelCopyWith<$Res> {
  _$UserTipsResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UserTipsResponseModelImplCopyWith<$Res>
    implements $UserTipsResponseModelCopyWith<$Res> {
  factory _$$UserTipsResponseModelImplCopyWith(
          _$UserTipsResponseModelImpl value,
          $Res Function(_$UserTipsResponseModelImpl) then) =
      __$$UserTipsResponseModelImplCopyWithImpl<$Res>;
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
class __$$UserTipsResponseModelImplCopyWithImpl<$Res>
    extends _$UserTipsResponseModelCopyWithImpl<$Res,
        _$UserTipsResponseModelImpl>
    implements _$$UserTipsResponseModelImplCopyWith<$Res> {
  __$$UserTipsResponseModelImplCopyWithImpl(_$UserTipsResponseModelImpl _value,
      $Res Function(_$UserTipsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserTipsResponseModelImpl(
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
class _$UserTipsResponseModelImpl implements _UserTipsResponseModel {
  const _$UserTipsResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$UserTipsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTipsResponseModelImplFromJson(json);

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
    return 'UserTipsResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTipsResponseModelImpl &&
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
  _$$UserTipsResponseModelImplCopyWith<_$UserTipsResponseModelImpl>
      get copyWith => __$$UserTipsResponseModelImplCopyWithImpl<
          _$UserTipsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTipsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UserTipsResponseModel implements UserTipsResponseModel {
  const factory _UserTipsResponseModel(
      {@JsonKey(name: "code") final int? code,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "isSuccess") final bool? isSuccess,
      @JsonKey(name: "data") final Data? data}) = _$UserTipsResponseModelImpl;

  factory _UserTipsResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserTipsResponseModelImpl.fromJson;

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
  _$$UserTipsResponseModelImplCopyWith<_$UserTipsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "groupId")
  dynamic get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "fromUser")
  String? get fromUser => throw _privateConstructorUsedError;
  @JsonKey(name: "toUser")
  String? get toUser => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "netAmount")
  int? get netAmount => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "groupId") dynamic groupId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "fromUser") String? fromUser,
      @JsonKey(name: "toUser") String? toUser,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "netAmount") int? netAmount,
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
    Object? fromUser = freezed,
    Object? toUser = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? type = freezed,
    Object? netAmount = freezed,
    Object? day = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUser: freezed == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as String?,
      toUser: freezed == toUser
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: "groupId") dynamic groupId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "fromUser") String? fromUser,
      @JsonKey(name: "toUser") String? toUser,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "netAmount") int? netAmount,
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
    Object? fromUser = freezed,
    Object? toUser = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? type = freezed,
    Object? netAmount = freezed,
    Object? day = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUser: freezed == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as String?,
      toUser: freezed == toUser
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      @JsonKey(name: "fromUser") this.fromUser,
      @JsonKey(name: "toUser") this.toUser,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "currency") this.currency,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "netAmount") this.netAmount,
      @JsonKey(name: "day") this.day,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final dynamic groupId;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "fromUser")
  final String? fromUser;
  @override
  @JsonKey(name: "toUser")
  final String? toUser;
  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "currency")
  final String? currency;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "netAmount")
  final int? netAmount;
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
    return 'Data(groupId: $groupId, id: $id, fromUser: $fromUser, toUser: $toUser, amount: $amount, currency: $currency, type: $type, netAmount: $netAmount, day: $day, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromUser, fromUser) ||
                other.fromUser == fromUser) &&
            (identical(other.toUser, toUser) || other.toUser == toUser) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount) &&
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
      const DeepCollectionEquality().hash(groupId),
      id,
      fromUser,
      toUser,
      amount,
      currency,
      type,
      netAmount,
      day,
      createdAt,
      updatedAt);

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
      {@JsonKey(name: "groupId") final dynamic groupId,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "fromUser") final String? fromUser,
      @JsonKey(name: "toUser") final String? toUser,
      @JsonKey(name: "amount") final int? amount,
      @JsonKey(name: "currency") final String? currency,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "netAmount") final int? netAmount,
      @JsonKey(name: "day") final String? day,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  dynamic get groupId;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "fromUser")
  String? get fromUser;
  @override
  @JsonKey(name: "toUser")
  String? get toUser;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "currency")
  String? get currency;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "netAmount")
  int? get netAmount;
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

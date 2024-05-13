// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyticsRequestModel _$AnalyticsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _AnalyticsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsRequestModel {
  @JsonKey(name: "startDate")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "endDate")
  String? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsRequestModelCopyWith<AnalyticsRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsRequestModelCopyWith<$Res> {
  factory $AnalyticsRequestModelCopyWith(AnalyticsRequestModel value,
          $Res Function(AnalyticsRequestModel) then) =
      _$AnalyticsRequestModelCopyWithImpl<$Res, AnalyticsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "startDate") String? startDate,
      @JsonKey(name: "endDate") String? endDate});
}

/// @nodoc
class _$AnalyticsRequestModelCopyWithImpl<$Res,
        $Val extends AnalyticsRequestModel>
    implements $AnalyticsRequestModelCopyWith<$Res> {
  _$AnalyticsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsRequestModelImplCopyWith<$Res>
    implements $AnalyticsRequestModelCopyWith<$Res> {
  factory _$$AnalyticsRequestModelImplCopyWith(
          _$AnalyticsRequestModelImpl value,
          $Res Function(_$AnalyticsRequestModelImpl) then) =
      __$$AnalyticsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "startDate") String? startDate,
      @JsonKey(name: "endDate") String? endDate});
}

/// @nodoc
class __$$AnalyticsRequestModelImplCopyWithImpl<$Res>
    extends _$AnalyticsRequestModelCopyWithImpl<$Res,
        _$AnalyticsRequestModelImpl>
    implements _$$AnalyticsRequestModelImplCopyWith<$Res> {
  __$$AnalyticsRequestModelImplCopyWithImpl(_$AnalyticsRequestModelImpl _value,
      $Res Function(_$AnalyticsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$AnalyticsRequestModelImpl(
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticsRequestModelImpl implements _AnalyticsRequestModel {
  _$AnalyticsRequestModelImpl(
      {@JsonKey(name: "startDate") this.startDate,
      @JsonKey(name: "endDate") this.endDate});

  factory _$AnalyticsRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "startDate")
  final String? startDate;
  @override
  @JsonKey(name: "endDate")
  final String? endDate;

  @override
  String toString() {
    return 'AnalyticsRequestModel(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsRequestModelImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsRequestModelImplCopyWith<_$AnalyticsRequestModelImpl>
      get copyWith => __$$AnalyticsRequestModelImplCopyWithImpl<
          _$AnalyticsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsRequestModel implements AnalyticsRequestModel {
  factory _AnalyticsRequestModel(
          {@JsonKey(name: "startDate") final String? startDate,
          @JsonKey(name: "endDate") final String? endDate}) =
      _$AnalyticsRequestModelImpl;

  factory _AnalyticsRequestModel.fromJson(Map<String, dynamic> json) =
      _$AnalyticsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "startDate")
  String? get startDate;
  @override
  @JsonKey(name: "endDate")
  String? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsRequestModelImplCopyWith<_$AnalyticsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnalyticsResponseModel _$AnalyticsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AnalyticsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsResponseModel {
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
  $AnalyticsResponseModelCopyWith<AnalyticsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsResponseModelCopyWith<$Res> {
  factory $AnalyticsResponseModelCopyWith(AnalyticsResponseModel value,
          $Res Function(AnalyticsResponseModel) then) =
      _$AnalyticsResponseModelCopyWithImpl<$Res, AnalyticsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AnalyticsResponseModelCopyWithImpl<$Res,
        $Val extends AnalyticsResponseModel>
    implements $AnalyticsResponseModelCopyWith<$Res> {
  _$AnalyticsResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AnalyticsResponseModelImplCopyWith<$Res>
    implements $AnalyticsResponseModelCopyWith<$Res> {
  factory _$$AnalyticsResponseModelImplCopyWith(
          _$AnalyticsResponseModelImpl value,
          $Res Function(_$AnalyticsResponseModelImpl) then) =
      __$$AnalyticsResponseModelImplCopyWithImpl<$Res>;
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
class __$$AnalyticsResponseModelImplCopyWithImpl<$Res>
    extends _$AnalyticsResponseModelCopyWithImpl<$Res,
        _$AnalyticsResponseModelImpl>
    implements _$$AnalyticsResponseModelImplCopyWith<$Res> {
  __$$AnalyticsResponseModelImplCopyWithImpl(
      _$AnalyticsResponseModelImpl _value,
      $Res Function(_$AnalyticsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AnalyticsResponseModelImpl(
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
class _$AnalyticsResponseModelImpl implements _AnalyticsResponseModel {
  const _$AnalyticsResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$AnalyticsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticsResponseModelImplFromJson(json);

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
    return 'AnalyticsResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsResponseModelImpl &&
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
  _$$AnalyticsResponseModelImplCopyWith<_$AnalyticsResponseModelImpl>
      get copyWith => __$$AnalyticsResponseModelImplCopyWithImpl<
          _$AnalyticsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AnalyticsResponseModel implements AnalyticsResponseModel {
  const factory _AnalyticsResponseModel(
      {@JsonKey(name: "code") final int? code,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "isSuccess") final bool? isSuccess,
      @JsonKey(name: "data") final Data? data}) = _$AnalyticsResponseModelImpl;

  factory _AnalyticsResponseModel.fromJson(Map<String, dynamic> json) =
      _$AnalyticsResponseModelImpl.fromJson;

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
  _$$AnalyticsResponseModelImplCopyWith<_$AnalyticsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "values")
  List<Value>? get values => throw _privateConstructorUsedError;
  @JsonKey(name: "maxY")
  int? get maxY => throw _privateConstructorUsedError;
  @JsonKey(name: "minY")
  int? get minY => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "values") List<Value>? values,
      @JsonKey(name: "maxY") int? maxY,
      @JsonKey(name: "minY") int? minY});
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
    Object? values = freezed,
    Object? maxY = freezed,
    Object? minY = freezed,
  }) {
    return _then(_value.copyWith(
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Value>?,
      maxY: freezed == maxY
          ? _value.maxY
          : maxY // ignore: cast_nullable_to_non_nullable
              as int?,
      minY: freezed == minY
          ? _value.minY
          : minY // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: "values") List<Value>? values,
      @JsonKey(name: "maxY") int? maxY,
      @JsonKey(name: "minY") int? minY});
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
    Object? values = freezed,
    Object? maxY = freezed,
    Object? minY = freezed,
  }) {
    return _then(_$DataImpl(
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Value>?,
      maxY: freezed == maxY
          ? _value.maxY
          : maxY // ignore: cast_nullable_to_non_nullable
              as int?,
      minY: freezed == minY
          ? _value.minY
          : minY // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "values") final List<Value>? values,
      @JsonKey(name: "maxY") this.maxY,
      @JsonKey(name: "minY") this.minY})
      : _values = values;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<Value>? _values;
  @override
  @JsonKey(name: "values")
  List<Value>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "maxY")
  final int? maxY;
  @override
  @JsonKey(name: "minY")
  final int? minY;

  @override
  String toString() {
    return 'Data(values: $values, maxY: $maxY, minY: $minY)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.maxY, maxY) || other.maxY == maxY) &&
            (identical(other.minY, minY) || other.minY == minY));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_values), maxY, minY);

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
      {@JsonKey(name: "values") final List<Value>? values,
      @JsonKey(name: "maxY") final int? maxY,
      @JsonKey(name: "minY") final int? minY}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "values")
  List<Value>? get values;
  @override
  @JsonKey(name: "maxY")
  int? get maxY;
  @override
  @JsonKey(name: "minY")
  int? get minY;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Value _$ValueFromJson(Map<String, dynamic> json) {
  return _Value.fromJson(json);
}

/// @nodoc
mixin _$Value {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "netAmount")
  num? get netAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "day")
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValueCopyWith<Value> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueCopyWith<$Res> {
  factory $ValueCopyWith(Value value, $Res Function(Value) then) =
      _$ValueCopyWithImpl<$Res, Value>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "toUser") String? toUser,
      @JsonKey(name: "fromUser") String? fromUser,
      @JsonKey(name: "amount") num? amount,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "netAmount") num? netAmount,
      @JsonKey(name: "day") String? day,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class _$ValueCopyWithImpl<$Res, $Val extends Value>
    implements $ValueCopyWith<$Res> {
  _$ValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? toUser = freezed,
    Object? fromUser = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? type = freezed,
    Object? netAmount = freezed,
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
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num?,
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
abstract class _$$ValueImplCopyWith<$Res> implements $ValueCopyWith<$Res> {
  factory _$$ValueImplCopyWith(
          _$ValueImpl value, $Res Function(_$ValueImpl) then) =
      __$$ValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "toUser") String? toUser,
      @JsonKey(name: "fromUser") String? fromUser,
      @JsonKey(name: "amount") num? amount,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "netAmount") num? netAmount,
      @JsonKey(name: "day") String? day,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class __$$ValueImplCopyWithImpl<$Res>
    extends _$ValueCopyWithImpl<$Res, _$ValueImpl>
    implements _$$ValueImplCopyWith<$Res> {
  __$$ValueImplCopyWithImpl(
      _$ValueImpl _value, $Res Function(_$ValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
    Object? toUser = freezed,
    Object? fromUser = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? type = freezed,
    Object? netAmount = freezed,
    Object? day = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ValueImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
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
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num?,
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
class _$ValueImpl implements _Value {
  const _$ValueImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "toUser") this.toUser,
      @JsonKey(name: "fromUser") this.fromUser,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "currency") this.currency,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "netAmount") this.netAmount,
      @JsonKey(name: "day") this.day,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$ValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "groupId")
  final String? groupId;
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
  @JsonKey(name: "netAmount")
  final num? netAmount;
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
    return 'Value(id: $id, groupId: $groupId, toUser: $toUser, fromUser: $fromUser, amount: $amount, currency: $currency, type: $type, netAmount: $netAmount, day: $day, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.toUser, toUser) || other.toUser == toUser) &&
            (identical(other.fromUser, fromUser) ||
                other.fromUser == fromUser) &&
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
  int get hashCode => Object.hash(runtimeType, id, groupId, toUser, fromUser,
      amount, currency, type, netAmount, day, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      __$$ValueImplCopyWithImpl<_$ValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueImplToJson(
      this,
    );
  }
}

abstract class _Value implements Value {
  const factory _Value(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "groupId") final String? groupId,
      @JsonKey(name: "toUser") final String? toUser,
      @JsonKey(name: "fromUser") final String? fromUser,
      @JsonKey(name: "amount") final num? amount,
      @JsonKey(name: "currency") final String? currency,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "netAmount") final num? netAmount,
      @JsonKey(name: "day") final String? day,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$ValueImpl;

  factory _Value.fromJson(Map<String, dynamic> json) = _$ValueImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "groupId")
  String? get groupId;
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
  @JsonKey(name: "netAmount")
  num? get netAmount;
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
  _$$ValueImplCopyWith<_$ValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_total_transactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTotalTransactionResponseModel _$GetTotalTransactionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetTotalTransactionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetTotalTransactionResponseModel {
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
  $GetTotalTransactionResponseModelCopyWith<GetTotalTransactionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTotalTransactionResponseModelCopyWith<$Res> {
  factory $GetTotalTransactionResponseModelCopyWith(
          GetTotalTransactionResponseModel value,
          $Res Function(GetTotalTransactionResponseModel) then) =
      _$GetTotalTransactionResponseModelCopyWithImpl<$Res,
          GetTotalTransactionResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetTotalTransactionResponseModelCopyWithImpl<$Res,
        $Val extends GetTotalTransactionResponseModel>
    implements $GetTotalTransactionResponseModelCopyWith<$Res> {
  _$GetTotalTransactionResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetTotalTransactionResponseModelImplCopyWith<$Res>
    implements $GetTotalTransactionResponseModelCopyWith<$Res> {
  factory _$$GetTotalTransactionResponseModelImplCopyWith(
          _$GetTotalTransactionResponseModelImpl value,
          $Res Function(_$GetTotalTransactionResponseModelImpl) then) =
      __$$GetTotalTransactionResponseModelImplCopyWithImpl<$Res>;
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
class __$$GetTotalTransactionResponseModelImplCopyWithImpl<$Res>
    extends _$GetTotalTransactionResponseModelCopyWithImpl<$Res,
        _$GetTotalTransactionResponseModelImpl>
    implements _$$GetTotalTransactionResponseModelImplCopyWith<$Res> {
  __$$GetTotalTransactionResponseModelImplCopyWithImpl(
      _$GetTotalTransactionResponseModelImpl _value,
      $Res Function(_$GetTotalTransactionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetTotalTransactionResponseModelImpl(
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
class _$GetTotalTransactionResponseModelImpl
    implements _GetTotalTransactionResponseModel {
  const _$GetTotalTransactionResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$GetTotalTransactionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetTotalTransactionResponseModelImplFromJson(json);

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
    return 'GetTotalTransactionResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTotalTransactionResponseModelImpl &&
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
  _$$GetTotalTransactionResponseModelImplCopyWith<
          _$GetTotalTransactionResponseModelImpl>
      get copyWith => __$$GetTotalTransactionResponseModelImplCopyWithImpl<
          _$GetTotalTransactionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTotalTransactionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetTotalTransactionResponseModel
    implements GetTotalTransactionResponseModel {
  const factory _GetTotalTransactionResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$GetTotalTransactionResponseModelImpl;

  factory _GetTotalTransactionResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetTotalTransactionResponseModelImpl.fromJson;

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
  _$$GetTotalTransactionResponseModelImplCopyWith<
          _$GetTotalTransactionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "groupTotalAmount")
  TotalAmount? get groupTotalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "profileTotalAmount")
  TotalAmount? get profileTotalAmount => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "groupTotalAmount") TotalAmount? groupTotalAmount,
      @JsonKey(name: "profileTotalAmount") TotalAmount? profileTotalAmount});

  $TotalAmountCopyWith<$Res>? get groupTotalAmount;
  $TotalAmountCopyWith<$Res>? get profileTotalAmount;
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
    Object? groupTotalAmount = freezed,
    Object? profileTotalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      groupTotalAmount: freezed == groupTotalAmount
          ? _value.groupTotalAmount
          : groupTotalAmount // ignore: cast_nullable_to_non_nullable
              as TotalAmount?,
      profileTotalAmount: freezed == profileTotalAmount
          ? _value.profileTotalAmount
          : profileTotalAmount // ignore: cast_nullable_to_non_nullable
              as TotalAmount?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalAmountCopyWith<$Res>? get groupTotalAmount {
    if (_value.groupTotalAmount == null) {
      return null;
    }

    return $TotalAmountCopyWith<$Res>(_value.groupTotalAmount!, (value) {
      return _then(_value.copyWith(groupTotalAmount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TotalAmountCopyWith<$Res>? get profileTotalAmount {
    if (_value.profileTotalAmount == null) {
      return null;
    }

    return $TotalAmountCopyWith<$Res>(_value.profileTotalAmount!, (value) {
      return _then(_value.copyWith(profileTotalAmount: value) as $Val);
    });
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
      {@JsonKey(name: "groupTotalAmount") TotalAmount? groupTotalAmount,
      @JsonKey(name: "profileTotalAmount") TotalAmount? profileTotalAmount});

  @override
  $TotalAmountCopyWith<$Res>? get groupTotalAmount;
  @override
  $TotalAmountCopyWith<$Res>? get profileTotalAmount;
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
    Object? groupTotalAmount = freezed,
    Object? profileTotalAmount = freezed,
  }) {
    return _then(_$DataImpl(
      groupTotalAmount: freezed == groupTotalAmount
          ? _value.groupTotalAmount
          : groupTotalAmount // ignore: cast_nullable_to_non_nullable
              as TotalAmount?,
      profileTotalAmount: freezed == profileTotalAmount
          ? _value.profileTotalAmount
          : profileTotalAmount // ignore: cast_nullable_to_non_nullable
              as TotalAmount?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "groupTotalAmount") this.groupTotalAmount,
      @JsonKey(name: "profileTotalAmount") this.profileTotalAmount});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "groupTotalAmount")
  final TotalAmount? groupTotalAmount;
  @override
  @JsonKey(name: "profileTotalAmount")
  final TotalAmount? profileTotalAmount;

  @override
  String toString() {
    return 'Data(groupTotalAmount: $groupTotalAmount, profileTotalAmount: $profileTotalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.groupTotalAmount, groupTotalAmount) ||
                other.groupTotalAmount == groupTotalAmount) &&
            (identical(other.profileTotalAmount, profileTotalAmount) ||
                other.profileTotalAmount == profileTotalAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, groupTotalAmount, profileTotalAmount);

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
      {@JsonKey(name: "groupTotalAmount") final TotalAmount? groupTotalAmount,
      @JsonKey(name: "profileTotalAmount")
      final TotalAmount? profileTotalAmount}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "groupTotalAmount")
  TotalAmount? get groupTotalAmount;
  @override
  @JsonKey(name: "profileTotalAmount")
  TotalAmount? get profileTotalAmount;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TotalAmount _$TotalAmountFromJson(Map<String, dynamic> json) {
  return _TotalAmount.fromJson(json);
}

/// @nodoc
mixin _$TotalAmount {
  @JsonKey(name: "grossAmount")
  num? get grossAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "netAmount")
  num? get netAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalAmountCopyWith<TotalAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalAmountCopyWith<$Res> {
  factory $TotalAmountCopyWith(
          TotalAmount value, $Res Function(TotalAmount) then) =
      _$TotalAmountCopyWithImpl<$Res, TotalAmount>;
  @useResult
  $Res call(
      {@JsonKey(name: "grossAmount") num? grossAmount,
      @JsonKey(name: "netAmount") num? netAmount});
}

/// @nodoc
class _$TotalAmountCopyWithImpl<$Res, $Val extends TotalAmount>
    implements $TotalAmountCopyWith<$Res> {
  _$TotalAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grossAmount = freezed,
    Object? netAmount = freezed,
  }) {
    return _then(_value.copyWith(
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalAmountImplCopyWith<$Res>
    implements $TotalAmountCopyWith<$Res> {
  factory _$$TotalAmountImplCopyWith(
          _$TotalAmountImpl value, $Res Function(_$TotalAmountImpl) then) =
      __$$TotalAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "grossAmount") num? grossAmount,
      @JsonKey(name: "netAmount") num? netAmount});
}

/// @nodoc
class __$$TotalAmountImplCopyWithImpl<$Res>
    extends _$TotalAmountCopyWithImpl<$Res, _$TotalAmountImpl>
    implements _$$TotalAmountImplCopyWith<$Res> {
  __$$TotalAmountImplCopyWithImpl(
      _$TotalAmountImpl _value, $Res Function(_$TotalAmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grossAmount = freezed,
    Object? netAmount = freezed,
  }) {
    return _then(_$TotalAmountImpl(
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      netAmount: freezed == netAmount
          ? _value.netAmount
          : netAmount // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalAmountImpl implements _TotalAmount {
  const _$TotalAmountImpl(
      {@JsonKey(name: "grossAmount") this.grossAmount,
      @JsonKey(name: "netAmount") this.netAmount});

  factory _$TotalAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalAmountImplFromJson(json);

  @override
  @JsonKey(name: "grossAmount")
  final num? grossAmount;
  @override
  @JsonKey(name: "netAmount")
  final num? netAmount;

  @override
  String toString() {
    return 'TotalAmount(grossAmount: $grossAmount, netAmount: $netAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalAmountImpl &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount) &&
            (identical(other.netAmount, netAmount) ||
                other.netAmount == netAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, grossAmount, netAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalAmountImplCopyWith<_$TotalAmountImpl> get copyWith =>
      __$$TotalAmountImplCopyWithImpl<_$TotalAmountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalAmountImplToJson(
      this,
    );
  }
}

abstract class _TotalAmount implements TotalAmount {
  const factory _TotalAmount(
      {@JsonKey(name: "grossAmount") final num? grossAmount,
      @JsonKey(name: "netAmount") final num? netAmount}) = _$TotalAmountImpl;

  factory _TotalAmount.fromJson(Map<String, dynamic> json) =
      _$TotalAmountImpl.fromJson;

  @override
  @JsonKey(name: "grossAmount")
  num? get grossAmount;
  @override
  @JsonKey(name: "netAmount")
  num? get netAmount;
  @override
  @JsonKey(ignore: true)
  _$$TotalAmountImplCopyWith<_$TotalAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

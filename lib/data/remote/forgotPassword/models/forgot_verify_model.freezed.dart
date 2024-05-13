// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_verify_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForgotVerifyRequestModel _$ForgotVerifyRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ForgotVerifyRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ForgotVerifyRequestModel {
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  int? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotVerifyRequestModelCopyWith<ForgotVerifyRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotVerifyRequestModelCopyWith<$Res> {
  factory $ForgotVerifyRequestModelCopyWith(ForgotVerifyRequestModel value,
          $Res Function(ForgotVerifyRequestModel) then) =
      _$ForgotVerifyRequestModelCopyWithImpl<$Res, ForgotVerifyRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email, @JsonKey(name: "otp") int? otp});
}

/// @nodoc
class _$ForgotVerifyRequestModelCopyWithImpl<$Res,
        $Val extends ForgotVerifyRequestModel>
    implements $ForgotVerifyRequestModelCopyWith<$Res> {
  _$ForgotVerifyRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotVerifyRequestModelImplCopyWith<$Res>
    implements $ForgotVerifyRequestModelCopyWith<$Res> {
  factory _$$ForgotVerifyRequestModelImplCopyWith(
          _$ForgotVerifyRequestModelImpl value,
          $Res Function(_$ForgotVerifyRequestModelImpl) then) =
      __$$ForgotVerifyRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email, @JsonKey(name: "otp") int? otp});
}

/// @nodoc
class __$$ForgotVerifyRequestModelImplCopyWithImpl<$Res>
    extends _$ForgotVerifyRequestModelCopyWithImpl<$Res,
        _$ForgotVerifyRequestModelImpl>
    implements _$$ForgotVerifyRequestModelImplCopyWith<$Res> {
  __$$ForgotVerifyRequestModelImplCopyWithImpl(
      _$ForgotVerifyRequestModelImpl _value,
      $Res Function(_$ForgotVerifyRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$ForgotVerifyRequestModelImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForgotVerifyRequestModelImpl implements _ForgotVerifyRequestModel {
  const _$ForgotVerifyRequestModelImpl(
      {@JsonKey(name: "email") this.email, @JsonKey(name: "otp") this.otp});

  factory _$ForgotVerifyRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotVerifyRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "otp")
  final int? otp;

  @override
  String toString() {
    return 'ForgotVerifyRequestModel(email: $email, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotVerifyRequestModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotVerifyRequestModelImplCopyWith<_$ForgotVerifyRequestModelImpl>
      get copyWith => __$$ForgotVerifyRequestModelImplCopyWithImpl<
          _$ForgotVerifyRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotVerifyRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ForgotVerifyRequestModel implements ForgotVerifyRequestModel {
  const factory _ForgotVerifyRequestModel(
      {@JsonKey(name: "email") final String? email,
      @JsonKey(name: "otp") final int? otp}) = _$ForgotVerifyRequestModelImpl;

  factory _ForgotVerifyRequestModel.fromJson(Map<String, dynamic> json) =
      _$ForgotVerifyRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "otp")
  int? get otp;
  @override
  @JsonKey(ignore: true)
  _$$ForgotVerifyRequestModelImplCopyWith<_$ForgotVerifyRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ForgotVerifyResponseModel _$ForgotVerifyResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ForgotVerifyResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ForgotVerifyResponseModel {
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
  $ForgotVerifyResponseModelCopyWith<ForgotVerifyResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotVerifyResponseModelCopyWith<$Res> {
  factory $ForgotVerifyResponseModelCopyWith(ForgotVerifyResponseModel value,
          $Res Function(ForgotVerifyResponseModel) then) =
      _$ForgotVerifyResponseModelCopyWithImpl<$Res, ForgotVerifyResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ForgotVerifyResponseModelCopyWithImpl<$Res,
        $Val extends ForgotVerifyResponseModel>
    implements $ForgotVerifyResponseModelCopyWith<$Res> {
  _$ForgotVerifyResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ForgotVerifyResponseModelImplCopyWith<$Res>
    implements $ForgotVerifyResponseModelCopyWith<$Res> {
  factory _$$ForgotVerifyResponseModelImplCopyWith(
          _$ForgotVerifyResponseModelImpl value,
          $Res Function(_$ForgotVerifyResponseModelImpl) then) =
      __$$ForgotVerifyResponseModelImplCopyWithImpl<$Res>;
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
class __$$ForgotVerifyResponseModelImplCopyWithImpl<$Res>
    extends _$ForgotVerifyResponseModelCopyWithImpl<$Res,
        _$ForgotVerifyResponseModelImpl>
    implements _$$ForgotVerifyResponseModelImplCopyWith<$Res> {
  __$$ForgotVerifyResponseModelImplCopyWithImpl(
      _$ForgotVerifyResponseModelImpl _value,
      $Res Function(_$ForgotVerifyResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ForgotVerifyResponseModelImpl(
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
class _$ForgotVerifyResponseModelImpl implements _ForgotVerifyResponseModel {
  const _$ForgotVerifyResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$ForgotVerifyResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForgotVerifyResponseModelImplFromJson(json);

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
    return 'ForgotVerifyResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotVerifyResponseModelImpl &&
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
  _$$ForgotVerifyResponseModelImplCopyWith<_$ForgotVerifyResponseModelImpl>
      get copyWith => __$$ForgotVerifyResponseModelImplCopyWithImpl<
          _$ForgotVerifyResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForgotVerifyResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ForgotVerifyResponseModel implements ForgotVerifyResponseModel {
  const factory _ForgotVerifyResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$ForgotVerifyResponseModelImpl;

  factory _ForgotVerifyResponseModel.fromJson(Map<String, dynamic> json) =
      _$ForgotVerifyResponseModelImpl.fromJson;

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
  _$$ForgotVerifyResponseModelImplCopyWith<_$ForgotVerifyResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl();

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  String toString() {
    return 'Data()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data() = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;
}

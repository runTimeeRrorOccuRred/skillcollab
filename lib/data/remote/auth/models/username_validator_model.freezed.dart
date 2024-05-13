// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'username_validator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsernameValidatorRequest _$UsernameValidatorRequestFromJson(
    Map<String, dynamic> json) {
  return _UsernameValidatorRequest.fromJson(json);
}

/// @nodoc
mixin _$UsernameValidatorRequest {
  @JsonKey(name: "userName")
  String? get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsernameValidatorRequestCopyWith<UsernameValidatorRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameValidatorRequestCopyWith<$Res> {
  factory $UsernameValidatorRequestCopyWith(UsernameValidatorRequest value,
          $Res Function(UsernameValidatorRequest) then) =
      _$UsernameValidatorRequestCopyWithImpl<$Res, UsernameValidatorRequest>;
  @useResult
  $Res call({@JsonKey(name: "userName") String? userName});
}

/// @nodoc
class _$UsernameValidatorRequestCopyWithImpl<$Res,
        $Val extends UsernameValidatorRequest>
    implements $UsernameValidatorRequestCopyWith<$Res> {
  _$UsernameValidatorRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsernameValidatorRequestImplCopyWith<$Res>
    implements $UsernameValidatorRequestCopyWith<$Res> {
  factory _$$UsernameValidatorRequestImplCopyWith(
          _$UsernameValidatorRequestImpl value,
          $Res Function(_$UsernameValidatorRequestImpl) then) =
      __$$UsernameValidatorRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "userName") String? userName});
}

/// @nodoc
class __$$UsernameValidatorRequestImplCopyWithImpl<$Res>
    extends _$UsernameValidatorRequestCopyWithImpl<$Res,
        _$UsernameValidatorRequestImpl>
    implements _$$UsernameValidatorRequestImplCopyWith<$Res> {
  __$$UsernameValidatorRequestImplCopyWithImpl(
      _$UsernameValidatorRequestImpl _value,
      $Res Function(_$UsernameValidatorRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_$UsernameValidatorRequestImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsernameValidatorRequestImpl implements _UsernameValidatorRequest {
  const _$UsernameValidatorRequestImpl(
      {@JsonKey(name: "userName") this.userName});

  factory _$UsernameValidatorRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsernameValidatorRequestImplFromJson(json);

  @override
  @JsonKey(name: "userName")
  final String? userName;

  @override
  String toString() {
    return 'UsernameValidatorRequest(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameValidatorRequestImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameValidatorRequestImplCopyWith<_$UsernameValidatorRequestImpl>
      get copyWith => __$$UsernameValidatorRequestImplCopyWithImpl<
          _$UsernameValidatorRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsernameValidatorRequestImplToJson(
      this,
    );
  }
}

abstract class _UsernameValidatorRequest implements UsernameValidatorRequest {
  const factory _UsernameValidatorRequest(
          {@JsonKey(name: "userName") final String? userName}) =
      _$UsernameValidatorRequestImpl;

  factory _UsernameValidatorRequest.fromJson(Map<String, dynamic> json) =
      _$UsernameValidatorRequestImpl.fromJson;

  @override
  @JsonKey(name: "userName")
  String? get userName;
  @override
  @JsonKey(ignore: true)
  _$$UsernameValidatorRequestImplCopyWith<_$UsernameValidatorRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UsernameValidatorResponse _$UsernameValidatorResponseFromJson(
    Map<String, dynamic> json) {
  return _UsernameValidatorResponse.fromJson(json);
}

/// @nodoc
mixin _$UsernameValidatorResponse {
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
  $UsernameValidatorResponseCopyWith<UsernameValidatorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameValidatorResponseCopyWith<$Res> {
  factory $UsernameValidatorResponseCopyWith(UsernameValidatorResponse value,
          $Res Function(UsernameValidatorResponse) then) =
      _$UsernameValidatorResponseCopyWithImpl<$Res, UsernameValidatorResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UsernameValidatorResponseCopyWithImpl<$Res,
        $Val extends UsernameValidatorResponse>
    implements $UsernameValidatorResponseCopyWith<$Res> {
  _$UsernameValidatorResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$UsernameValidatorResponseImplCopyWith<$Res>
    implements $UsernameValidatorResponseCopyWith<$Res> {
  factory _$$UsernameValidatorResponseImplCopyWith(
          _$UsernameValidatorResponseImpl value,
          $Res Function(_$UsernameValidatorResponseImpl) then) =
      __$$UsernameValidatorResponseImplCopyWithImpl<$Res>;
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
class __$$UsernameValidatorResponseImplCopyWithImpl<$Res>
    extends _$UsernameValidatorResponseCopyWithImpl<$Res,
        _$UsernameValidatorResponseImpl>
    implements _$$UsernameValidatorResponseImplCopyWith<$Res> {
  __$$UsernameValidatorResponseImplCopyWithImpl(
      _$UsernameValidatorResponseImpl _value,
      $Res Function(_$UsernameValidatorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UsernameValidatorResponseImpl(
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
class _$UsernameValidatorResponseImpl implements _UsernameValidatorResponse {
  const _$UsernameValidatorResponseImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$UsernameValidatorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsernameValidatorResponseImplFromJson(json);

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
    return 'UsernameValidatorResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameValidatorResponseImpl &&
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
  _$$UsernameValidatorResponseImplCopyWith<_$UsernameValidatorResponseImpl>
      get copyWith => __$$UsernameValidatorResponseImplCopyWithImpl<
          _$UsernameValidatorResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsernameValidatorResponseImplToJson(
      this,
    );
  }
}

abstract class _UsernameValidatorResponse implements UsernameValidatorResponse {
  const factory _UsernameValidatorResponse(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$UsernameValidatorResponseImpl;

  factory _UsernameValidatorResponse.fromJson(Map<String, dynamic> json) =
      _$UsernameValidatorResponseImpl.fromJson;

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
  _$$UsernameValidatorResponseImplCopyWith<_$UsernameValidatorResponseImpl>
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

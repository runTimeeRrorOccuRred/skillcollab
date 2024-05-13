// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetPasswordRequestModel _$ResetPasswordRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ResetPasswordRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordRequestModel {
  @JsonKey(name: "otp")
  int? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "newPassword")
  String? get newPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmPassword")
  String? get confirmPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordRequestModelCopyWith<ResetPasswordRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordRequestModelCopyWith<$Res> {
  factory $ResetPasswordRequestModelCopyWith(ResetPasswordRequestModel value,
          $Res Function(ResetPasswordRequestModel) then) =
      _$ResetPasswordRequestModelCopyWithImpl<$Res, ResetPasswordRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "otp") int? otp,
      @JsonKey(name: "newPassword") String? newPassword,
      @JsonKey(name: "confirmPassword") String? confirmPassword,
      @JsonKey(name: "email") String? email});
}

/// @nodoc
class _$ResetPasswordRequestModelCopyWithImpl<$Res,
        $Val extends ResetPasswordRequestModel>
    implements $ResetPasswordRequestModelCopyWith<$Res> {
  _$ResetPasswordRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordRequestModelImplCopyWith<$Res>
    implements $ResetPasswordRequestModelCopyWith<$Res> {
  factory _$$ResetPasswordRequestModelImplCopyWith(
          _$ResetPasswordRequestModelImpl value,
          $Res Function(_$ResetPasswordRequestModelImpl) then) =
      __$$ResetPasswordRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "otp") int? otp,
      @JsonKey(name: "newPassword") String? newPassword,
      @JsonKey(name: "confirmPassword") String? confirmPassword,
      @JsonKey(name: "email") String? email});
}

/// @nodoc
class __$$ResetPasswordRequestModelImplCopyWithImpl<$Res>
    extends _$ResetPasswordRequestModelCopyWithImpl<$Res,
        _$ResetPasswordRequestModelImpl>
    implements _$$ResetPasswordRequestModelImplCopyWith<$Res> {
  __$$ResetPasswordRequestModelImplCopyWithImpl(
      _$ResetPasswordRequestModelImpl _value,
      $Res Function(_$ResetPasswordRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
    Object? email = freezed,
  }) {
    return _then(_$ResetPasswordRequestModelImpl(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordRequestModelImpl implements _ResetPasswordRequestModel {
  const _$ResetPasswordRequestModelImpl(
      {@JsonKey(name: "otp") this.otp,
      @JsonKey(name: "newPassword") this.newPassword,
      @JsonKey(name: "confirmPassword") this.confirmPassword,
      @JsonKey(name: "email") this.email});

  factory _$ResetPasswordRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "otp")
  final int? otp;
  @override
  @JsonKey(name: "newPassword")
  final String? newPassword;
  @override
  @JsonKey(name: "confirmPassword")
  final String? confirmPassword;
  @override
  @JsonKey(name: "email")
  final String? email;

  @override
  String toString() {
    return 'ResetPasswordRequestModel(otp: $otp, newPassword: $newPassword, confirmPassword: $confirmPassword, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordRequestModelImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, otp, newPassword, confirmPassword, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordRequestModelImplCopyWith<_$ResetPasswordRequestModelImpl>
      get copyWith => __$$ResetPasswordRequestModelImplCopyWithImpl<
          _$ResetPasswordRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordRequestModel implements ResetPasswordRequestModel {
  const factory _ResetPasswordRequestModel(
          {@JsonKey(name: "otp") final int? otp,
          @JsonKey(name: "newPassword") final String? newPassword,
          @JsonKey(name: "confirmPassword") final String? confirmPassword,
          @JsonKey(name: "email") final String? email}) =
      _$ResetPasswordRequestModelImpl;

  factory _ResetPasswordRequestModel.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "otp")
  int? get otp;
  @override
  @JsonKey(name: "newPassword")
  String? get newPassword;
  @override
  @JsonKey(name: "confirmPassword")
  String? get confirmPassword;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordRequestModelImplCopyWith<_$ResetPasswordRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResetPasswordResponseModel _$ResetPasswordResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ResetPasswordResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordResponseModel {
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
  $ResetPasswordResponseModelCopyWith<ResetPasswordResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordResponseModelCopyWith<$Res> {
  factory $ResetPasswordResponseModelCopyWith(ResetPasswordResponseModel value,
          $Res Function(ResetPasswordResponseModel) then) =
      _$ResetPasswordResponseModelCopyWithImpl<$Res,
          ResetPasswordResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResetPasswordResponseModelCopyWithImpl<$Res,
        $Val extends ResetPasswordResponseModel>
    implements $ResetPasswordResponseModelCopyWith<$Res> {
  _$ResetPasswordResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ResetPasswordResponseModelImplCopyWith<$Res>
    implements $ResetPasswordResponseModelCopyWith<$Res> {
  factory _$$ResetPasswordResponseModelImplCopyWith(
          _$ResetPasswordResponseModelImpl value,
          $Res Function(_$ResetPasswordResponseModelImpl) then) =
      __$$ResetPasswordResponseModelImplCopyWithImpl<$Res>;
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
class __$$ResetPasswordResponseModelImplCopyWithImpl<$Res>
    extends _$ResetPasswordResponseModelCopyWithImpl<$Res,
        _$ResetPasswordResponseModelImpl>
    implements _$$ResetPasswordResponseModelImplCopyWith<$Res> {
  __$$ResetPasswordResponseModelImplCopyWithImpl(
      _$ResetPasswordResponseModelImpl _value,
      $Res Function(_$ResetPasswordResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResetPasswordResponseModelImpl(
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
class _$ResetPasswordResponseModelImpl implements _ResetPasswordResponseModel {
  const _$ResetPasswordResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$ResetPasswordResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResetPasswordResponseModelImplFromJson(json);

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
    return 'ResetPasswordResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordResponseModelImpl &&
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
  _$$ResetPasswordResponseModelImplCopyWith<_$ResetPasswordResponseModelImpl>
      get copyWith => __$$ResetPasswordResponseModelImplCopyWithImpl<
          _$ResetPasswordResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordResponseModel
    implements ResetPasswordResponseModel {
  const factory _ResetPasswordResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$ResetPasswordResponseModelImpl;

  factory _ResetPasswordResponseModel.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordResponseModelImpl.fromJson;

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
  _$$ResetPasswordResponseModelImplCopyWith<_$ResetPasswordResponseModelImpl>
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

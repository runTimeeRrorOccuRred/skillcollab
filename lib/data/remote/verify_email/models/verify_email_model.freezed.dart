// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyEmailRequestModel _$VerifyEmailRequestModelFromJson(
    Map<String, dynamic> json) {
  return _VerifyEmailRequestModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyEmailRequestModel {
  int? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyEmailRequestModelCopyWith<VerifyEmailRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailRequestModelCopyWith<$Res> {
  factory $VerifyEmailRequestModelCopyWith(VerifyEmailRequestModel value,
          $Res Function(VerifyEmailRequestModel) then) =
      _$VerifyEmailRequestModelCopyWithImpl<$Res, VerifyEmailRequestModel>;
  @useResult
  $Res call({int? otp});
}

/// @nodoc
class _$VerifyEmailRequestModelCopyWithImpl<$Res,
        $Val extends VerifyEmailRequestModel>
    implements $VerifyEmailRequestModelCopyWith<$Res> {
  _$VerifyEmailRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyEmailRequestModelImplCopyWith<$Res>
    implements $VerifyEmailRequestModelCopyWith<$Res> {
  factory _$$VerifyEmailRequestModelImplCopyWith(
          _$VerifyEmailRequestModelImpl value,
          $Res Function(_$VerifyEmailRequestModelImpl) then) =
      __$$VerifyEmailRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? otp});
}

/// @nodoc
class __$$VerifyEmailRequestModelImplCopyWithImpl<$Res>
    extends _$VerifyEmailRequestModelCopyWithImpl<$Res,
        _$VerifyEmailRequestModelImpl>
    implements _$$VerifyEmailRequestModelImplCopyWith<$Res> {
  __$$VerifyEmailRequestModelImplCopyWithImpl(
      _$VerifyEmailRequestModelImpl _value,
      $Res Function(_$VerifyEmailRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_$VerifyEmailRequestModelImpl(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyEmailRequestModelImpl implements _VerifyEmailRequestModel {
  const _$VerifyEmailRequestModelImpl({this.otp});

  factory _$VerifyEmailRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyEmailRequestModelImplFromJson(json);

  @override
  final int? otp;

  @override
  String toString() {
    return 'VerifyEmailRequestModel(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyEmailRequestModelImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyEmailRequestModelImplCopyWith<_$VerifyEmailRequestModelImpl>
      get copyWith => __$$VerifyEmailRequestModelImplCopyWithImpl<
          _$VerifyEmailRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyEmailRequestModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyEmailRequestModel implements VerifyEmailRequestModel {
  const factory _VerifyEmailRequestModel({final int? otp}) =
      _$VerifyEmailRequestModelImpl;

  factory _VerifyEmailRequestModel.fromJson(Map<String, dynamic> json) =
      _$VerifyEmailRequestModelImpl.fromJson;

  @override
  int? get otp;
  @override
  @JsonKey(ignore: true)
  _$$VerifyEmailRequestModelImplCopyWith<_$VerifyEmailRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerifyEmailResponseModel _$VerifyEmailResponseModelFromJson(
    Map<String, dynamic> json) {
  return _VerifyEmailResponseModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyEmailResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyEmailResponseModelCopyWith<VerifyEmailResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailResponseModelCopyWith<$Res> {
  factory $VerifyEmailResponseModelCopyWith(VerifyEmailResponseModel value,
          $Res Function(VerifyEmailResponseModel) then) =
      _$VerifyEmailResponseModelCopyWithImpl<$Res, VerifyEmailResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess});
}

/// @nodoc
class _$VerifyEmailResponseModelCopyWithImpl<$Res,
        $Val extends VerifyEmailResponseModel>
    implements $VerifyEmailResponseModelCopyWith<$Res> {
  _$VerifyEmailResponseModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyEmailResponseModelImplCopyWith<$Res>
    implements $VerifyEmailResponseModelCopyWith<$Res> {
  factory _$$VerifyEmailResponseModelImplCopyWith(
          _$VerifyEmailResponseModelImpl value,
          $Res Function(_$VerifyEmailResponseModelImpl) then) =
      __$$VerifyEmailResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess});
}

/// @nodoc
class __$$VerifyEmailResponseModelImplCopyWithImpl<$Res>
    extends _$VerifyEmailResponseModelCopyWithImpl<$Res,
        _$VerifyEmailResponseModelImpl>
    implements _$$VerifyEmailResponseModelImplCopyWith<$Res> {
  __$$VerifyEmailResponseModelImplCopyWithImpl(
      _$VerifyEmailResponseModelImpl _value,
      $Res Function(_$VerifyEmailResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
  }) {
    return _then(_$VerifyEmailResponseModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyEmailResponseModelImpl implements _VerifyEmailResponseModel {
  const _$VerifyEmailResponseModelImpl(
      {this.code, this.message, this.isSuccess});

  factory _$VerifyEmailResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyEmailResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;

  @override
  String toString() {
    return 'VerifyEmailResponseModel(code: $code, message: $message, isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyEmailResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyEmailResponseModelImplCopyWith<_$VerifyEmailResponseModelImpl>
      get copyWith => __$$VerifyEmailResponseModelImplCopyWithImpl<
          _$VerifyEmailResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyEmailResponseModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyEmailResponseModel implements VerifyEmailResponseModel {
  const factory _VerifyEmailResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess}) = _$VerifyEmailResponseModelImpl;

  factory _VerifyEmailResponseModel.fromJson(Map<String, dynamic> json) =
      _$VerifyEmailResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  @JsonKey(ignore: true)
  _$$VerifyEmailResponseModelImplCopyWith<_$VerifyEmailResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

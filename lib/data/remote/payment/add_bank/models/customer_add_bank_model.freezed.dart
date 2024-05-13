// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_add_bank_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddBankRequestModel _$AddBankRequestModelFromJson(Map<String, dynamic> json) {
  return _AddBankRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AddBankRequestModel {
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddBankRequestModelCopyWith<AddBankRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBankRequestModelCopyWith<$Res> {
  factory $AddBankRequestModelCopyWith(
          AddBankRequestModel value, $Res Function(AddBankRequestModel) then) =
      _$AddBankRequestModelCopyWithImpl<$Res, AddBankRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$AddBankRequestModelCopyWithImpl<$Res, $Val extends AddBankRequestModel>
    implements $AddBankRequestModelCopyWith<$Res> {
  _$AddBankRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddBankRequestModelImplCopyWith<$Res>
    implements $AddBankRequestModelCopyWith<$Res> {
  factory _$$AddBankRequestModelImplCopyWith(_$AddBankRequestModelImpl value,
          $Res Function(_$AddBankRequestModelImpl) then) =
      __$$AddBankRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "name") String? name});
}

/// @nodoc
class __$$AddBankRequestModelImplCopyWithImpl<$Res>
    extends _$AddBankRequestModelCopyWithImpl<$Res, _$AddBankRequestModelImpl>
    implements _$$AddBankRequestModelImplCopyWith<$Res> {
  __$$AddBankRequestModelImplCopyWithImpl(_$AddBankRequestModelImpl _value,
      $Res Function(_$AddBankRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_$AddBankRequestModelImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddBankRequestModelImpl implements _AddBankRequestModel {
  const _$AddBankRequestModelImpl(
      {@JsonKey(name: "email") this.email, @JsonKey(name: "name") this.name});

  factory _$AddBankRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddBankRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'AddBankRequestModel(email: $email, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBankRequestModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBankRequestModelImplCopyWith<_$AddBankRequestModelImpl> get copyWith =>
      __$$AddBankRequestModelImplCopyWithImpl<_$AddBankRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddBankRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AddBankRequestModel implements AddBankRequestModel {
  const factory _AddBankRequestModel(
      {@JsonKey(name: "email") final String? email,
      @JsonKey(name: "name") final String? name}) = _$AddBankRequestModelImpl;

  factory _AddBankRequestModel.fromJson(Map<String, dynamic> json) =
      _$AddBankRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$AddBankRequestModelImplCopyWith<_$AddBankRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddBankResponseModel _$AddBankResponseModelFromJson(Map<String, dynamic> json) {
  return _AddBankResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AddBankResponseModel {
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
  $AddBankResponseModelCopyWith<AddBankResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBankResponseModelCopyWith<$Res> {
  factory $AddBankResponseModelCopyWith(AddBankResponseModel value,
          $Res Function(AddBankResponseModel) then) =
      _$AddBankResponseModelCopyWithImpl<$Res, AddBankResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddBankResponseModelCopyWithImpl<$Res,
        $Val extends AddBankResponseModel>
    implements $AddBankResponseModelCopyWith<$Res> {
  _$AddBankResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AddBankResponseModelImplCopyWith<$Res>
    implements $AddBankResponseModelCopyWith<$Res> {
  factory _$$AddBankResponseModelImplCopyWith(_$AddBankResponseModelImpl value,
          $Res Function(_$AddBankResponseModelImpl) then) =
      __$$AddBankResponseModelImplCopyWithImpl<$Res>;
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
class __$$AddBankResponseModelImplCopyWithImpl<$Res>
    extends _$AddBankResponseModelCopyWithImpl<$Res, _$AddBankResponseModelImpl>
    implements _$$AddBankResponseModelImplCopyWith<$Res> {
  __$$AddBankResponseModelImplCopyWithImpl(_$AddBankResponseModelImpl _value,
      $Res Function(_$AddBankResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddBankResponseModelImpl(
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
class _$AddBankResponseModelImpl implements _AddBankResponseModel {
  const _$AddBankResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$AddBankResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddBankResponseModelImplFromJson(json);

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
    return 'AddBankResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBankResponseModelImpl &&
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
  _$$AddBankResponseModelImplCopyWith<_$AddBankResponseModelImpl>
      get copyWith =>
          __$$AddBankResponseModelImplCopyWithImpl<_$AddBankResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddBankResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AddBankResponseModel implements AddBankResponseModel {
  const factory _AddBankResponseModel(
      {@JsonKey(name: "code") final int? code,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "isSuccess") final bool? isSuccess,
      @JsonKey(name: "data") final Data? data}) = _$AddBankResponseModelImpl;

  factory _AddBankResponseModel.fromJson(Map<String, dynamic> json) =
      _$AddBankResponseModelImpl.fromJson;

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
  _$$AddBankResponseModelImplCopyWith<_$AddBankResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "accountLink")
  String? get accountLink => throw _privateConstructorUsedError;
  @JsonKey(name: "accountId")
  String? get accountId => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "accountLink") String? accountLink,
      @JsonKey(name: "accountId") String? accountId});
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
    Object? accountLink = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_value.copyWith(
      accountLink: freezed == accountLink
          ? _value.accountLink
          : accountLink // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "accountLink") String? accountLink,
      @JsonKey(name: "accountId") String? accountId});
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
    Object? accountLink = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_$DataImpl(
      accountLink: freezed == accountLink
          ? _value.accountLink
          : accountLink // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "accountLink") this.accountLink,
      @JsonKey(name: "accountId") this.accountId});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "accountLink")
  final String? accountLink;
  @override
  @JsonKey(name: "accountId")
  final String? accountId;

  @override
  String toString() {
    return 'Data(accountLink: $accountLink, accountId: $accountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.accountLink, accountLink) ||
                other.accountLink == accountLink) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accountLink, accountId);

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
      {@JsonKey(name: "accountLink") final String? accountLink,
      @JsonKey(name: "accountId") final String? accountId}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "accountLink")
  String? get accountLink;
  @override
  @JsonKey(name: "accountId")
  String? get accountId;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

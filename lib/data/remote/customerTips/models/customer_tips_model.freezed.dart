// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_tips_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerTipRequestModel _$CustomerTipRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerTipRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerTipRequestModel {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "tipAmount")
  int? get tipAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerTipRequestModelCopyWith<CustomerTipRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTipRequestModelCopyWith<$Res> {
  factory $CustomerTipRequestModelCopyWith(CustomerTipRequestModel value,
          $Res Function(CustomerTipRequestModel) then) =
      _$CustomerTipRequestModelCopyWithImpl<$Res, CustomerTipRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "tipAmount") int? tipAmount});
}

/// @nodoc
class _$CustomerTipRequestModelCopyWithImpl<$Res,
        $Val extends CustomerTipRequestModel>
    implements $CustomerTipRequestModelCopyWith<$Res> {
  _$CustomerTipRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? tipAmount = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      tipAmount: freezed == tipAmount
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerTipRequestModelImplCopyWith<$Res>
    implements $CustomerTipRequestModelCopyWith<$Res> {
  factory _$$CustomerTipRequestModelImplCopyWith(
          _$CustomerTipRequestModelImpl value,
          $Res Function(_$CustomerTipRequestModelImpl) then) =
      __$$CustomerTipRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "tipAmount") int? tipAmount});
}

/// @nodoc
class __$$CustomerTipRequestModelImplCopyWithImpl<$Res>
    extends _$CustomerTipRequestModelCopyWithImpl<$Res,
        _$CustomerTipRequestModelImpl>
    implements _$$CustomerTipRequestModelImplCopyWith<$Res> {
  __$$CustomerTipRequestModelImplCopyWithImpl(
      _$CustomerTipRequestModelImpl _value,
      $Res Function(_$CustomerTipRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? tipAmount = freezed,
  }) {
    return _then(_$CustomerTipRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      tipAmount: freezed == tipAmount
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerTipRequestModelImpl implements _CustomerTipRequestModel {
  const _$CustomerTipRequestModelImpl(
      {@JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "tipAmount") this.tipAmount});

  factory _$CustomerTipRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerTipRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "tipAmount")
  final int? tipAmount;

  @override
  String toString() {
    return 'CustomerTipRequestModel(groupId: $groupId, userId: $userId, tipAmount: $tipAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerTipRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tipAmount, tipAmount) ||
                other.tipAmount == tipAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, userId, tipAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerTipRequestModelImplCopyWith<_$CustomerTipRequestModelImpl>
      get copyWith => __$$CustomerTipRequestModelImplCopyWithImpl<
          _$CustomerTipRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerTipRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerTipRequestModel implements CustomerTipRequestModel {
  const factory _CustomerTipRequestModel(
          {@JsonKey(name: "groupId") final String? groupId,
          @JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "tipAmount") final int? tipAmount}) =
      _$CustomerTipRequestModelImpl;

  factory _CustomerTipRequestModel.fromJson(Map<String, dynamic> json) =
      _$CustomerTipRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "tipAmount")
  int? get tipAmount;
  @override
  @JsonKey(ignore: true)
  _$$CustomerTipRequestModelImplCopyWith<_$CustomerTipRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CustomerTipResponseModel _$CustomerTipResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerTipResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerTipResponseModel {
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
  $CustomerTipResponseModelCopyWith<CustomerTipResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTipResponseModelCopyWith<$Res> {
  factory $CustomerTipResponseModelCopyWith(CustomerTipResponseModel value,
          $Res Function(CustomerTipResponseModel) then) =
      _$CustomerTipResponseModelCopyWithImpl<$Res, CustomerTipResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CustomerTipResponseModelCopyWithImpl<$Res,
        $Val extends CustomerTipResponseModel>
    implements $CustomerTipResponseModelCopyWith<$Res> {
  _$CustomerTipResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CustomerTipResponseModelImplCopyWith<$Res>
    implements $CustomerTipResponseModelCopyWith<$Res> {
  factory _$$CustomerTipResponseModelImplCopyWith(
          _$CustomerTipResponseModelImpl value,
          $Res Function(_$CustomerTipResponseModelImpl) then) =
      __$$CustomerTipResponseModelImplCopyWithImpl<$Res>;
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
class __$$CustomerTipResponseModelImplCopyWithImpl<$Res>
    extends _$CustomerTipResponseModelCopyWithImpl<$Res,
        _$CustomerTipResponseModelImpl>
    implements _$$CustomerTipResponseModelImplCopyWith<$Res> {
  __$$CustomerTipResponseModelImplCopyWithImpl(
      _$CustomerTipResponseModelImpl _value,
      $Res Function(_$CustomerTipResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CustomerTipResponseModelImpl(
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
class _$CustomerTipResponseModelImpl implements _CustomerTipResponseModel {
  const _$CustomerTipResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$CustomerTipResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerTipResponseModelImplFromJson(json);

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
    return 'CustomerTipResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerTipResponseModelImpl &&
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
  _$$CustomerTipResponseModelImplCopyWith<_$CustomerTipResponseModelImpl>
      get copyWith => __$$CustomerTipResponseModelImplCopyWithImpl<
          _$CustomerTipResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerTipResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerTipResponseModel implements CustomerTipResponseModel {
  const factory _CustomerTipResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$CustomerTipResponseModelImpl;

  factory _CustomerTipResponseModel.fromJson(Map<String, dynamic> json) =
      _$CustomerTipResponseModelImpl.fromJson;

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
  _$$CustomerTipResponseModelImplCopyWith<_$CustomerTipResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "sessionId")
  String? get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: "sessionUrl")
  String? get sessionUrl => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "sessionId") String? sessionId,
      @JsonKey(name: "sessionUrl") String? sessionUrl});
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
    Object? sessionId = freezed,
    Object? sessionUrl = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionUrl: freezed == sessionUrl
          ? _value.sessionUrl
          : sessionUrl // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "sessionId") String? sessionId,
      @JsonKey(name: "sessionUrl") String? sessionUrl});
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
    Object? sessionId = freezed,
    Object? sessionUrl = freezed,
  }) {
    return _then(_$DataImpl(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionUrl: freezed == sessionUrl
          ? _value.sessionUrl
          : sessionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "sessionId") this.sessionId,
      @JsonKey(name: "sessionUrl") this.sessionUrl});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "sessionId")
  final String? sessionId;
  @override
  @JsonKey(name: "sessionUrl")
  final String? sessionUrl;

  @override
  String toString() {
    return 'Data(sessionId: $sessionId, sessionUrl: $sessionUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.sessionUrl, sessionUrl) ||
                other.sessionUrl == sessionUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId, sessionUrl);

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
      {@JsonKey(name: "sessionId") final String? sessionId,
      @JsonKey(name: "sessionUrl") final String? sessionUrl}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "sessionId")
  String? get sessionId;
  @override
  @JsonKey(name: "sessionUrl")
  String? get sessionUrl;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

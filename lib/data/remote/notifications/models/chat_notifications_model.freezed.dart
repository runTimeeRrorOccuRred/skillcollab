// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_notifications_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatNotificationRequestModel _$ChatNotificationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ChatNotificationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ChatNotificationRequestModel {
  @JsonKey(name: "receiverUserId")
  String? get receiverUserId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatNotificationRequestModelCopyWith<ChatNotificationRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatNotificationRequestModelCopyWith<$Res> {
  factory $ChatNotificationRequestModelCopyWith(
          ChatNotificationRequestModel value,
          $Res Function(ChatNotificationRequestModel) then) =
      _$ChatNotificationRequestModelCopyWithImpl<$Res,
          ChatNotificationRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "receiverUserId") String? receiverUserId});
}

/// @nodoc
class _$ChatNotificationRequestModelCopyWithImpl<$Res,
        $Val extends ChatNotificationRequestModel>
    implements $ChatNotificationRequestModelCopyWith<$Res> {
  _$ChatNotificationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverUserId = freezed,
  }) {
    return _then(_value.copyWith(
      receiverUserId: freezed == receiverUserId
          ? _value.receiverUserId
          : receiverUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatNotificationRequestModelImplCopyWith<$Res>
    implements $ChatNotificationRequestModelCopyWith<$Res> {
  factory _$$ChatNotificationRequestModelImplCopyWith(
          _$ChatNotificationRequestModelImpl value,
          $Res Function(_$ChatNotificationRequestModelImpl) then) =
      __$$ChatNotificationRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "receiverUserId") String? receiverUserId});
}

/// @nodoc
class __$$ChatNotificationRequestModelImplCopyWithImpl<$Res>
    extends _$ChatNotificationRequestModelCopyWithImpl<$Res,
        _$ChatNotificationRequestModelImpl>
    implements _$$ChatNotificationRequestModelImplCopyWith<$Res> {
  __$$ChatNotificationRequestModelImplCopyWithImpl(
      _$ChatNotificationRequestModelImpl _value,
      $Res Function(_$ChatNotificationRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverUserId = freezed,
  }) {
    return _then(_$ChatNotificationRequestModelImpl(
      receiverUserId: freezed == receiverUserId
          ? _value.receiverUserId
          : receiverUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatNotificationRequestModelImpl
    implements _ChatNotificationRequestModel {
  const _$ChatNotificationRequestModelImpl(
      {@JsonKey(name: "receiverUserId") this.receiverUserId});

  factory _$ChatNotificationRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChatNotificationRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "receiverUserId")
  final String? receiverUserId;

  @override
  String toString() {
    return 'ChatNotificationRequestModel(receiverUserId: $receiverUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatNotificationRequestModelImpl &&
            (identical(other.receiverUserId, receiverUserId) ||
                other.receiverUserId == receiverUserId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, receiverUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatNotificationRequestModelImplCopyWith<
          _$ChatNotificationRequestModelImpl>
      get copyWith => __$$ChatNotificationRequestModelImplCopyWithImpl<
          _$ChatNotificationRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatNotificationRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ChatNotificationRequestModel
    implements ChatNotificationRequestModel {
  const factory _ChatNotificationRequestModel(
          {@JsonKey(name: "receiverUserId") final String? receiverUserId}) =
      _$ChatNotificationRequestModelImpl;

  factory _ChatNotificationRequestModel.fromJson(Map<String, dynamic> json) =
      _$ChatNotificationRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "receiverUserId")
  String? get receiverUserId;
  @override
  @JsonKey(ignore: true)
  _$$ChatNotificationRequestModelImplCopyWith<
          _$ChatNotificationRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChatNotificationResponseModel _$ChatNotificationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ChatNotificationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ChatNotificationResponseModel {
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
  $ChatNotificationResponseModelCopyWith<ChatNotificationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatNotificationResponseModelCopyWith<$Res> {
  factory $ChatNotificationResponseModelCopyWith(
          ChatNotificationResponseModel value,
          $Res Function(ChatNotificationResponseModel) then) =
      _$ChatNotificationResponseModelCopyWithImpl<$Res,
          ChatNotificationResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ChatNotificationResponseModelCopyWithImpl<$Res,
        $Val extends ChatNotificationResponseModel>
    implements $ChatNotificationResponseModelCopyWith<$Res> {
  _$ChatNotificationResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ChatNotificationResponseModelImplCopyWith<$Res>
    implements $ChatNotificationResponseModelCopyWith<$Res> {
  factory _$$ChatNotificationResponseModelImplCopyWith(
          _$ChatNotificationResponseModelImpl value,
          $Res Function(_$ChatNotificationResponseModelImpl) then) =
      __$$ChatNotificationResponseModelImplCopyWithImpl<$Res>;
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
class __$$ChatNotificationResponseModelImplCopyWithImpl<$Res>
    extends _$ChatNotificationResponseModelCopyWithImpl<$Res,
        _$ChatNotificationResponseModelImpl>
    implements _$$ChatNotificationResponseModelImplCopyWith<$Res> {
  __$$ChatNotificationResponseModelImplCopyWithImpl(
      _$ChatNotificationResponseModelImpl _value,
      $Res Function(_$ChatNotificationResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ChatNotificationResponseModelImpl(
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
class _$ChatNotificationResponseModelImpl
    implements _ChatNotificationResponseModel {
  const _$ChatNotificationResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$ChatNotificationResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChatNotificationResponseModelImplFromJson(json);

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
    return 'ChatNotificationResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatNotificationResponseModelImpl &&
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
  _$$ChatNotificationResponseModelImplCopyWith<
          _$ChatNotificationResponseModelImpl>
      get copyWith => __$$ChatNotificationResponseModelImplCopyWithImpl<
          _$ChatNotificationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatNotificationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ChatNotificationResponseModel
    implements ChatNotificationResponseModel {
  const factory _ChatNotificationResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$ChatNotificationResponseModelImpl;

  factory _ChatNotificationResponseModel.fromJson(Map<String, dynamic> json) =
      _$ChatNotificationResponseModelImpl.fromJson;

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
  _$$ChatNotificationResponseModelImplCopyWith<
          _$ChatNotificationResponseModelImpl>
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

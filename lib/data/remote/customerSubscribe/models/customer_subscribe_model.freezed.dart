// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_subscribe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerSubscribeRequestModel _$CustomerSubscribeRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerSubscribeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerSubscribeRequestModel {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribeUserId")
  String? get subscribeUserId => throw _privateConstructorUsedError;
  @JsonKey(name: "planId")
  String? get planId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerSubscribeRequestModelCopyWith<CustomerSubscribeRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerSubscribeRequestModelCopyWith<$Res> {
  factory $CustomerSubscribeRequestModelCopyWith(
          CustomerSubscribeRequestModel value,
          $Res Function(CustomerSubscribeRequestModel) then) =
      _$CustomerSubscribeRequestModelCopyWithImpl<$Res,
          CustomerSubscribeRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "subscribeUserId") String? subscribeUserId,
      @JsonKey(name: "planId") String? planId});
}

/// @nodoc
class _$CustomerSubscribeRequestModelCopyWithImpl<$Res,
        $Val extends CustomerSubscribeRequestModel>
    implements $CustomerSubscribeRequestModelCopyWith<$Res> {
  _$CustomerSubscribeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? subscribeUserId = freezed,
    Object? planId = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribeUserId: freezed == subscribeUserId
          ? _value.subscribeUserId
          : subscribeUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerSubscribeRequestModelImplCopyWith<$Res>
    implements $CustomerSubscribeRequestModelCopyWith<$Res> {
  factory _$$CustomerSubscribeRequestModelImplCopyWith(
          _$CustomerSubscribeRequestModelImpl value,
          $Res Function(_$CustomerSubscribeRequestModelImpl) then) =
      __$$CustomerSubscribeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "subscribeUserId") String? subscribeUserId,
      @JsonKey(name: "planId") String? planId});
}

/// @nodoc
class __$$CustomerSubscribeRequestModelImplCopyWithImpl<$Res>
    extends _$CustomerSubscribeRequestModelCopyWithImpl<$Res,
        _$CustomerSubscribeRequestModelImpl>
    implements _$$CustomerSubscribeRequestModelImplCopyWith<$Res> {
  __$$CustomerSubscribeRequestModelImplCopyWithImpl(
      _$CustomerSubscribeRequestModelImpl _value,
      $Res Function(_$CustomerSubscribeRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? subscribeUserId = freezed,
    Object? planId = freezed,
  }) {
    return _then(_$CustomerSubscribeRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribeUserId: freezed == subscribeUserId
          ? _value.subscribeUserId
          : subscribeUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerSubscribeRequestModelImpl
    implements _CustomerSubscribeRequestModel {
  const _$CustomerSubscribeRequestModelImpl(
      {@JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "subscribeUserId") this.subscribeUserId,
      @JsonKey(name: "planId") this.planId});

  factory _$CustomerSubscribeRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CustomerSubscribeRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "subscribeUserId")
  final String? subscribeUserId;
  @override
  @JsonKey(name: "planId")
  final String? planId;

  @override
  String toString() {
    return 'CustomerSubscribeRequestModel(groupId: $groupId, subscribeUserId: $subscribeUserId, planId: $planId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerSubscribeRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.subscribeUserId, subscribeUserId) ||
                other.subscribeUserId == subscribeUserId) &&
            (identical(other.planId, planId) || other.planId == planId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, groupId, subscribeUserId, planId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerSubscribeRequestModelImplCopyWith<
          _$CustomerSubscribeRequestModelImpl>
      get copyWith => __$$CustomerSubscribeRequestModelImplCopyWithImpl<
          _$CustomerSubscribeRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerSubscribeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerSubscribeRequestModel
    implements CustomerSubscribeRequestModel {
  const factory _CustomerSubscribeRequestModel(
          {@JsonKey(name: "groupId") final String? groupId,
          @JsonKey(name: "subscribeUserId") final String? subscribeUserId,
          @JsonKey(name: "planId") final String? planId}) =
      _$CustomerSubscribeRequestModelImpl;

  factory _CustomerSubscribeRequestModel.fromJson(Map<String, dynamic> json) =
      _$CustomerSubscribeRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "subscribeUserId")
  String? get subscribeUserId;
  @override
  @JsonKey(name: "planId")
  String? get planId;
  @override
  @JsonKey(ignore: true)
  _$$CustomerSubscribeRequestModelImplCopyWith<
          _$CustomerSubscribeRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CustomerSubscribeResponseModel _$CustomerSubscribeResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerSubscribeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerSubscribeResponseModel {
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
  $CustomerSubscribeResponseModelCopyWith<CustomerSubscribeResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerSubscribeResponseModelCopyWith<$Res> {
  factory $CustomerSubscribeResponseModelCopyWith(
          CustomerSubscribeResponseModel value,
          $Res Function(CustomerSubscribeResponseModel) then) =
      _$CustomerSubscribeResponseModelCopyWithImpl<$Res,
          CustomerSubscribeResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CustomerSubscribeResponseModelCopyWithImpl<$Res,
        $Val extends CustomerSubscribeResponseModel>
    implements $CustomerSubscribeResponseModelCopyWith<$Res> {
  _$CustomerSubscribeResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CustomerSubscribeResponseModelImplCopyWith<$Res>
    implements $CustomerSubscribeResponseModelCopyWith<$Res> {
  factory _$$CustomerSubscribeResponseModelImplCopyWith(
          _$CustomerSubscribeResponseModelImpl value,
          $Res Function(_$CustomerSubscribeResponseModelImpl) then) =
      __$$CustomerSubscribeResponseModelImplCopyWithImpl<$Res>;
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
class __$$CustomerSubscribeResponseModelImplCopyWithImpl<$Res>
    extends _$CustomerSubscribeResponseModelCopyWithImpl<$Res,
        _$CustomerSubscribeResponseModelImpl>
    implements _$$CustomerSubscribeResponseModelImplCopyWith<$Res> {
  __$$CustomerSubscribeResponseModelImplCopyWithImpl(
      _$CustomerSubscribeResponseModelImpl _value,
      $Res Function(_$CustomerSubscribeResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CustomerSubscribeResponseModelImpl(
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
class _$CustomerSubscribeResponseModelImpl
    implements _CustomerSubscribeResponseModel {
  const _$CustomerSubscribeResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$CustomerSubscribeResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CustomerSubscribeResponseModelImplFromJson(json);

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
    return 'CustomerSubscribeResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerSubscribeResponseModelImpl &&
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
  _$$CustomerSubscribeResponseModelImplCopyWith<
          _$CustomerSubscribeResponseModelImpl>
      get copyWith => __$$CustomerSubscribeResponseModelImplCopyWithImpl<
          _$CustomerSubscribeResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerSubscribeResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CustomerSubscribeResponseModel
    implements CustomerSubscribeResponseModel {
  const factory _CustomerSubscribeResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$CustomerSubscribeResponseModelImpl;

  factory _CustomerSubscribeResponseModel.fromJson(Map<String, dynamic> json) =
      _$CustomerSubscribeResponseModelImpl.fromJson;

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
  _$$CustomerSubscribeResponseModelImplCopyWith<
          _$CustomerSubscribeResponseModelImpl>
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

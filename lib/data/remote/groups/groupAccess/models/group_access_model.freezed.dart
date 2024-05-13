// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_access_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupAccessRequestModel _$GroupAccessRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GroupAccessRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GroupAccessRequestModel {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupAccessRequestModelCopyWith<GroupAccessRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupAccessRequestModelCopyWith<$Res> {
  factory $GroupAccessRequestModelCopyWith(GroupAccessRequestModel value,
          $Res Function(GroupAccessRequestModel) then) =
      _$GroupAccessRequestModelCopyWithImpl<$Res, GroupAccessRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class _$GroupAccessRequestModelCopyWithImpl<$Res,
        $Val extends GroupAccessRequestModel>
    implements $GroupAccessRequestModelCopyWith<$Res> {
  _$GroupAccessRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupAccessRequestModelImplCopyWith<$Res>
    implements $GroupAccessRequestModelCopyWith<$Res> {
  factory _$$GroupAccessRequestModelImplCopyWith(
          _$GroupAccessRequestModelImpl value,
          $Res Function(_$GroupAccessRequestModelImpl) then) =
      __$$GroupAccessRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class __$$GroupAccessRequestModelImplCopyWithImpl<$Res>
    extends _$GroupAccessRequestModelCopyWithImpl<$Res,
        _$GroupAccessRequestModelImpl>
    implements _$$GroupAccessRequestModelImplCopyWith<$Res> {
  __$$GroupAccessRequestModelImplCopyWithImpl(
      _$GroupAccessRequestModelImpl _value,
      $Res Function(_$GroupAccessRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$GroupAccessRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupAccessRequestModelImpl implements _GroupAccessRequestModel {
  const _$GroupAccessRequestModelImpl({@JsonKey(name: "groupId") this.groupId});

  factory _$GroupAccessRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupAccessRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;

  @override
  String toString() {
    return 'GroupAccessRequestModel(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupAccessRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupAccessRequestModelImplCopyWith<_$GroupAccessRequestModelImpl>
      get copyWith => __$$GroupAccessRequestModelImplCopyWithImpl<
          _$GroupAccessRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupAccessRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GroupAccessRequestModel implements GroupAccessRequestModel {
  const factory _GroupAccessRequestModel(
          {@JsonKey(name: "groupId") final String? groupId}) =
      _$GroupAccessRequestModelImpl;

  factory _GroupAccessRequestModel.fromJson(Map<String, dynamic> json) =
      _$GroupAccessRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$GroupAccessRequestModelImplCopyWith<_$GroupAccessRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GroupAccessResponseModel _$GroupAccessResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GroupAccessResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GroupAccessResponseModel {
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
  $GroupAccessResponseModelCopyWith<GroupAccessResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupAccessResponseModelCopyWith<$Res> {
  factory $GroupAccessResponseModelCopyWith(GroupAccessResponseModel value,
          $Res Function(GroupAccessResponseModel) then) =
      _$GroupAccessResponseModelCopyWithImpl<$Res, GroupAccessResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GroupAccessResponseModelCopyWithImpl<$Res,
        $Val extends GroupAccessResponseModel>
    implements $GroupAccessResponseModelCopyWith<$Res> {
  _$GroupAccessResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GroupAccessResponseModelImplCopyWith<$Res>
    implements $GroupAccessResponseModelCopyWith<$Res> {
  factory _$$GroupAccessResponseModelImplCopyWith(
          _$GroupAccessResponseModelImpl value,
          $Res Function(_$GroupAccessResponseModelImpl) then) =
      __$$GroupAccessResponseModelImplCopyWithImpl<$Res>;
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
class __$$GroupAccessResponseModelImplCopyWithImpl<$Res>
    extends _$GroupAccessResponseModelCopyWithImpl<$Res,
        _$GroupAccessResponseModelImpl>
    implements _$$GroupAccessResponseModelImplCopyWith<$Res> {
  __$$GroupAccessResponseModelImplCopyWithImpl(
      _$GroupAccessResponseModelImpl _value,
      $Res Function(_$GroupAccessResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GroupAccessResponseModelImpl(
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
class _$GroupAccessResponseModelImpl implements _GroupAccessResponseModel {
  const _$GroupAccessResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$GroupAccessResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupAccessResponseModelImplFromJson(json);

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
    return 'GroupAccessResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupAccessResponseModelImpl &&
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
  _$$GroupAccessResponseModelImplCopyWith<_$GroupAccessResponseModelImpl>
      get copyWith => __$$GroupAccessResponseModelImplCopyWithImpl<
          _$GroupAccessResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupAccessResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GroupAccessResponseModel implements GroupAccessResponseModel {
  const factory _GroupAccessResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$GroupAccessResponseModelImpl;

  factory _GroupAccessResponseModel.fromJson(Map<String, dynamic> json) =
      _$GroupAccessResponseModelImpl.fromJson;

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
  _$$GroupAccessResponseModelImplCopyWith<_$GroupAccessResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: "status") bool? status});
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
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call({@JsonKey(name: "status") bool? status});
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
    Object? status = freezed,
  }) {
    return _then(_$DataImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({@JsonKey(name: "status") this.status});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;

  @override
  String toString() {
    return 'Data(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

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
  const factory _Data({@JsonKey(name: "status") final bool? status}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

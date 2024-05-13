// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_earning_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEarningGroupRequestModel _$GetEarningGroupRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetEarningGroupRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetEarningGroupRequestModel {
  @JsonKey(name: "groupId")
  List<String>? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetEarningGroupRequestModelCopyWith<GetEarningGroupRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEarningGroupRequestModelCopyWith<$Res> {
  factory $GetEarningGroupRequestModelCopyWith(
          GetEarningGroupRequestModel value,
          $Res Function(GetEarningGroupRequestModel) then) =
      _$GetEarningGroupRequestModelCopyWithImpl<$Res,
          GetEarningGroupRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "groupId") List<String>? groupId});
}

/// @nodoc
class _$GetEarningGroupRequestModelCopyWithImpl<$Res,
        $Val extends GetEarningGroupRequestModel>
    implements $GetEarningGroupRequestModelCopyWith<$Res> {
  _$GetEarningGroupRequestModelCopyWithImpl(this._value, this._then);

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
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEarningGroupRequestModelImplCopyWith<$Res>
    implements $GetEarningGroupRequestModelCopyWith<$Res> {
  factory _$$GetEarningGroupRequestModelImplCopyWith(
          _$GetEarningGroupRequestModelImpl value,
          $Res Function(_$GetEarningGroupRequestModelImpl) then) =
      __$$GetEarningGroupRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "groupId") List<String>? groupId});
}

/// @nodoc
class __$$GetEarningGroupRequestModelImplCopyWithImpl<$Res>
    extends _$GetEarningGroupRequestModelCopyWithImpl<$Res,
        _$GetEarningGroupRequestModelImpl>
    implements _$$GetEarningGroupRequestModelImplCopyWith<$Res> {
  __$$GetEarningGroupRequestModelImplCopyWithImpl(
      _$GetEarningGroupRequestModelImpl _value,
      $Res Function(_$GetEarningGroupRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$GetEarningGroupRequestModelImpl(
      groupId: freezed == groupId
          ? _value._groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEarningGroupRequestModelImpl
    implements _GetEarningGroupRequestModel {
  const _$GetEarningGroupRequestModelImpl(
      {@JsonKey(name: "groupId") final List<String>? groupId})
      : _groupId = groupId;

  factory _$GetEarningGroupRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetEarningGroupRequestModelImplFromJson(json);

  final List<String>? _groupId;
  @override
  @JsonKey(name: "groupId")
  List<String>? get groupId {
    final value = _groupId;
    if (value == null) return null;
    if (_groupId is EqualUnmodifiableListView) return _groupId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetEarningGroupRequestModel(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEarningGroupRequestModelImpl &&
            const DeepCollectionEquality().equals(other._groupId, _groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groupId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEarningGroupRequestModelImplCopyWith<_$GetEarningGroupRequestModelImpl>
      get copyWith => __$$GetEarningGroupRequestModelImplCopyWithImpl<
          _$GetEarningGroupRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEarningGroupRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetEarningGroupRequestModel
    implements GetEarningGroupRequestModel {
  const factory _GetEarningGroupRequestModel(
          {@JsonKey(name: "groupId") final List<String>? groupId}) =
      _$GetEarningGroupRequestModelImpl;

  factory _GetEarningGroupRequestModel.fromJson(Map<String, dynamic> json) =
      _$GetEarningGroupRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  List<String>? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$GetEarningGroupRequestModelImplCopyWith<_$GetEarningGroupRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetEarningGroupResponseModel _$GetEarningGroupResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetEarningGroupResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetEarningGroupResponseModel {
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
  $GetEarningGroupResponseModelCopyWith<GetEarningGroupResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEarningGroupResponseModelCopyWith<$Res> {
  factory $GetEarningGroupResponseModelCopyWith(
          GetEarningGroupResponseModel value,
          $Res Function(GetEarningGroupResponseModel) then) =
      _$GetEarningGroupResponseModelCopyWithImpl<$Res,
          GetEarningGroupResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetEarningGroupResponseModelCopyWithImpl<$Res,
        $Val extends GetEarningGroupResponseModel>
    implements $GetEarningGroupResponseModelCopyWith<$Res> {
  _$GetEarningGroupResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetEarningGroupResponseModelImplCopyWith<$Res>
    implements $GetEarningGroupResponseModelCopyWith<$Res> {
  factory _$$GetEarningGroupResponseModelImplCopyWith(
          _$GetEarningGroupResponseModelImpl value,
          $Res Function(_$GetEarningGroupResponseModelImpl) then) =
      __$$GetEarningGroupResponseModelImplCopyWithImpl<$Res>;
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
class __$$GetEarningGroupResponseModelImplCopyWithImpl<$Res>
    extends _$GetEarningGroupResponseModelCopyWithImpl<$Res,
        _$GetEarningGroupResponseModelImpl>
    implements _$$GetEarningGroupResponseModelImplCopyWith<$Res> {
  __$$GetEarningGroupResponseModelImplCopyWithImpl(
      _$GetEarningGroupResponseModelImpl _value,
      $Res Function(_$GetEarningGroupResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetEarningGroupResponseModelImpl(
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
class _$GetEarningGroupResponseModelImpl
    implements _GetEarningGroupResponseModel {
  const _$GetEarningGroupResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$GetEarningGroupResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetEarningGroupResponseModelImplFromJson(json);

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
    return 'GetEarningGroupResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEarningGroupResponseModelImpl &&
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
  _$$GetEarningGroupResponseModelImplCopyWith<
          _$GetEarningGroupResponseModelImpl>
      get copyWith => __$$GetEarningGroupResponseModelImplCopyWithImpl<
          _$GetEarningGroupResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEarningGroupResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetEarningGroupResponseModel
    implements GetEarningGroupResponseModel {
  const factory _GetEarningGroupResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$GetEarningGroupResponseModelImpl;

  factory _GetEarningGroupResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetEarningGroupResponseModelImpl.fromJson;

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
  _$$GetEarningGroupResponseModelImplCopyWith<
          _$GetEarningGroupResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "totalEarnings")
  num? get totalEarnings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: "totalEarnings") num? totalEarnings});
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
    Object? totalEarnings = freezed,
  }) {
    return _then(_value.copyWith(
      totalEarnings: freezed == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as num?,
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
  $Res call({@JsonKey(name: "totalEarnings") num? totalEarnings});
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
    Object? totalEarnings = freezed,
  }) {
    return _then(_$DataImpl(
      totalEarnings: freezed == totalEarnings
          ? _value.totalEarnings
          : totalEarnings // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({@JsonKey(name: "totalEarnings") this.totalEarnings});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "totalEarnings")
  final num? totalEarnings;

  @override
  String toString() {
    return 'Data(totalEarnings: $totalEarnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.totalEarnings, totalEarnings) ||
                other.totalEarnings == totalEarnings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalEarnings);

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
      {@JsonKey(name: "totalEarnings") final num? totalEarnings}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "totalEarnings")
  num? get totalEarnings;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

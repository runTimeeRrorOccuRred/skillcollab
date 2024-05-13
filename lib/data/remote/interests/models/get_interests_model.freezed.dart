// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_interests_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetInterestsRequestModel _$GetInterestsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetInterestsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetInterestsRequestModel {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetInterestsRequestModelCopyWith<GetInterestsRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInterestsRequestModelCopyWith<$Res> {
  factory $GetInterestsRequestModelCopyWith(GetInterestsRequestModel value,
          $Res Function(GetInterestsRequestModel) then) =
      _$GetInterestsRequestModelCopyWithImpl<$Res, GetInterestsRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class _$GetInterestsRequestModelCopyWithImpl<$Res,
        $Val extends GetInterestsRequestModel>
    implements $GetInterestsRequestModelCopyWith<$Res> {
  _$GetInterestsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetInterestsRequestModelImplCopyWith<$Res>
    implements $GetInterestsRequestModelCopyWith<$Res> {
  factory _$$GetInterestsRequestModelImplCopyWith(
          _$GetInterestsRequestModelImpl value,
          $Res Function(_$GetInterestsRequestModelImpl) then) =
      __$$GetInterestsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class __$$GetInterestsRequestModelImplCopyWithImpl<$Res>
    extends _$GetInterestsRequestModelCopyWithImpl<$Res,
        _$GetInterestsRequestModelImpl>
    implements _$$GetInterestsRequestModelImplCopyWith<$Res> {
  __$$GetInterestsRequestModelImplCopyWithImpl(
      _$GetInterestsRequestModelImpl _value,
      $Res Function(_$GetInterestsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$GetInterestsRequestModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetInterestsRequestModelImpl implements _GetInterestsRequestModel {
  const _$GetInterestsRequestModelImpl({@JsonKey(name: "name") this.name});

  factory _$GetInterestsRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetInterestsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'GetInterestsRequestModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInterestsRequestModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInterestsRequestModelImplCopyWith<_$GetInterestsRequestModelImpl>
      get copyWith => __$$GetInterestsRequestModelImplCopyWithImpl<
          _$GetInterestsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetInterestsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetInterestsRequestModel implements GetInterestsRequestModel {
  const factory _GetInterestsRequestModel(
          {@JsonKey(name: "name") final String? name}) =
      _$GetInterestsRequestModelImpl;

  factory _GetInterestsRequestModel.fromJson(Map<String, dynamic> json) =
      _$GetInterestsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$GetInterestsRequestModelImplCopyWith<_$GetInterestsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetInterestsResponseModel _$GetInterestsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetInterestsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetInterestsResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Interest>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetInterestsResponseModelCopyWith<GetInterestsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInterestsResponseModelCopyWith<$Res> {
  factory $GetInterestsResponseModelCopyWith(GetInterestsResponseModel value,
          $Res Function(GetInterestsResponseModel) then) =
      _$GetInterestsResponseModelCopyWithImpl<$Res, GetInterestsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Interest>? data});
}

/// @nodoc
class _$GetInterestsResponseModelCopyWithImpl<$Res,
        $Val extends GetInterestsResponseModel>
    implements $GetInterestsResponseModelCopyWith<$Res> {
  _$GetInterestsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<Interest>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetInterestsResponseModelImplCopyWith<$Res>
    implements $GetInterestsResponseModelCopyWith<$Res> {
  factory _$$GetInterestsResponseModelImplCopyWith(
          _$GetInterestsResponseModelImpl value,
          $Res Function(_$GetInterestsResponseModelImpl) then) =
      __$$GetInterestsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Interest>? data});
}

/// @nodoc
class __$$GetInterestsResponseModelImplCopyWithImpl<$Res>
    extends _$GetInterestsResponseModelCopyWithImpl<$Res,
        _$GetInterestsResponseModelImpl>
    implements _$$GetInterestsResponseModelImplCopyWith<$Res> {
  __$$GetInterestsResponseModelImplCopyWithImpl(
      _$GetInterestsResponseModelImpl _value,
      $Res Function(_$GetInterestsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetInterestsResponseModelImpl(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetInterestsResponseModelImpl implements _GetInterestsResponseModel {
  const _$GetInterestsResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<Interest>? data})
      : _data = data;

  factory _$GetInterestsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetInterestsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<Interest>? _data;
  @override
  @JsonKey(name: "data")
  List<Interest>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetInterestsResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInterestsResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInterestsResponseModelImplCopyWith<_$GetInterestsResponseModelImpl>
      get copyWith => __$$GetInterestsResponseModelImplCopyWithImpl<
          _$GetInterestsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetInterestsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetInterestsResponseModel implements GetInterestsResponseModel {
  const factory _GetInterestsResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<Interest>? data}) =
      _$GetInterestsResponseModelImpl;

  factory _GetInterestsResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetInterestsResponseModelImpl.fromJson;

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
  List<Interest>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetInterestsResponseModelImplCopyWith<_$GetInterestsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Interest _$InterestFromJson(Map<String, dynamic> json) {
  return _Interest.fromJson(json);
}

/// @nodoc
mixin _$Interest {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "interestPhoto")
  String? get interestPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterestCopyWith<Interest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestCopyWith<$Res> {
  factory $InterestCopyWith(Interest value, $Res Function(Interest) then) =
      _$InterestCopyWithImpl<$Res, Interest>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "interestPhoto") String? interestPhoto,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class _$InterestCopyWithImpl<$Res, $Val extends Interest>
    implements $InterestCopyWith<$Res> {
  _$InterestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? interestPhoto = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      interestPhoto: freezed == interestPhoto
          ? _value.interestPhoto
          : interestPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterestImplCopyWith<$Res>
    implements $InterestCopyWith<$Res> {
  factory _$$InterestImplCopyWith(
          _$InterestImpl value, $Res Function(_$InterestImpl) then) =
      __$$InterestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "interestPhoto") String? interestPhoto,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class __$$InterestImplCopyWithImpl<$Res>
    extends _$InterestCopyWithImpl<$Res, _$InterestImpl>
    implements _$$InterestImplCopyWith<$Res> {
  __$$InterestImplCopyWithImpl(
      _$InterestImpl _value, $Res Function(_$InterestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? interestPhoto = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$InterestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      interestPhoto: freezed == interestPhoto
          ? _value.interestPhoto
          : interestPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestImpl implements _Interest {
  const _$InterestImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "interestPhoto") this.interestPhoto,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$InterestImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterestImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "interestPhoto")
  final String? interestPhoto;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Interest(id: $id, name: $name, interestPhoto: $interestPhoto, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.interestPhoto, interestPhoto) ||
                other.interestPhoto == interestPhoto) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, interestPhoto, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestImplCopyWith<_$InterestImpl> get copyWith =>
      __$$InterestImplCopyWithImpl<_$InterestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestImplToJson(
      this,
    );
  }
}

abstract class _Interest implements Interest {
  const factory _Interest(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "interestPhoto") final String? interestPhoto,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$InterestImpl;

  factory _Interest.fromJson(Map<String, dynamic> json) =
      _$InterestImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "interestPhoto")
  String? get interestPhoto;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$InterestImplCopyWith<_$InterestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

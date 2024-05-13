// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_tags_repo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddTagsResquestModel _$AddTagsResquestModelFromJson(Map<String, dynamic> json) {
  return _AddTagsResquestModel.fromJson(json);
}

/// @nodoc
mixin _$AddTagsResquestModel {
  @JsonKey(name: "postId")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "tag")
  List<String>? get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddTagsResquestModelCopyWith<AddTagsResquestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTagsResquestModelCopyWith<$Res> {
  factory $AddTagsResquestModelCopyWith(AddTagsResquestModel value,
          $Res Function(AddTagsResquestModel) then) =
      _$AddTagsResquestModelCopyWithImpl<$Res, AddTagsResquestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "tag") List<String>? tag});
}

/// @nodoc
class _$AddTagsResquestModelCopyWithImpl<$Res,
        $Val extends AddTagsResquestModel>
    implements $AddTagsResquestModelCopyWith<$Res> {
  _$AddTagsResquestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTagsResquestModelImplCopyWith<$Res>
    implements $AddTagsResquestModelCopyWith<$Res> {
  factory _$$AddTagsResquestModelImplCopyWith(_$AddTagsResquestModelImpl value,
          $Res Function(_$AddTagsResquestModelImpl) then) =
      __$$AddTagsResquestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "tag") List<String>? tag});
}

/// @nodoc
class __$$AddTagsResquestModelImplCopyWithImpl<$Res>
    extends _$AddTagsResquestModelCopyWithImpl<$Res, _$AddTagsResquestModelImpl>
    implements _$$AddTagsResquestModelImplCopyWith<$Res> {
  __$$AddTagsResquestModelImplCopyWithImpl(_$AddTagsResquestModelImpl _value,
      $Res Function(_$AddTagsResquestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? tag = freezed,
  }) {
    return _then(_$AddTagsResquestModelImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: freezed == tag
          ? _value._tag
          : tag // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddTagsResquestModelImpl implements _AddTagsResquestModel {
  const _$AddTagsResquestModelImpl(
      {@JsonKey(name: "postId") this.postId,
      @JsonKey(name: "tag") final List<String>? tag})
      : _tag = tag;

  factory _$AddTagsResquestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddTagsResquestModelImplFromJson(json);

  @override
  @JsonKey(name: "postId")
  final String? postId;
  final List<String>? _tag;
  @override
  @JsonKey(name: "tag")
  List<String>? get tag {
    final value = _tag;
    if (value == null) return null;
    if (_tag is EqualUnmodifiableListView) return _tag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddTagsResquestModel(postId: $postId, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTagsResquestModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            const DeepCollectionEquality().equals(other._tag, _tag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, postId, const DeepCollectionEquality().hash(_tag));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTagsResquestModelImplCopyWith<_$AddTagsResquestModelImpl>
      get copyWith =>
          __$$AddTagsResquestModelImplCopyWithImpl<_$AddTagsResquestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddTagsResquestModelImplToJson(
      this,
    );
  }
}

abstract class _AddTagsResquestModel implements AddTagsResquestModel {
  const factory _AddTagsResquestModel(
          {@JsonKey(name: "postId") final String? postId,
          @JsonKey(name: "tag") final List<String>? tag}) =
      _$AddTagsResquestModelImpl;

  factory _AddTagsResquestModel.fromJson(Map<String, dynamic> json) =
      _$AddTagsResquestModelImpl.fromJson;

  @override
  @JsonKey(name: "postId")
  String? get postId;
  @override
  @JsonKey(name: "tag")
  List<String>? get tag;
  @override
  @JsonKey(ignore: true)
  _$$AddTagsResquestModelImplCopyWith<_$AddTagsResquestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddTagsResponseModel _$AddTagsResponseModelFromJson(Map<String, dynamic> json) {
  return _AddTagsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AddTagsResponseModel {
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
  $AddTagsResponseModelCopyWith<AddTagsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTagsResponseModelCopyWith<$Res> {
  factory $AddTagsResponseModelCopyWith(AddTagsResponseModel value,
          $Res Function(AddTagsResponseModel) then) =
      _$AddTagsResponseModelCopyWithImpl<$Res, AddTagsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddTagsResponseModelCopyWithImpl<$Res,
        $Val extends AddTagsResponseModel>
    implements $AddTagsResponseModelCopyWith<$Res> {
  _$AddTagsResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AddTagsResponseModelImplCopyWith<$Res>
    implements $AddTagsResponseModelCopyWith<$Res> {
  factory _$$AddTagsResponseModelImplCopyWith(_$AddTagsResponseModelImpl value,
          $Res Function(_$AddTagsResponseModelImpl) then) =
      __$$AddTagsResponseModelImplCopyWithImpl<$Res>;
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
class __$$AddTagsResponseModelImplCopyWithImpl<$Res>
    extends _$AddTagsResponseModelCopyWithImpl<$Res, _$AddTagsResponseModelImpl>
    implements _$$AddTagsResponseModelImplCopyWith<$Res> {
  __$$AddTagsResponseModelImplCopyWithImpl(_$AddTagsResponseModelImpl _value,
      $Res Function(_$AddTagsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddTagsResponseModelImpl(
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
class _$AddTagsResponseModelImpl implements _AddTagsResponseModel {
  const _$AddTagsResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$AddTagsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddTagsResponseModelImplFromJson(json);

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
    return 'AddTagsResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTagsResponseModelImpl &&
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
  _$$AddTagsResponseModelImplCopyWith<_$AddTagsResponseModelImpl>
      get copyWith =>
          __$$AddTagsResponseModelImplCopyWithImpl<_$AddTagsResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddTagsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AddTagsResponseModel implements AddTagsResponseModel {
  const factory _AddTagsResponseModel(
      {@JsonKey(name: "code") final int? code,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "isSuccess") final bool? isSuccess,
      @JsonKey(name: "data") final Data? data}) = _$AddTagsResponseModelImpl;

  factory _AddTagsResponseModel.fromJson(Map<String, dynamic> json) =
      _$AddTagsResponseModelImpl.fromJson;

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
  _$$AddTagsResponseModelImplCopyWith<_$AddTagsResponseModelImpl>
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

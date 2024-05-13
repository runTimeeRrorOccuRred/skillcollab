// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'folder_add_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FolderAddContentRequestModel _$FolderAddContentRequestModelFromJson(
    Map<String, dynamic> json) {
  return _FolderAddContentRequestModel.fromJson(json);
}

/// @nodoc
mixin _$FolderAddContentRequestModel {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderAddContentRequestModelCopyWith<FolderAddContentRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderAddContentRequestModelCopyWith<$Res> {
  factory $FolderAddContentRequestModelCopyWith(
          FolderAddContentRequestModel value,
          $Res Function(FolderAddContentRequestModel) then) =
      _$FolderAddContentRequestModelCopyWithImpl<$Res,
          FolderAddContentRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class _$FolderAddContentRequestModelCopyWithImpl<$Res,
        $Val extends FolderAddContentRequestModel>
    implements $FolderAddContentRequestModelCopyWith<$Res> {
  _$FolderAddContentRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$FolderAddContentRequestModelImplCopyWith<$Res>
    implements $FolderAddContentRequestModelCopyWith<$Res> {
  factory _$$FolderAddContentRequestModelImplCopyWith(
          _$FolderAddContentRequestModelImpl value,
          $Res Function(_$FolderAddContentRequestModelImpl) then) =
      __$$FolderAddContentRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class __$$FolderAddContentRequestModelImplCopyWithImpl<$Res>
    extends _$FolderAddContentRequestModelCopyWithImpl<$Res,
        _$FolderAddContentRequestModelImpl>
    implements _$$FolderAddContentRequestModelImplCopyWith<$Res> {
  __$$FolderAddContentRequestModelImplCopyWithImpl(
      _$FolderAddContentRequestModelImpl _value,
      $Res Function(_$FolderAddContentRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$FolderAddContentRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderAddContentRequestModelImpl
    implements _FolderAddContentRequestModel {
  const _$FolderAddContentRequestModelImpl(
      {@JsonKey(name: "groupId") this.groupId});

  factory _$FolderAddContentRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FolderAddContentRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;

  @override
  String toString() {
    return 'FolderAddContentRequestModel(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderAddContentRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderAddContentRequestModelImplCopyWith<
          _$FolderAddContentRequestModelImpl>
      get copyWith => __$$FolderAddContentRequestModelImplCopyWithImpl<
          _$FolderAddContentRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderAddContentRequestModelImplToJson(
      this,
    );
  }
}

abstract class _FolderAddContentRequestModel
    implements FolderAddContentRequestModel {
  const factory _FolderAddContentRequestModel(
          {@JsonKey(name: "groupId") final String? groupId}) =
      _$FolderAddContentRequestModelImpl;

  factory _FolderAddContentRequestModel.fromJson(Map<String, dynamic> json) =
      _$FolderAddContentRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$FolderAddContentRequestModelImplCopyWith<
          _$FolderAddContentRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FolderAddContentResponseModel _$FolderAddContentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FolderAddContentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FolderAddContentResponseModel {
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
  $FolderAddContentResponseModelCopyWith<FolderAddContentResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderAddContentResponseModelCopyWith<$Res> {
  factory $FolderAddContentResponseModelCopyWith(
          FolderAddContentResponseModel value,
          $Res Function(FolderAddContentResponseModel) then) =
      _$FolderAddContentResponseModelCopyWithImpl<$Res,
          FolderAddContentResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FolderAddContentResponseModelCopyWithImpl<$Res,
        $Val extends FolderAddContentResponseModel>
    implements $FolderAddContentResponseModelCopyWith<$Res> {
  _$FolderAddContentResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$FolderAddContentResponseModelImplCopyWith<$Res>
    implements $FolderAddContentResponseModelCopyWith<$Res> {
  factory _$$FolderAddContentResponseModelImplCopyWith(
          _$FolderAddContentResponseModelImpl value,
          $Res Function(_$FolderAddContentResponseModelImpl) then) =
      __$$FolderAddContentResponseModelImplCopyWithImpl<$Res>;
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
class __$$FolderAddContentResponseModelImplCopyWithImpl<$Res>
    extends _$FolderAddContentResponseModelCopyWithImpl<$Res,
        _$FolderAddContentResponseModelImpl>
    implements _$$FolderAddContentResponseModelImplCopyWith<$Res> {
  __$$FolderAddContentResponseModelImplCopyWithImpl(
      _$FolderAddContentResponseModelImpl _value,
      $Res Function(_$FolderAddContentResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FolderAddContentResponseModelImpl(
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
class _$FolderAddContentResponseModelImpl
    implements _FolderAddContentResponseModel {
  const _$FolderAddContentResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$FolderAddContentResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FolderAddContentResponseModelImplFromJson(json);

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
    return 'FolderAddContentResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderAddContentResponseModelImpl &&
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
  _$$FolderAddContentResponseModelImplCopyWith<
          _$FolderAddContentResponseModelImpl>
      get copyWith => __$$FolderAddContentResponseModelImplCopyWithImpl<
          _$FolderAddContentResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderAddContentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FolderAddContentResponseModel
    implements FolderAddContentResponseModel {
  const factory _FolderAddContentResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$FolderAddContentResponseModelImpl;

  factory _FolderAddContentResponseModel.fromJson(Map<String, dynamic> json) =
      _$FolderAddContentResponseModelImpl.fromJson;

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
  _$$FolderAddContentResponseModelImplCopyWith<
          _$FolderAddContentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "folderGroups")
  List<FolderGroup>? get folderGroups => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "folderGroups") List<FolderGroup>? folderGroups,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? folderGroups = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      folderGroups: freezed == folderGroups
          ? _value.folderGroups
          : folderGroups // ignore: cast_nullable_to_non_nullable
              as List<FolderGroup>?,
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
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "folderGroups") List<FolderGroup>? folderGroups,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? folderGroups = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      folderGroups: freezed == folderGroups
          ? _value._folderGroups
          : folderGroups // ignore: cast_nullable_to_non_nullable
              as List<FolderGroup>?,
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
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "folderGroups") final List<FolderGroup>? folderGroups,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt})
      : _folderGroups = folderGroups;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "userId")
  final String? userId;
  final List<FolderGroup>? _folderGroups;
  @override
  @JsonKey(name: "folderGroups")
  List<FolderGroup>? get folderGroups {
    final value = _folderGroups;
    if (value == null) return null;
    if (_folderGroups is EqualUnmodifiableListView) return _folderGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Data(id: $id, name: $name, userId: $userId, folderGroups: $folderGroups, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._folderGroups, _folderGroups) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, userId,
      const DeepCollectionEquality().hash(_folderGroups), createdAt, updatedAt);

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
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "folderGroups") final List<FolderGroup>? folderGroups,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "folderGroups")
  List<FolderGroup>? get folderGroups;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FolderGroup _$FolderGroupFromJson(Map<String, dynamic> json) {
  return _FolderGroup.fromJson(json);
}

/// @nodoc
mixin _$FolderGroup {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderGroupCopyWith<FolderGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderGroupCopyWith<$Res> {
  factory $FolderGroupCopyWith(
          FolderGroup value, $Res Function(FolderGroup) then) =
      _$FolderGroupCopyWithImpl<$Res, FolderGroup>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class _$FolderGroupCopyWithImpl<$Res, $Val extends FolderGroup>
    implements $FolderGroupCopyWith<$Res> {
  _$FolderGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FolderGroupImplCopyWith<$Res>
    implements $FolderGroupCopyWith<$Res> {
  factory _$$FolderGroupImplCopyWith(
          _$FolderGroupImpl value, $Res Function(_$FolderGroupImpl) then) =
      __$$FolderGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class __$$FolderGroupImplCopyWithImpl<$Res>
    extends _$FolderGroupCopyWithImpl<$Res, _$FolderGroupImpl>
    implements _$$FolderGroupImplCopyWith<$Res> {
  __$$FolderGroupImplCopyWithImpl(
      _$FolderGroupImpl _value, $Res Function(_$FolderGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_$FolderGroupImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderGroupImpl implements _FolderGroup {
  const _$FolderGroupImpl(
      {@JsonKey(name: "_id") this.id, @JsonKey(name: "groupId") this.groupId});

  factory _$FolderGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderGroupImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "groupId")
  final String? groupId;

  @override
  String toString() {
    return 'FolderGroup(id: $id, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderGroupImplCopyWith<_$FolderGroupImpl> get copyWith =>
      __$$FolderGroupImplCopyWithImpl<_$FolderGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderGroupImplToJson(
      this,
    );
  }
}

abstract class _FolderGroup implements FolderGroup {
  const factory _FolderGroup(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "groupId") final String? groupId}) = _$FolderGroupImpl;

  factory _FolderGroup.fromJson(Map<String, dynamic> json) =
      _$FolderGroupImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$FolderGroupImplCopyWith<_$FolderGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

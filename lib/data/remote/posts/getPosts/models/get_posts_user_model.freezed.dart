// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_posts_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPostsUserRequestModel _$GetPostsUserRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetPostsUserRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetPostsUserRequestModel {
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPostsUserRequestModelCopyWith<GetPostsUserRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsUserRequestModelCopyWith<$Res> {
  factory $GetPostsUserRequestModelCopyWith(GetPostsUserRequestModel value,
          $Res Function(GetPostsUserRequestModel) then) =
      _$GetPostsUserRequestModelCopyWithImpl<$Res, GetPostsUserRequestModel>;
  @useResult
  $Res call({String? type});
}

/// @nodoc
class _$GetPostsUserRequestModelCopyWithImpl<$Res,
        $Val extends GetPostsUserRequestModel>
    implements $GetPostsUserRequestModelCopyWith<$Res> {
  _$GetPostsUserRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPostsUserRequestModelImplCopyWith<$Res>
    implements $GetPostsUserRequestModelCopyWith<$Res> {
  factory _$$GetPostsUserRequestModelImplCopyWith(
          _$GetPostsUserRequestModelImpl value,
          $Res Function(_$GetPostsUserRequestModelImpl) then) =
      __$$GetPostsUserRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type});
}

/// @nodoc
class __$$GetPostsUserRequestModelImplCopyWithImpl<$Res>
    extends _$GetPostsUserRequestModelCopyWithImpl<$Res,
        _$GetPostsUserRequestModelImpl>
    implements _$$GetPostsUserRequestModelImplCopyWith<$Res> {
  __$$GetPostsUserRequestModelImplCopyWithImpl(
      _$GetPostsUserRequestModelImpl _value,
      $Res Function(_$GetPostsUserRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$GetPostsUserRequestModelImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPostsUserRequestModelImpl implements _GetPostsUserRequestModel {
  const _$GetPostsUserRequestModelImpl({this.type});

  factory _$GetPostsUserRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPostsUserRequestModelImplFromJson(json);

  @override
  final String? type;

  @override
  String toString() {
    return 'GetPostsUserRequestModel(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsUserRequestModelImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsUserRequestModelImplCopyWith<_$GetPostsUserRequestModelImpl>
      get copyWith => __$$GetPostsUserRequestModelImplCopyWithImpl<
          _$GetPostsUserRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPostsUserRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetPostsUserRequestModel implements GetPostsUserRequestModel {
  const factory _GetPostsUserRequestModel({final String? type}) =
      _$GetPostsUserRequestModelImpl;

  factory _GetPostsUserRequestModel.fromJson(Map<String, dynamic> json) =
      _$GetPostsUserRequestModelImpl.fromJson;

  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$GetPostsUserRequestModelImplCopyWith<_$GetPostsUserRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetPostsUserResponseModel _$GetPostsUserResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetPostsUserResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetPostsUserResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPostsUserResponseModelCopyWith<GetPostsUserResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsUserResponseModelCopyWith<$Res> {
  factory $GetPostsUserResponseModelCopyWith(GetPostsUserResponseModel value,
          $Res Function(GetPostsUserResponseModel) then) =
      _$GetPostsUserResponseModelCopyWithImpl<$Res, GetPostsUserResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class _$GetPostsUserResponseModelCopyWithImpl<$Res,
        $Val extends GetPostsUserResponseModel>
    implements $GetPostsUserResponseModelCopyWith<$Res> {
  _$GetPostsUserResponseModelCopyWithImpl(this._value, this._then);

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
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPostsUserResponseModelImplCopyWith<$Res>
    implements $GetPostsUserResponseModelCopyWith<$Res> {
  factory _$$GetPostsUserResponseModelImplCopyWith(
          _$GetPostsUserResponseModelImpl value,
          $Res Function(_$GetPostsUserResponseModelImpl) then) =
      __$$GetPostsUserResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class __$$GetPostsUserResponseModelImplCopyWithImpl<$Res>
    extends _$GetPostsUserResponseModelCopyWithImpl<$Res,
        _$GetPostsUserResponseModelImpl>
    implements _$$GetPostsUserResponseModelImplCopyWith<$Res> {
  __$$GetPostsUserResponseModelImplCopyWithImpl(
      _$GetPostsUserResponseModelImpl _value,
      $Res Function(_$GetPostsUserResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetPostsUserResponseModelImpl(
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
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPostsUserResponseModelImpl implements _GetPostsUserResponseModel {
  const _$GetPostsUserResponseModelImpl(
      {this.code, this.message, this.isSuccess, final List<Datum>? data})
      : _data = data;

  factory _$GetPostsUserResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPostsUserResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetPostsUserResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsUserResponseModelImpl &&
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
  _$$GetPostsUserResponseModelImplCopyWith<_$GetPostsUserResponseModelImpl>
      get copyWith => __$$GetPostsUserResponseModelImplCopyWithImpl<
          _$GetPostsUserResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPostsUserResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetPostsUserResponseModel implements GetPostsUserResponseModel {
  const factory _GetPostsUserResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<Datum>? data}) = _$GetPostsUserResponseModelImpl;

  factory _GetPostsUserResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetPostsUserResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPostsUserResponseModelImplCopyWith<_$GetPostsUserResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  String? get id => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  List<Interest>? get interests => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get postImage => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  GroupData? get groupData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {String? id,
      bool? isActive,
      List<Interest>? interests,
      String? userId,
      String? postImage,
      @JsonKey(name: "slug") String? slug,
      String? title,
      String? description,
      String? groupId,
      DateTime? createdAt,
      DateTime? updatedAt,
      GroupData? groupData});

  $GroupDataCopyWith<$Res>? get groupData;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
    Object? interests = freezed,
    Object? userId = freezed,
    Object? postImage = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? groupId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? groupData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      groupData: freezed == groupData
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as GroupData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupDataCopyWith<$Res>? get groupData {
    if (_value.groupData == null) {
      return null;
    }

    return $GroupDataCopyWith<$Res>(_value.groupData!, (value) {
      return _then(_value.copyWith(groupData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      bool? isActive,
      List<Interest>? interests,
      String? userId,
      String? postImage,
      @JsonKey(name: "slug") String? slug,
      String? title,
      String? description,
      String? groupId,
      DateTime? createdAt,
      DateTime? updatedAt,
      GroupData? groupData});

  @override
  $GroupDataCopyWith<$Res>? get groupData;
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = freezed,
    Object? interests = freezed,
    Object? userId = freezed,
    Object? postImage = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? groupId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? groupData = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      groupData: freezed == groupData
          ? _value.groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as GroupData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {this.id,
      this.isActive,
      final List<Interest>? interests,
      this.userId,
      this.postImage,
      @JsonKey(name: "slug") this.slug,
      this.title,
      this.description,
      this.groupId,
      this.createdAt,
      this.updatedAt,
      this.groupData})
      : _interests = interests;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final String? id;
  @override
  final bool? isActive;
  final List<Interest>? _interests;
  @override
  List<Interest>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? userId;
  @override
  final String? postImage;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? groupId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final GroupData? groupData;

  @override
  String toString() {
    return 'Datum(id: $id, isActive: $isActive, interests: $interests, userId: $userId, postImage: $postImage, slug: $slug, title: $title, description: $description, groupId: $groupId, createdAt: $createdAt, updatedAt: $updatedAt, groupData: $groupData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.groupData, groupData) ||
                other.groupData == groupData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isActive,
      const DeepCollectionEquality().hash(_interests),
      userId,
      postImage,
      slug,
      title,
      description,
      groupId,
      createdAt,
      updatedAt,
      groupData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final String? id,
      final bool? isActive,
      final List<Interest>? interests,
      final String? userId,
      final String? postImage,
      @JsonKey(name: "slug") final String? slug,
      final String? title,
      final String? description,
      final String? groupId,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final GroupData? groupData}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  String? get id;
  @override
  bool? get isActive;
  @override
  List<Interest>? get interests;
  @override
  String? get userId;
  @override
  String? get postImage;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get groupId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  GroupData? get groupData;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupData _$GroupDataFromJson(Map<String, dynamic> json) {
  return _GroupData.fromJson(json);
}

/// @nodoc
mixin _$GroupData {
  String? get id => throw _privateConstructorUsedError;
  List<Interest>? get interests => throw _privateConstructorUsedError;
  String? get privacy => throw _privateConstructorUsedError;
  String? get groupPhoto => throw _privateConstructorUsedError;
  String? get coverPhoto => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupDataCopyWith<GroupData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDataCopyWith<$Res> {
  factory $GroupDataCopyWith(GroupData value, $Res Function(GroupData) then) =
      _$GroupDataCopyWithImpl<$Res, GroupData>;
  @useResult
  $Res call(
      {String? id,
      List<Interest>? interests,
      String? privacy,
      String? groupPhoto,
      String? coverPhoto,
      String? name,
      String? description,
      String? location,
      String? userId,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$GroupDataCopyWithImpl<$Res, $Val extends GroupData>
    implements $GroupDataCopyWith<$Res> {
  _$GroupDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? interests = freezed,
    Object? privacy = freezed,
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      groupPhoto: freezed == groupPhoto
          ? _value.groupPhoto
          : groupPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$GroupDataImplCopyWith<$Res>
    implements $GroupDataCopyWith<$Res> {
  factory _$$GroupDataImplCopyWith(
          _$GroupDataImpl value, $Res Function(_$GroupDataImpl) then) =
      __$$GroupDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      List<Interest>? interests,
      String? privacy,
      String? groupPhoto,
      String? coverPhoto,
      String? name,
      String? description,
      String? location,
      String? userId,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$GroupDataImplCopyWithImpl<$Res>
    extends _$GroupDataCopyWithImpl<$Res, _$GroupDataImpl>
    implements _$$GroupDataImplCopyWith<$Res> {
  __$$GroupDataImplCopyWithImpl(
      _$GroupDataImpl _value, $Res Function(_$GroupDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? interests = freezed,
    Object? privacy = freezed,
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GroupDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      groupPhoto: freezed == groupPhoto
          ? _value.groupPhoto
          : groupPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$GroupDataImpl implements _GroupData {
  const _$GroupDataImpl(
      {this.id,
      final List<Interest>? interests,
      this.privacy,
      this.groupPhoto,
      this.coverPhoto,
      this.name,
      this.description,
      this.location,
      this.userId,
      this.createdAt,
      this.updatedAt})
      : _interests = interests;

  factory _$GroupDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupDataImplFromJson(json);

  @override
  final String? id;
  final List<Interest>? _interests;
  @override
  List<Interest>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? privacy;
  @override
  final String? groupPhoto;
  @override
  final String? coverPhoto;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? location;
  @override
  final String? userId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'GroupData(id: $id, interests: $interests, privacy: $privacy, groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, name: $name, description: $description, location: $location, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.groupPhoto, groupPhoto) ||
                other.groupPhoto == groupPhoto) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_interests),
      privacy,
      groupPhoto,
      coverPhoto,
      name,
      description,
      location,
      userId,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupDataImplCopyWith<_$GroupDataImpl> get copyWith =>
      __$$GroupDataImplCopyWithImpl<_$GroupDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupDataImplToJson(
      this,
    );
  }
}

abstract class _GroupData implements GroupData {
  const factory _GroupData(
      {final String? id,
      final List<Interest>? interests,
      final String? privacy,
      final String? groupPhoto,
      final String? coverPhoto,
      final String? name,
      final String? description,
      final String? location,
      final String? userId,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$GroupDataImpl;

  factory _GroupData.fromJson(Map<String, dynamic> json) =
      _$GroupDataImpl.fromJson;

  @override
  String? get id;
  @override
  List<Interest>? get interests;
  @override
  String? get privacy;
  @override
  String? get groupPhoto;
  @override
  String? get coverPhoto;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get location;
  @override
  String? get userId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$GroupDataImplCopyWith<_$GroupDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

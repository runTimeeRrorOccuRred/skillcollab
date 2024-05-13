// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditPostResquest _$EditPostResquestFromJson(Map<String, dynamic> json) {
  return _EditPostResquest.fromJson(json);
}

/// @nodoc
mixin _$EditPostResquest {
  String? get description => throw _privateConstructorUsedError;
  String? get privacy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditPostResquestCopyWith<EditPostResquest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPostResquestCopyWith<$Res> {
  factory $EditPostResquestCopyWith(
          EditPostResquest value, $Res Function(EditPostResquest) then) =
      _$EditPostResquestCopyWithImpl<$Res, EditPostResquest>;
  @useResult
  $Res call({String? description, String? privacy});
}

/// @nodoc
class _$EditPostResquestCopyWithImpl<$Res, $Val extends EditPostResquest>
    implements $EditPostResquestCopyWith<$Res> {
  _$EditPostResquestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? privacy = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditPostResquestImplCopyWith<$Res>
    implements $EditPostResquestCopyWith<$Res> {
  factory _$$EditPostResquestImplCopyWith(_$EditPostResquestImpl value,
          $Res Function(_$EditPostResquestImpl) then) =
      __$$EditPostResquestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, String? privacy});
}

/// @nodoc
class __$$EditPostResquestImplCopyWithImpl<$Res>
    extends _$EditPostResquestCopyWithImpl<$Res, _$EditPostResquestImpl>
    implements _$$EditPostResquestImplCopyWith<$Res> {
  __$$EditPostResquestImplCopyWithImpl(_$EditPostResquestImpl _value,
      $Res Function(_$EditPostResquestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? privacy = freezed,
  }) {
    return _then(_$EditPostResquestImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditPostResquestImpl implements _EditPostResquest {
  const _$EditPostResquestImpl({this.description, this.privacy});

  factory _$EditPostResquestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditPostResquestImplFromJson(json);

  @override
  final String? description;
  @override
  final String? privacy;

  @override
  String toString() {
    return 'EditPostResquest(description: $description, privacy: $privacy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPostResquestImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.privacy, privacy) || other.privacy == privacy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, privacy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditPostResquestImplCopyWith<_$EditPostResquestImpl> get copyWith =>
      __$$EditPostResquestImplCopyWithImpl<_$EditPostResquestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditPostResquestImplToJson(
      this,
    );
  }
}

abstract class _EditPostResquest implements EditPostResquest {
  const factory _EditPostResquest(
      {final String? description,
      final String? privacy}) = _$EditPostResquestImpl;

  factory _EditPostResquest.fromJson(Map<String, dynamic> json) =
      _$EditPostResquestImpl.fromJson;

  @override
  String? get description;
  @override
  String? get privacy;
  @override
  @JsonKey(ignore: true)
  _$$EditPostResquestImplCopyWith<_$EditPostResquestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditPostResponse _$EditPostResponseFromJson(Map<String, dynamic> json) {
  return _EditPostResponse.fromJson(json);
}

/// @nodoc
mixin _$EditPostResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditPostResponseCopyWith<EditPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPostResponseCopyWith<$Res> {
  factory $EditPostResponseCopyWith(
          EditPostResponse value, $Res Function(EditPostResponse) then) =
      _$EditPostResponseCopyWithImpl<$Res, EditPostResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$EditPostResponseCopyWithImpl<$Res, $Val extends EditPostResponse>
    implements $EditPostResponseCopyWith<$Res> {
  _$EditPostResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$EditPostResponseImplCopyWith<$Res>
    implements $EditPostResponseCopyWith<$Res> {
  factory _$$EditPostResponseImplCopyWith(_$EditPostResponseImpl value,
          $Res Function(_$EditPostResponseImpl) then) =
      __$$EditPostResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$EditPostResponseImplCopyWithImpl<$Res>
    extends _$EditPostResponseCopyWithImpl<$Res, _$EditPostResponseImpl>
    implements _$$EditPostResponseImplCopyWith<$Res> {
  __$$EditPostResponseImplCopyWithImpl(_$EditPostResponseImpl _value,
      $Res Function(_$EditPostResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$EditPostResponseImpl(
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
class _$EditPostResponseImpl implements _EditPostResponse {
  const _$EditPostResponseImpl(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$EditPostResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditPostResponseImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  @override
  final Data? data;

  @override
  String toString() {
    return 'EditPostResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPostResponseImpl &&
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
  _$$EditPostResponseImplCopyWith<_$EditPostResponseImpl> get copyWith =>
      __$$EditPostResponseImplCopyWithImpl<_$EditPostResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditPostResponseImplToJson(
      this,
    );
  }
}

abstract class _EditPostResponse implements EditPostResponse {
  const factory _EditPostResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$EditPostResponseImpl;

  factory _EditPostResponse.fromJson(Map<String, dynamic> json) =
      _$EditPostResponseImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$EditPostResponseImplCopyWith<_$EditPostResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get postImage =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  dynamic get groupId => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get gif => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get bgColor => throw _privateConstructorUsedError;
  String? get privacy => throw _privateConstructorUsedError;
  List<Interest>? get interests => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
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
      {String? postImage,
      @JsonKey(name: "slug") String? slug,
      String? description,
      List<dynamic>? subscribers,
      dynamic groupId,
      bool? isActive,
      String? gif,
      String? videoUrl,
      String? bgColor,
      String? privacy,
      List<Interest>? interests,
      String? id,
      String? userId,
      String? title,
      DateTime? createdAt,
      DateTime? updatedAt});
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
    Object? postImage = freezed,
    Object? slug = freezed,
    Object? description = freezed,
    Object? subscribers = freezed,
    Object? groupId = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? interests = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? postImage,
      @JsonKey(name: "slug") String? slug,
      String? description,
      List<dynamic>? subscribers,
      dynamic groupId,
      bool? isActive,
      String? gif,
      String? videoUrl,
      String? bgColor,
      String? privacy,
      List<Interest>? interests,
      String? id,
      String? userId,
      String? title,
      DateTime? createdAt,
      DateTime? updatedAt});
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
    Object? postImage = freezed,
    Object? slug = freezed,
    Object? description = freezed,
    Object? subscribers = freezed,
    Object? groupId = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? interests = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.postImage,
      @JsonKey(name: "slug") this.slug,
      this.description,
      final List<dynamic>? subscribers,
      this.groupId,
      this.isActive,
      this.gif,
      this.videoUrl,
      this.bgColor,
      this.privacy,
      final List<Interest>? interests,
      this.id,
      this.userId,
      this.title,
      this.createdAt,
      this.updatedAt})
      : _subscribers = subscribers,
        _interests = interests;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? postImage;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  final String? description;
  final List<dynamic>? _subscribers;
  @override
  List<dynamic>? get subscribers {
    final value = _subscribers;
    if (value == null) return null;
    if (_subscribers is EqualUnmodifiableListView) return _subscribers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic groupId;
  @override
  final bool? isActive;
  @override
  final String? gif;
  @override
  final String? videoUrl;
  @override
  final String? bgColor;
  @override
  final String? privacy;
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
  final String? id;
  @override
  final String? userId;
  @override
  final String? title;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Data(postImage: $postImage, slug: $slug, description: $description, subscribers: $subscribers, groupId: $groupId, isActive: $isActive, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, privacy: $privacy, interests: $interests, id: $id, userId: $userId, title: $title, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.gif, gif) || other.gif == gif) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postImage,
      slug,
      description,
      const DeepCollectionEquality().hash(_subscribers),
      const DeepCollectionEquality().hash(groupId),
      isActive,
      gif,
      videoUrl,
      bgColor,
      privacy,
      const DeepCollectionEquality().hash(_interests),
      id,
      userId,
      title,
      createdAt,
      updatedAt);

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
      {final String? postImage,
      @JsonKey(name: "slug") final String? slug,
      final String? description,
      final List<dynamic>? subscribers,
      final dynamic groupId,
      final bool? isActive,
      final String? gif,
      final String? videoUrl,
      final String? bgColor,
      final String? privacy,
      final List<Interest>? interests,
      final String? id,
      final String? userId,
      final String? title,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get postImage;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: "slug")
  String? get slug;
  @override
  String? get description;
  @override
  List<dynamic>? get subscribers;
  @override
  dynamic get groupId;
  @override
  bool? get isActive;
  @override
  String? get gif;
  @override
  String? get videoUrl;
  @override
  String? get bgColor;
  @override
  String? get privacy;
  @override
  List<Interest>? get interests;
  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get title;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

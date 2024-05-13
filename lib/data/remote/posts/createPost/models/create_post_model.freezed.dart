// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePostRequestModel _$CreatePostRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreatePostRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreatePostRequestModel {
  @JsonKey(name: "postImage")
  String? get postImage => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "gif")
  String? get gif => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  String? get privacy => throw _privateConstructorUsedError;
  @JsonKey(name: "bgColor")
  String? get bgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "videoUrl")
  String? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  String? get checkIn => throw _privateConstructorUsedError;
  String? get checkInImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePostRequestModelCopyWith<CreatePostRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostRequestModelCopyWith<$Res> {
  factory $CreatePostRequestModelCopyWith(CreatePostRequestModel value,
          $Res Function(CreatePostRequestModel) then) =
      _$CreatePostRequestModelCopyWithImpl<$Res, CreatePostRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "interests") List<Interest>? interests,
      String? checkIn,
      String? checkInImage});
}

/// @nodoc
class _$CreatePostRequestModelCopyWithImpl<$Res,
        $Val extends CreatePostRequestModel>
    implements $CreatePostRequestModelCopyWith<$Res> {
  _$CreatePostRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postImage = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? groupId = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? privacy = freezed,
    Object? bgColor = freezed,
    Object? videoUrl = freezed,
    Object? interests = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
  }) {
    return _then(_value.copyWith(
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
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
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePostRequestModelImplCopyWith<$Res>
    implements $CreatePostRequestModelCopyWith<$Res> {
  factory _$$CreatePostRequestModelImplCopyWith(
          _$CreatePostRequestModelImpl value,
          $Res Function(_$CreatePostRequestModelImpl) then) =
      __$$CreatePostRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "interests") List<Interest>? interests,
      String? checkIn,
      String? checkInImage});
}

/// @nodoc
class __$$CreatePostRequestModelImplCopyWithImpl<$Res>
    extends _$CreatePostRequestModelCopyWithImpl<$Res,
        _$CreatePostRequestModelImpl>
    implements _$$CreatePostRequestModelImplCopyWith<$Res> {
  __$$CreatePostRequestModelImplCopyWithImpl(
      _$CreatePostRequestModelImpl _value,
      $Res Function(_$CreatePostRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postImage = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? groupId = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? privacy = freezed,
    Object? bgColor = freezed,
    Object? videoUrl = freezed,
    Object? interests = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
  }) {
    return _then(_$CreatePostRequestModelImpl(
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
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
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePostRequestModelImpl implements _CreatePostRequestModel {
  const _$CreatePostRequestModelImpl(
      {@JsonKey(name: "postImage") this.postImage,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "isActive") this.isActive,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "interests") final List<Interest>? interests,
      this.checkIn,
      this.checkInImage})
      : _interests = interests;

  factory _$CreatePostRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePostRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "postImage")
  final String? postImage;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "isActive")
  final bool? isActive;
  @override
  @JsonKey(name: "gif")
  final String? gif;
  @override
  @JsonKey(name: "privacy")
  final String? privacy;
  @override
  @JsonKey(name: "bgColor")
  final String? bgColor;
  @override
  @JsonKey(name: "videoUrl")
  final String? videoUrl;
  final List<Interest>? _interests;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? checkIn;
  @override
  final String? checkInImage;

  @override
  String toString() {
    return 'CreatePostRequestModel(postImage: $postImage, title: $title, description: $description, groupId: $groupId, isActive: $isActive, gif: $gif, privacy: $privacy, bgColor: $bgColor, videoUrl: $videoUrl, interests: $interests, checkIn: $checkIn, checkInImage: $checkInImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostRequestModelImpl &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.gif, gif) || other.gif == gif) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkInImage, checkInImage) ||
                other.checkInImage == checkInImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postImage,
      title,
      description,
      groupId,
      isActive,
      gif,
      privacy,
      bgColor,
      videoUrl,
      const DeepCollectionEquality().hash(_interests),
      checkIn,
      checkInImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostRequestModelImplCopyWith<_$CreatePostRequestModelImpl>
      get copyWith => __$$CreatePostRequestModelImplCopyWithImpl<
          _$CreatePostRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePostRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreatePostRequestModel implements CreatePostRequestModel {
  const factory _CreatePostRequestModel(
      {@JsonKey(name: "postImage") final String? postImage,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "groupId") final String? groupId,
      @JsonKey(name: "isActive") final bool? isActive,
      @JsonKey(name: "gif") final String? gif,
      @JsonKey(name: "privacy") final String? privacy,
      @JsonKey(name: "bgColor") final String? bgColor,
      @JsonKey(name: "videoUrl") final String? videoUrl,
      @JsonKey(name: "interests") final List<Interest>? interests,
      final String? checkIn,
      final String? checkInImage}) = _$CreatePostRequestModelImpl;

  factory _CreatePostRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreatePostRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "postImage")
  String? get postImage;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "isActive")
  bool? get isActive;
  @override
  @JsonKey(name: "gif")
  String? get gif;
  @override
  @JsonKey(name: "privacy")
  String? get privacy;
  @override
  @JsonKey(name: "bgColor")
  String? get bgColor;
  @override
  @JsonKey(name: "videoUrl")
  String? get videoUrl;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  String? get checkIn;
  @override
  String? get checkInImage;
  @override
  @JsonKey(ignore: true)
  _$$CreatePostRequestModelImplCopyWith<_$CreatePostRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateUserPostRequestModel _$CreateUserPostRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateUserPostRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateUserPostRequestModel {
  @JsonKey(name: "postImage")
  String? get postImage => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "gif")
  String? get gif => throw _privateConstructorUsedError;
  @JsonKey(name: "bgColor")
  String? get bgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  String? get privacy => throw _privateConstructorUsedError;
  @JsonKey(name: "videoUrl")
  String? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  String? get checkIn => throw _privateConstructorUsedError;
  String? get checkInImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserPostRequestModelCopyWith<CreateUserPostRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserPostRequestModelCopyWith<$Res> {
  factory $CreateUserPostRequestModelCopyWith(CreateUserPostRequestModel value,
          $Res Function(CreateUserPostRequestModel) then) =
      _$CreateUserPostRequestModelCopyWithImpl<$Res,
          CreateUserPostRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "interests") List<Interest>? interests,
      String? checkIn,
      String? checkInImage});
}

/// @nodoc
class _$CreateUserPostRequestModelCopyWithImpl<$Res,
        $Val extends CreateUserPostRequestModel>
    implements $CreateUserPostRequestModelCopyWith<$Res> {
  _$CreateUserPostRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postImage = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? videoUrl = freezed,
    Object? interests = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
  }) {
    return _then(_value.copyWith(
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserPostRequestModelImplCopyWith<$Res>
    implements $CreateUserPostRequestModelCopyWith<$Res> {
  factory _$$CreateUserPostRequestModelImplCopyWith(
          _$CreateUserPostRequestModelImpl value,
          $Res Function(_$CreateUserPostRequestModelImpl) then) =
      __$$CreateUserPostRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "interests") List<Interest>? interests,
      String? checkIn,
      String? checkInImage});
}

/// @nodoc
class __$$CreateUserPostRequestModelImplCopyWithImpl<$Res>
    extends _$CreateUserPostRequestModelCopyWithImpl<$Res,
        _$CreateUserPostRequestModelImpl>
    implements _$$CreateUserPostRequestModelImplCopyWith<$Res> {
  __$$CreateUserPostRequestModelImplCopyWithImpl(
      _$CreateUserPostRequestModelImpl _value,
      $Res Function(_$CreateUserPostRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postImage = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? videoUrl = freezed,
    Object? interests = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
  }) {
    return _then(_$CreateUserPostRequestModelImpl(
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserPostRequestModelImpl implements _CreateUserPostRequestModel {
  const _$CreateUserPostRequestModelImpl(
      {@JsonKey(name: "postImage") this.postImage,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "isActive") this.isActive,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "interests") final List<Interest>? interests,
      this.checkIn,
      this.checkInImage})
      : _interests = interests;

  factory _$CreateUserPostRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateUserPostRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "postImage")
  final String? postImage;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "isActive")
  final bool? isActive;
  @override
  @JsonKey(name: "gif")
  final String? gif;
  @override
  @JsonKey(name: "bgColor")
  final String? bgColor;
  @override
  @JsonKey(name: "privacy")
  final String? privacy;
  @override
  @JsonKey(name: "videoUrl")
  final String? videoUrl;
  final List<Interest>? _interests;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? checkIn;
  @override
  final String? checkInImage;

  @override
  String toString() {
    return 'CreateUserPostRequestModel(postImage: $postImage, title: $title, description: $description, isActive: $isActive, gif: $gif, bgColor: $bgColor, privacy: $privacy, videoUrl: $videoUrl, interests: $interests, checkIn: $checkIn, checkInImage: $checkInImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserPostRequestModelImpl &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.gif, gif) || other.gif == gif) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkInImage, checkInImage) ||
                other.checkInImage == checkInImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postImage,
      title,
      description,
      isActive,
      gif,
      bgColor,
      privacy,
      videoUrl,
      const DeepCollectionEquality().hash(_interests),
      checkIn,
      checkInImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserPostRequestModelImplCopyWith<_$CreateUserPostRequestModelImpl>
      get copyWith => __$$CreateUserPostRequestModelImplCopyWithImpl<
          _$CreateUserPostRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserPostRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateUserPostRequestModel
    implements CreateUserPostRequestModel {
  const factory _CreateUserPostRequestModel(
      {@JsonKey(name: "postImage") final String? postImage,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "isActive") final bool? isActive,
      @JsonKey(name: "gif") final String? gif,
      @JsonKey(name: "bgColor") final String? bgColor,
      @JsonKey(name: "privacy") final String? privacy,
      @JsonKey(name: "videoUrl") final String? videoUrl,
      @JsonKey(name: "interests") final List<Interest>? interests,
      final String? checkIn,
      final String? checkInImage}) = _$CreateUserPostRequestModelImpl;

  factory _CreateUserPostRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateUserPostRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "postImage")
  String? get postImage;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "isActive")
  bool? get isActive;
  @override
  @JsonKey(name: "gif")
  String? get gif;
  @override
  @JsonKey(name: "bgColor")
  String? get bgColor;
  @override
  @JsonKey(name: "privacy")
  String? get privacy;
  @override
  @JsonKey(name: "videoUrl")
  String? get videoUrl;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  String? get checkIn;
  @override
  String? get checkInImage;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserPostRequestModelImplCopyWith<_$CreateUserPostRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreatePostResponseModel _$CreatePostResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreatePostResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreatePostResponseModel {
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
  $CreatePostResponseModelCopyWith<CreatePostResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostResponseModelCopyWith<$Res> {
  factory $CreatePostResponseModelCopyWith(CreatePostResponseModel value,
          $Res Function(CreatePostResponseModel) then) =
      _$CreatePostResponseModelCopyWithImpl<$Res, CreatePostResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreatePostResponseModelCopyWithImpl<$Res,
        $Val extends CreatePostResponseModel>
    implements $CreatePostResponseModelCopyWith<$Res> {
  _$CreatePostResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CreatePostResponseModelImplCopyWith<$Res>
    implements $CreatePostResponseModelCopyWith<$Res> {
  factory _$$CreatePostResponseModelImplCopyWith(
          _$CreatePostResponseModelImpl value,
          $Res Function(_$CreatePostResponseModelImpl) then) =
      __$$CreatePostResponseModelImplCopyWithImpl<$Res>;
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
class __$$CreatePostResponseModelImplCopyWithImpl<$Res>
    extends _$CreatePostResponseModelCopyWithImpl<$Res,
        _$CreatePostResponseModelImpl>
    implements _$$CreatePostResponseModelImplCopyWith<$Res> {
  __$$CreatePostResponseModelImplCopyWithImpl(
      _$CreatePostResponseModelImpl _value,
      $Res Function(_$CreatePostResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreatePostResponseModelImpl(
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
class _$CreatePostResponseModelImpl implements _CreatePostResponseModel {
  const _$CreatePostResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$CreatePostResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePostResponseModelImplFromJson(json);

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
    return 'CreatePostResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostResponseModelImpl &&
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
  _$$CreatePostResponseModelImplCopyWith<_$CreatePostResponseModelImpl>
      get copyWith => __$$CreatePostResponseModelImplCopyWithImpl<
          _$CreatePostResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePostResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CreatePostResponseModel implements CreatePostResponseModel {
  const factory _CreatePostResponseModel(
      {@JsonKey(name: "code") final int? code,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "isSuccess") final bool? isSuccess,
      @JsonKey(name: "data") final Data? data}) = _$CreatePostResponseModelImpl;

  factory _CreatePostResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreatePostResponseModelImpl.fromJson;

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
  _$$CreatePostResponseModelImplCopyWith<_$CreatePostResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "gif")
  String? get gif => throw _privateConstructorUsedError;
  @JsonKey(name: "videoUrl")
  String? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "bgColor")
  String? get bgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  String? get privacy => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "postImage")
  String? get postImage => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get checkIn => throw _privateConstructorUsedError;
  String? get checkInImage => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      String? checkIn,
      String? checkInImage});
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
    Object? subscribers = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? interests = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? postImage = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? groupId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
  }) {
    return _then(_value.copyWith(
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      String? checkIn,
      String? checkInImage});
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
    Object? subscribers = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? interests = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? postImage = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? groupId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
  }) {
    return _then(_$DataImpl(
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "isActive") this.isActive,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "postImage") this.postImage,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      this.checkIn,
      this.checkInImage})
      : _subscribers = subscribers,
        _interests = interests;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<dynamic>? _subscribers;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers {
    final value = _subscribers;
    if (value == null) return null;
    if (_subscribers is EqualUnmodifiableListView) return _subscribers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "isActive")
  final bool? isActive;
  @override
  @JsonKey(name: "gif")
  final String? gif;
  @override
  @JsonKey(name: "videoUrl")
  final String? videoUrl;
  @override
  @JsonKey(name: "bgColor")
  final String? bgColor;
  @override
  @JsonKey(name: "privacy")
  final String? privacy;
  final List<Interest>? _interests;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "postImage")
  final String? postImage;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  final String? checkIn;
  @override
  final String? checkInImage;

  @override
  String toString() {
    return 'Data(subscribers: $subscribers, isActive: $isActive, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, privacy: $privacy, interests: $interests, id: $id, userId: $userId, postImage: $postImage, slug: $slug, title: $title, description: $description, groupId: $groupId, createdAt: $createdAt, updatedAt: $updatedAt, checkIn: $checkIn, checkInImage: $checkInImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
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
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkInImage, checkInImage) ||
                other.checkInImage == checkInImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_subscribers),
      isActive,
      gif,
      videoUrl,
      bgColor,
      privacy,
      const DeepCollectionEquality().hash(_interests),
      id,
      userId,
      postImage,
      slug,
      title,
      description,
      groupId,
      createdAt,
      updatedAt,
      checkIn,
      checkInImage);

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
      {@JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "isActive") final bool? isActive,
      @JsonKey(name: "gif") final String? gif,
      @JsonKey(name: "videoUrl") final String? videoUrl,
      @JsonKey(name: "bgColor") final String? bgColor,
      @JsonKey(name: "privacy") final String? privacy,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "postImage") final String? postImage,
      @JsonKey(name: "slug") final String? slug,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "groupId") final String? groupId,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      final String? checkIn,
      final String? checkInImage}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
  @override
  @JsonKey(name: "isActive")
  bool? get isActive;
  @override
  @JsonKey(name: "gif")
  String? get gif;
  @override
  @JsonKey(name: "videoUrl")
  String? get videoUrl;
  @override
  @JsonKey(name: "bgColor")
  String? get bgColor;
  @override
  @JsonKey(name: "privacy")
  String? get privacy;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "postImage")
  String? get postImage;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  String? get checkIn;
  @override
  String? get checkInImage;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

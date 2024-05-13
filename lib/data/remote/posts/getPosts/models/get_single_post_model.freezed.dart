// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_single_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetSinglePostResponseModel _$GetSinglePostResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetSinglePostResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetSinglePostResponseModel {
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
  $GetSinglePostResponseModelCopyWith<GetSinglePostResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSinglePostResponseModelCopyWith<$Res> {
  factory $GetSinglePostResponseModelCopyWith(GetSinglePostResponseModel value,
          $Res Function(GetSinglePostResponseModel) then) =
      _$GetSinglePostResponseModelCopyWithImpl<$Res,
          GetSinglePostResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetSinglePostResponseModelCopyWithImpl<$Res,
        $Val extends GetSinglePostResponseModel>
    implements $GetSinglePostResponseModelCopyWith<$Res> {
  _$GetSinglePostResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetSinglePostResponseModelImplCopyWith<$Res>
    implements $GetSinglePostResponseModelCopyWith<$Res> {
  factory _$$GetSinglePostResponseModelImplCopyWith(
          _$GetSinglePostResponseModelImpl value,
          $Res Function(_$GetSinglePostResponseModelImpl) then) =
      __$$GetSinglePostResponseModelImplCopyWithImpl<$Res>;
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
class __$$GetSinglePostResponseModelImplCopyWithImpl<$Res>
    extends _$GetSinglePostResponseModelCopyWithImpl<$Res,
        _$GetSinglePostResponseModelImpl>
    implements _$$GetSinglePostResponseModelImplCopyWith<$Res> {
  __$$GetSinglePostResponseModelImplCopyWithImpl(
      _$GetSinglePostResponseModelImpl _value,
      $Res Function(_$GetSinglePostResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetSinglePostResponseModelImpl(
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
class _$GetSinglePostResponseModelImpl implements _GetSinglePostResponseModel {
  const _$GetSinglePostResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$GetSinglePostResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetSinglePostResponseModelImplFromJson(json);

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
    return 'GetSinglePostResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSinglePostResponseModelImpl &&
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
  _$$GetSinglePostResponseModelImplCopyWith<_$GetSinglePostResponseModelImpl>
      get copyWith => __$$GetSinglePostResponseModelImplCopyWithImpl<
          _$GetSinglePostResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSinglePostResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetSinglePostResponseModel
    implements GetSinglePostResponseModel {
  const factory _GetSinglePostResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$GetSinglePostResponseModelImpl;

  factory _GetSinglePostResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetSinglePostResponseModelImpl.fromJson;

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
  _$$GetSinglePostResponseModelImplCopyWith<_$GetSinglePostResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "postImage")
  String? get postImage => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "checkIn")
  dynamic get checkIn => throw _privateConstructorUsedError;
  @JsonKey(name: "checkInImage")
  dynamic get checkInImage => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  dynamic get groupId => throw _privateConstructorUsedError;
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
  UserId? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "isBan")
  bool? get isBan => throw _privateConstructorUsedError;
  @JsonKey(name: "banReason")
  String? get banReason => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "totalLikeDislike")
  int? get likeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "totalDislike")
  int? get dislikeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "userLikeDislike")
  UserLikeDislike? get userLikeDislike => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "checkIn") dynamic checkIn,
      @JsonKey(name: "checkInImage") dynamic checkInImage,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "groupId") dynamic groupId,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "totalLikeDislike") int? likeCounts,
      @JsonKey(name: "totalDislike") int? dislikeCounts,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "userLikeDislike") UserLikeDislike? userLikeDislike});

  $UserIdCopyWith<$Res>? get userId;
  $UserLikeDislikeCopyWith<$Res>? get userLikeDislike;
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
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
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
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? createdAt = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
    Object? updatedAt = freezed,
    Object? userLikeDislike = freezed,
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
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as UserId?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userLikeDislike: freezed == userLikeDislike
          ? _value.userLikeDislike
          : userLikeDislike // ignore: cast_nullable_to_non_nullable
              as UserLikeDislike?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIdCopyWith<$Res>? get userId {
    if (_value.userId == null) {
      return null;
    }

    return $UserIdCopyWith<$Res>(_value.userId!, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLikeDislikeCopyWith<$Res>? get userLikeDislike {
    if (_value.userLikeDislike == null) {
      return null;
    }

    return $UserLikeDislikeCopyWith<$Res>(_value.userLikeDislike!, (value) {
      return _then(_value.copyWith(userLikeDislike: value) as $Val);
    });
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
      {@JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "checkIn") dynamic checkIn,
      @JsonKey(name: "checkInImage") dynamic checkInImage,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "groupId") dynamic groupId,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "totalLikeDislike") int? likeCounts,
      @JsonKey(name: "totalDislike") int? dislikeCounts,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "userLikeDislike") UserLikeDislike? userLikeDislike});

  @override
  $UserIdCopyWith<$Res>? get userId;
  @override
  $UserLikeDislikeCopyWith<$Res>? get userLikeDislike;
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
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
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
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? createdAt = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
    Object? updatedAt = freezed,
    Object? userLikeDislike = freezed,
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
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as UserId?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userLikeDislike: freezed == userLikeDislike
          ? _value.userLikeDislike
          : userLikeDislike // ignore: cast_nullable_to_non_nullable
              as UserLikeDislike?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "postImage") this.postImage,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "checkIn") this.checkIn,
      @JsonKey(name: "checkInImage") this.checkInImage,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "isActive") this.isActive,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "isBan") this.isBan,
      @JsonKey(name: "banReason") this.banReason,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "totalLikeDislike") this.likeCounts,
      @JsonKey(name: "totalDislike") this.dislikeCounts,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "userLikeDislike") this.userLikeDislike})
      : _subscribers = subscribers,
        _interests = interests;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "postImage")
  final String? postImage;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "checkIn")
  final dynamic checkIn;
  @override
  @JsonKey(name: "checkInImage")
  final dynamic checkInImage;
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
  @JsonKey(name: "groupId")
  final dynamic groupId;
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
  final UserId? userId;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "isBan")
  final bool? isBan;
  @override
  @JsonKey(name: "banReason")
  final String? banReason;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "totalLikeDislike")
  final int? likeCounts;
  @override
  @JsonKey(name: "totalDislike")
  final int? dislikeCounts;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "userLikeDislike")
  final UserLikeDislike? userLikeDislike;

  @override
  String toString() {
    return 'Data(postImage: $postImage, slug: $slug, description: $description, checkIn: $checkIn, checkInImage: $checkInImage, subscribers: $subscribers, groupId: $groupId, isActive: $isActive, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, privacy: $privacy, interests: $interests, id: $id, userId: $userId, title: $title, isBan: $isBan, banReason: $banReason, createdAt: $createdAt, likeCounts: $likeCounts, dislikeCounts: $dislikeCounts, updatedAt: $updatedAt, userLikeDislike: $userLikeDislike)';
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
            const DeepCollectionEquality().equals(other.checkIn, checkIn) &&
            const DeepCollectionEquality()
                .equals(other.checkInImage, checkInImage) &&
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
            (identical(other.isBan, isBan) || other.isBan == isBan) &&
            (identical(other.banReason, banReason) ||
                other.banReason == banReason) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.likeCounts, likeCounts) ||
                other.likeCounts == likeCounts) &&
            (identical(other.dislikeCounts, dislikeCounts) ||
                other.dislikeCounts == dislikeCounts) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userLikeDislike, userLikeDislike) ||
                other.userLikeDislike == userLikeDislike));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        postImage,
        slug,
        description,
        const DeepCollectionEquality().hash(checkIn),
        const DeepCollectionEquality().hash(checkInImage),
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
        isBan,
        banReason,
        createdAt,
        likeCounts,
        dislikeCounts,
        updatedAt,
        userLikeDislike
      ]);

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
      {@JsonKey(name: "postImage") final String? postImage,
      @JsonKey(name: "slug") final String? slug,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "checkIn") final dynamic checkIn,
      @JsonKey(name: "checkInImage") final dynamic checkInImage,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "groupId") final dynamic groupId,
      @JsonKey(name: "isActive") final bool? isActive,
      @JsonKey(name: "gif") final String? gif,
      @JsonKey(name: "videoUrl") final String? videoUrl,
      @JsonKey(name: "bgColor") final String? bgColor,
      @JsonKey(name: "privacy") final String? privacy,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userId") final UserId? userId,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "isBan") final bool? isBan,
      @JsonKey(name: "banReason") final String? banReason,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "totalLikeDislike") final int? likeCounts,
      @JsonKey(name: "totalDislike") final int? dislikeCounts,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "userLikeDislike")
      final UserLikeDislike? userLikeDislike}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "postImage")
  String? get postImage;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "checkIn")
  dynamic get checkIn;
  @override
  @JsonKey(name: "checkInImage")
  dynamic get checkInImage;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
  @override
  @JsonKey(name: "groupId")
  dynamic get groupId;
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
  UserId? get userId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "isBan")
  bool? get isBan;
  @override
  @JsonKey(name: "banReason")
  String? get banReason;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "totalLikeDislike")
  int? get likeCounts;
  @override
  @JsonKey(name: "totalDislike")
  int? get dislikeCounts;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "userLikeDislike")
  UserLikeDislike? get userLikeDislike;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserId _$UserIdFromJson(Map<String, dynamic> json) {
  return _UserId.fromJson(json);
}

/// @nodoc
mixin _$UserId {
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  dynamic get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "userName")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  dynamic get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "isBan")
  bool? get isBan => throw _privateConstructorUsedError;
  @JsonKey(name: "banReason")
  String? get banReason => throw _privateConstructorUsedError;
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<dynamic>? get followers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIdCopyWith<UserId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdCopyWith<$Res> {
  factory $UserIdCopyWith(UserId value, $Res Function(UserId) then) =
      _$UserIdCopyWithImpl<$Res, UserId>;
  @useResult
  $Res call(
      {@JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "followers") List<dynamic>? followers});
}

/// @nodoc
class _$UserIdCopyWithImpl<$Res, $Val extends UserId>
    implements $UserIdCopyWith<$Res> {
  _$UserIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? interests = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? coverPhoto = freezed,
    Object? profilePhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? subscribers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? otpExpiry = freezed,
    Object? followers = freezed,
  }) {
    return _then(_value.copyWith(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as dynamic,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserIdImplCopyWith<$Res> implements $UserIdCopyWith<$Res> {
  factory _$$UserIdImplCopyWith(
          _$UserIdImpl value, $Res Function(_$UserIdImpl) then) =
      __$$UserIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "followers") List<dynamic>? followers});
}

/// @nodoc
class __$$UserIdImplCopyWithImpl<$Res>
    extends _$UserIdCopyWithImpl<$Res, _$UserIdImpl>
    implements _$$UserIdImplCopyWith<$Res> {
  __$$UserIdImplCopyWithImpl(
      _$UserIdImpl _value, $Res Function(_$UserIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? interests = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? coverPhoto = freezed,
    Object? profilePhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? subscribers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? otpExpiry = freezed,
    Object? followers = freezed,
  }) {
    return _then(_$UserIdImpl(
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceToken: freezed == deviceToken
          ? _value._deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as dynamic,
      followers: freezed == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdImpl implements _UserId {
  const _$UserIdImpl(
      {@JsonKey(name: "role") this.role,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "isBan") this.isBan,
      @JsonKey(name: "banReason") this.banReason,
      @JsonKey(name: "otpExpiry") this.otpExpiry,
      @JsonKey(name: "followers") final List<dynamic>? followers})
      : _interests = interests,
        _deviceToken = deviceToken,
        _subscribers = subscribers,
        _followers = followers;

  factory _$UserIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdImplFromJson(json);

  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "isEmailVerified")
  final bool? isEmailVerified;
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
  @JsonKey(name: "productId")
  final dynamic productId;
  final List<String?>? _deviceToken;
  @override
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken {
    final value = _deviceToken;
    if (value == null) return null;
    if (_deviceToken is EqualUnmodifiableListView) return _deviceToken;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "firstName")
  final String? firstName;
  @override
  @JsonKey(name: "lastName")
  final String? lastName;
  @override
  @JsonKey(name: "userName")
  final String? userName;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "coverPhoto")
  final String? coverPhoto;
  @override
  @JsonKey(name: "profilePhoto")
  final String? profilePhoto;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "location")
  final String? location;
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
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "otp")
  final dynamic otp;
  @override
  @JsonKey(name: "isBan")
  final bool? isBan;
  @override
  @JsonKey(name: "banReason")
  final String? banReason;
  @override
  @JsonKey(name: "otpExpiry")
  final dynamic otpExpiry;
  final List<dynamic>? _followers;
  @override
  @JsonKey(name: "followers")
  List<dynamic>? get followers {
    final value = _followers;
    if (value == null) return null;
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserId(role: $role, isEmailVerified: $isEmailVerified, interests: $interests, productId: $productId, deviceToken: $deviceToken, id: $id, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, coverPhoto: $coverPhoto, profilePhoto: $profilePhoto, description: $description, location: $location, subscribers: $subscribers, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, isBan: $isBan, banReason: $banReason, otpExpiry: $otpExpiry, followers: $followers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other._deviceToken, _deviceToken) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            (identical(other.isBan, isBan) || other.isBan == isBan) &&
            (identical(other.banReason, banReason) ||
                other.banReason == banReason) &&
            const DeepCollectionEquality().equals(other.otpExpiry, otpExpiry) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        role,
        isEmailVerified,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(productId),
        const DeepCollectionEquality().hash(_deviceToken),
        id,
        firstName,
        lastName,
        userName,
        email,
        phone,
        coverPhoto,
        profilePhoto,
        description,
        location,
        const DeepCollectionEquality().hash(_subscribers),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(otp),
        isBan,
        banReason,
        const DeepCollectionEquality().hash(otpExpiry),
        const DeepCollectionEquality().hash(_followers)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      __$$UserIdImplCopyWithImpl<_$UserIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserIdImplToJson(
      this,
    );
  }
}

abstract class _UserId implements UserId {
  const factory _UserId(
          {@JsonKey(name: "role") final String? role,
          @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
          @JsonKey(name: "interests") final List<Interest>? interests,
          @JsonKey(name: "productId") final dynamic productId,
          @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
          @JsonKey(name: "_id") final String? id,
          @JsonKey(name: "firstName") final String? firstName,
          @JsonKey(name: "lastName") final String? lastName,
          @JsonKey(name: "userName") final String? userName,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "phone") final String? phone,
          @JsonKey(name: "coverPhoto") final String? coverPhoto,
          @JsonKey(name: "profilePhoto") final String? profilePhoto,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "location") final String? location,
          @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "otp") final dynamic otp,
          @JsonKey(name: "isBan") final bool? isBan,
          @JsonKey(name: "banReason") final String? banReason,
          @JsonKey(name: "otpExpiry") final dynamic otpExpiry,
          @JsonKey(name: "followers") final List<dynamic>? followers}) =
      _$UserIdImpl;

  factory _UserId.fromJson(Map<String, dynamic> json) = _$UserIdImpl.fromJson;

  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  @JsonKey(name: "productId")
  dynamic get productId;
  @override
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "firstName")
  String? get firstName;
  @override
  @JsonKey(name: "lastName")
  String? get lastName;
  @override
  @JsonKey(name: "userName")
  String? get userName;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto;
  @override
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "otp")
  dynamic get otp;
  @override
  @JsonKey(name: "isBan")
  bool? get isBan;
  @override
  @JsonKey(name: "banReason")
  String? get banReason;
  @override
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry;
  @override
  @JsonKey(name: "followers")
  List<dynamic>? get followers;
  @override
  @JsonKey(ignore: true)
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLikeDislike _$UserLikeDislikeFromJson(Map<String, dynamic> json) {
  return _UserLikeDislike.fromJson(json);
}

/// @nodoc
mixin _$UserLikeDislike {
  @JsonKey(name: "postId")
  dynamic get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "tutorialId")
  dynamic get tutorialId => throw _privateConstructorUsedError;
  @JsonKey(name: "commentId")
  String? get commentId => throw _privateConstructorUsedError;
  @JsonKey(name: "questionId")
  dynamic get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: "isLike")
  bool? get isLike => throw _privateConstructorUsedError;
  @JsonKey(name: "isDislike")
  bool? get isDislike => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLikeDislikeCopyWith<UserLikeDislike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLikeDislikeCopyWith<$Res> {
  factory $UserLikeDislikeCopyWith(
          UserLikeDislike value, $Res Function(UserLikeDislike) then) =
      _$UserLikeDislikeCopyWithImpl<$Res, UserLikeDislike>;
  @useResult
  $Res call(
      {@JsonKey(name: "postId") dynamic postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
      @JsonKey(name: "commentId") String? commentId,
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "isLike") bool? isLike,
      @JsonKey(name: "isDislike") bool? isDislike,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class _$UserLikeDislikeCopyWithImpl<$Res, $Val extends UserLikeDislike>
    implements $UserLikeDislikeCopyWith<$Res> {
  _$UserLikeDislikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? tutorialId = freezed,
    Object? commentId = freezed,
    Object? questionId = freezed,
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLike: freezed == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDislike: freezed == isDislike
          ? _value.isDislike
          : isDislike // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserLikeDislikeImplCopyWith<$Res>
    implements $UserLikeDislikeCopyWith<$Res> {
  factory _$$UserLikeDislikeImplCopyWith(_$UserLikeDislikeImpl value,
          $Res Function(_$UserLikeDislikeImpl) then) =
      __$$UserLikeDislikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "postId") dynamic postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
      @JsonKey(name: "commentId") String? commentId,
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "isLike") bool? isLike,
      @JsonKey(name: "isDislike") bool? isDislike,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class __$$UserLikeDislikeImplCopyWithImpl<$Res>
    extends _$UserLikeDislikeCopyWithImpl<$Res, _$UserLikeDislikeImpl>
    implements _$$UserLikeDislikeImplCopyWith<$Res> {
  __$$UserLikeDislikeImplCopyWithImpl(
      _$UserLikeDislikeImpl _value, $Res Function(_$UserLikeDislikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? tutorialId = freezed,
    Object? commentId = freezed,
    Object? questionId = freezed,
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserLikeDislikeImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLike: freezed == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDislike: freezed == isDislike
          ? _value.isDislike
          : isDislike // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
class _$UserLikeDislikeImpl implements _UserLikeDislike {
  const _$UserLikeDislikeImpl(
      {@JsonKey(name: "postId") this.postId,
      @JsonKey(name: "tutorialId") this.tutorialId,
      @JsonKey(name: "commentId") this.commentId,
      @JsonKey(name: "questionId") this.questionId,
      @JsonKey(name: "isLike") this.isLike,
      @JsonKey(name: "isDislike") this.isDislike,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$UserLikeDislikeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLikeDislikeImplFromJson(json);

  @override
  @JsonKey(name: "postId")
  final dynamic postId;
  @override
  @JsonKey(name: "tutorialId")
  final dynamic tutorialId;
  @override
  @JsonKey(name: "commentId")
  final String? commentId;
  @override
  @JsonKey(name: "questionId")
  final dynamic questionId;
  @override
  @JsonKey(name: "isLike")
  final bool? isLike;
  @override
  @JsonKey(name: "isDislike")
  final bool? isDislike;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserLikeDislike(postId: $postId, tutorialId: $tutorialId, commentId: $commentId, questionId: $questionId, isLike: $isLike, isDislike: $isDislike, id: $id, userId: $userId, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLikeDislikeImpl &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality()
                .equals(other.tutorialId, tutorialId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId) &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.isDislike, isDislike) ||
                other.isDislike == isDislike) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(tutorialId),
      commentId,
      const DeepCollectionEquality().hash(questionId),
      isLike,
      isDislike,
      id,
      userId,
      type,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLikeDislikeImplCopyWith<_$UserLikeDislikeImpl> get copyWith =>
      __$$UserLikeDislikeImplCopyWithImpl<_$UserLikeDislikeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLikeDislikeImplToJson(
      this,
    );
  }
}

abstract class _UserLikeDislike implements UserLikeDislike {
  const factory _UserLikeDislike(
          {@JsonKey(name: "postId") final dynamic postId,
          @JsonKey(name: "tutorialId") final dynamic tutorialId,
          @JsonKey(name: "commentId") final String? commentId,
          @JsonKey(name: "questionId") final dynamic questionId,
          @JsonKey(name: "isLike") final bool? isLike,
          @JsonKey(name: "isDislike") final bool? isDislike,
          @JsonKey(name: "_id") final String? id,
          @JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt}) =
      _$UserLikeDislikeImpl;

  factory _UserLikeDislike.fromJson(Map<String, dynamic> json) =
      _$UserLikeDislikeImpl.fromJson;

  @override
  @JsonKey(name: "postId")
  dynamic get postId;
  @override
  @JsonKey(name: "tutorialId")
  dynamic get tutorialId;
  @override
  @JsonKey(name: "commentId")
  String? get commentId;
  @override
  @JsonKey(name: "questionId")
  dynamic get questionId;
  @override
  @JsonKey(name: "isLike")
  bool? get isLike;
  @override
  @JsonKey(name: "isDislike")
  bool? get isDislike;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserLikeDislikeImplCopyWith<_$UserLikeDislikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

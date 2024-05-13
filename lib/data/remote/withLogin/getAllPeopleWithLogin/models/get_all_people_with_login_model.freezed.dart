// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_people_with_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllPeopleWithLoginRequestModel _$GetAllPeopleWithLoginRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetAllPeopleWithLoginRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllPeopleWithLoginRequestModel {
  String? get searchKey => throw _privateConstructorUsedError;
  String? get interests => throw _privateConstructorUsedError;
  String? get timeFilter => throw _privateConstructorUsedError;
  @JsonKey(name: "feedFilter")
  String? get feedFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllPeopleWithLoginRequestModelCopyWith<GetAllPeopleWithLoginRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllPeopleWithLoginRequestModelCopyWith<$Res> {
  factory $GetAllPeopleWithLoginRequestModelCopyWith(
          GetAllPeopleWithLoginRequestModel value,
          $Res Function(GetAllPeopleWithLoginRequestModel) then) =
      _$GetAllPeopleWithLoginRequestModelCopyWithImpl<$Res,
          GetAllPeopleWithLoginRequestModel>;
  @useResult
  $Res call(
      {String? searchKey,
      String? interests,
      String? timeFilter,
      @JsonKey(name: "feedFilter") String? feedFilter});
}

/// @nodoc
class _$GetAllPeopleWithLoginRequestModelCopyWithImpl<$Res,
        $Val extends GetAllPeopleWithLoginRequestModel>
    implements $GetAllPeopleWithLoginRequestModelCopyWith<$Res> {
  _$GetAllPeopleWithLoginRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
    Object? interests = freezed,
    Object? timeFilter = freezed,
    Object? feedFilter = freezed,
  }) {
    return _then(_value.copyWith(
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFilter: freezed == timeFilter
          ? _value.timeFilter
          : timeFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      feedFilter: freezed == feedFilter
          ? _value.feedFilter
          : feedFilter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllPeopleWithLoginRequestModelImplCopyWith<$Res>
    implements $GetAllPeopleWithLoginRequestModelCopyWith<$Res> {
  factory _$$GetAllPeopleWithLoginRequestModelImplCopyWith(
          _$GetAllPeopleWithLoginRequestModelImpl value,
          $Res Function(_$GetAllPeopleWithLoginRequestModelImpl) then) =
      __$$GetAllPeopleWithLoginRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? searchKey,
      String? interests,
      String? timeFilter,
      @JsonKey(name: "feedFilter") String? feedFilter});
}

/// @nodoc
class __$$GetAllPeopleWithLoginRequestModelImplCopyWithImpl<$Res>
    extends _$GetAllPeopleWithLoginRequestModelCopyWithImpl<$Res,
        _$GetAllPeopleWithLoginRequestModelImpl>
    implements _$$GetAllPeopleWithLoginRequestModelImplCopyWith<$Res> {
  __$$GetAllPeopleWithLoginRequestModelImplCopyWithImpl(
      _$GetAllPeopleWithLoginRequestModelImpl _value,
      $Res Function(_$GetAllPeopleWithLoginRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
    Object? interests = freezed,
    Object? timeFilter = freezed,
    Object? feedFilter = freezed,
  }) {
    return _then(_$GetAllPeopleWithLoginRequestModelImpl(
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFilter: freezed == timeFilter
          ? _value.timeFilter
          : timeFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      feedFilter: freezed == feedFilter
          ? _value.feedFilter
          : feedFilter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllPeopleWithLoginRequestModelImpl
    implements _GetAllPeopleWithLoginRequestModel {
  const _$GetAllPeopleWithLoginRequestModelImpl(
      {this.searchKey,
      this.interests,
      this.timeFilter,
      @JsonKey(name: "feedFilter") this.feedFilter});

  factory _$GetAllPeopleWithLoginRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllPeopleWithLoginRequestModelImplFromJson(json);

  @override
  final String? searchKey;
  @override
  final String? interests;
  @override
  final String? timeFilter;
  @override
  @JsonKey(name: "feedFilter")
  final String? feedFilter;

  @override
  String toString() {
    return 'GetAllPeopleWithLoginRequestModel(searchKey: $searchKey, interests: $interests, timeFilter: $timeFilter, feedFilter: $feedFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllPeopleWithLoginRequestModelImpl &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey) &&
            (identical(other.interests, interests) ||
                other.interests == interests) &&
            (identical(other.timeFilter, timeFilter) ||
                other.timeFilter == timeFilter) &&
            (identical(other.feedFilter, feedFilter) ||
                other.feedFilter == feedFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, searchKey, interests, timeFilter, feedFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllPeopleWithLoginRequestModelImplCopyWith<
          _$GetAllPeopleWithLoginRequestModelImpl>
      get copyWith => __$$GetAllPeopleWithLoginRequestModelImplCopyWithImpl<
          _$GetAllPeopleWithLoginRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllPeopleWithLoginRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllPeopleWithLoginRequestModel
    implements GetAllPeopleWithLoginRequestModel {
  const factory _GetAllPeopleWithLoginRequestModel(
          {final String? searchKey,
          final String? interests,
          final String? timeFilter,
          @JsonKey(name: "feedFilter") final String? feedFilter}) =
      _$GetAllPeopleWithLoginRequestModelImpl;

  factory _GetAllPeopleWithLoginRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAllPeopleWithLoginRequestModelImpl.fromJson;

  @override
  String? get searchKey;
  @override
  String? get interests;
  @override
  String? get timeFilter;
  @override
  @JsonKey(name: "feedFilter")
  String? get feedFilter;
  @override
  @JsonKey(ignore: true)
  _$$GetAllPeopleWithLoginRequestModelImplCopyWith<
          _$GetAllPeopleWithLoginRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetAllPeopleWithLoginResponseModel _$GetAllPeopleWithLoginResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetAllPeopleWithLoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllPeopleWithLoginResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DashboardPeopleData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllPeopleWithLoginResponseModelCopyWith<
          GetAllPeopleWithLoginResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllPeopleWithLoginResponseModelCopyWith<$Res> {
  factory $GetAllPeopleWithLoginResponseModelCopyWith(
          GetAllPeopleWithLoginResponseModel value,
          $Res Function(GetAllPeopleWithLoginResponseModel) then) =
      _$GetAllPeopleWithLoginResponseModelCopyWithImpl<$Res,
          GetAllPeopleWithLoginResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<DashboardPeopleData>? data});
}

/// @nodoc
class _$GetAllPeopleWithLoginResponseModelCopyWithImpl<$Res,
        $Val extends GetAllPeopleWithLoginResponseModel>
    implements $GetAllPeopleWithLoginResponseModelCopyWith<$Res> {
  _$GetAllPeopleWithLoginResponseModelCopyWithImpl(this._value, this._then);

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
              as List<DashboardPeopleData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllPeopleWithLoginResponseModelImplCopyWith<$Res>
    implements $GetAllPeopleWithLoginResponseModelCopyWith<$Res> {
  factory _$$GetAllPeopleWithLoginResponseModelImplCopyWith(
          _$GetAllPeopleWithLoginResponseModelImpl value,
          $Res Function(_$GetAllPeopleWithLoginResponseModelImpl) then) =
      __$$GetAllPeopleWithLoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<DashboardPeopleData>? data});
}

/// @nodoc
class __$$GetAllPeopleWithLoginResponseModelImplCopyWithImpl<$Res>
    extends _$GetAllPeopleWithLoginResponseModelCopyWithImpl<$Res,
        _$GetAllPeopleWithLoginResponseModelImpl>
    implements _$$GetAllPeopleWithLoginResponseModelImplCopyWith<$Res> {
  __$$GetAllPeopleWithLoginResponseModelImplCopyWithImpl(
      _$GetAllPeopleWithLoginResponseModelImpl _value,
      $Res Function(_$GetAllPeopleWithLoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAllPeopleWithLoginResponseModelImpl(
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
              as List<DashboardPeopleData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllPeopleWithLoginResponseModelImpl
    implements _GetAllPeopleWithLoginResponseModel {
  const _$GetAllPeopleWithLoginResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<DashboardPeopleData>? data})
      : _data = data;

  factory _$GetAllPeopleWithLoginResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllPeopleWithLoginResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<DashboardPeopleData>? _data;
  @override
  @JsonKey(name: "data")
  List<DashboardPeopleData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllPeopleWithLoginResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllPeopleWithLoginResponseModelImpl &&
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
  _$$GetAllPeopleWithLoginResponseModelImplCopyWith<
          _$GetAllPeopleWithLoginResponseModelImpl>
      get copyWith => __$$GetAllPeopleWithLoginResponseModelImplCopyWithImpl<
          _$GetAllPeopleWithLoginResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllPeopleWithLoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllPeopleWithLoginResponseModel
    implements GetAllPeopleWithLoginResponseModel {
  const factory _GetAllPeopleWithLoginResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<DashboardPeopleData>? data}) =
      _$GetAllPeopleWithLoginResponseModelImpl;

  factory _GetAllPeopleWithLoginResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAllPeopleWithLoginResponseModelImpl.fromJson;

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
  List<DashboardPeopleData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAllPeopleWithLoginResponseModelImplCopyWith<
          _$GetAllPeopleWithLoginResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DashboardPeopleData _$DashboardPeopleDataFromJson(Map<String, dynamic> json) {
  return _DashboardPeopleData.fromJson(json);
}

/// @nodoc
mixin _$DashboardPeopleData {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "postImage")
  String? get postImage => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "checkIn")
  String? get checkIn => throw _privateConstructorUsedError;
  @JsonKey(name: "checkInImage")
  String? get checkInImage => throw _privateConstructorUsedError;
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
  @JsonKey(name: "userId")
  UserId? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest?>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "isBan")
  bool? get isBan => throw _privateConstructorUsedError;
  @JsonKey(name: "banReason")
  String? get banReason => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "comments")
  List<Comment?>? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: "combinedCount")
  int? get combinedCount => throw _privateConstructorUsedError;
  @JsonKey(name: "commentCounts")
  int? get commentCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "likeDislike")
  LikeDislike? get likeDislike => throw _privateConstructorUsedError;
  @JsonKey(name: "likeCounts")
  int? get likeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "disLikeCounts")
  int? get dislikeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "isFollowing")
  bool? get isFollowing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardPeopleDataCopyWith<DashboardPeopleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardPeopleDataCopyWith<$Res> {
  factory $DashboardPeopleDataCopyWith(
          DashboardPeopleData value, $Res Function(DashboardPeopleData) then) =
      _$DashboardPeopleDataCopyWithImpl<$Res, DashboardPeopleData>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "checkIn") String? checkIn,
      @JsonKey(name: "checkInImage") String? checkInImage,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "groupId") dynamic groupId,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "comments") List<Comment?>? comments,
      @JsonKey(name: "combinedCount") int? combinedCount,
      @JsonKey(name: "commentCounts") int? commentCounts,
      @JsonKey(name: "likeDislike") LikeDislike? likeDislike,
      @JsonKey(name: "likeCounts") int? likeCounts,
      @JsonKey(name: "disLikeCounts") int? dislikeCounts,
      @JsonKey(name: "isFollowing") bool? isFollowing});

  $UserIdCopyWith<$Res>? get userId;
  $LikeDislikeCopyWith<$Res>? get likeDislike;
}

/// @nodoc
class _$DashboardPeopleDataCopyWithImpl<$Res, $Val extends DashboardPeopleData>
    implements $DashboardPeopleDataCopyWith<$Res> {
  _$DashboardPeopleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postImage = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
    Object? subscribers = freezed,
    Object? groupId = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? interests = freezed,
    Object? createdAt = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? updatedAt = freezed,
    Object? comments = freezed,
    Object? combinedCount = freezed,
    Object? commentCounts = freezed,
    Object? likeDislike = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment?>?,
      combinedCount: freezed == combinedCount
          ? _value.combinedCount
          : combinedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCounts: freezed == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeDislike: freezed == likeDislike
          ? _value.likeDislike
          : likeDislike // ignore: cast_nullable_to_non_nullable
              as LikeDislike?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $LikeDislikeCopyWith<$Res>? get likeDislike {
    if (_value.likeDislike == null) {
      return null;
    }

    return $LikeDislikeCopyWith<$Res>(_value.likeDislike!, (value) {
      return _then(_value.copyWith(likeDislike: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardPeopleDataImplCopyWith<$Res>
    implements $DashboardPeopleDataCopyWith<$Res> {
  factory _$$DashboardPeopleDataImplCopyWith(_$DashboardPeopleDataImpl value,
          $Res Function(_$DashboardPeopleDataImpl) then) =
      __$$DashboardPeopleDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "checkIn") String? checkIn,
      @JsonKey(name: "checkInImage") String? checkInImage,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "groupId") dynamic groupId,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "comments") List<Comment?>? comments,
      @JsonKey(name: "combinedCount") int? combinedCount,
      @JsonKey(name: "commentCounts") int? commentCounts,
      @JsonKey(name: "likeDislike") LikeDislike? likeDislike,
      @JsonKey(name: "likeCounts") int? likeCounts,
      @JsonKey(name: "disLikeCounts") int? dislikeCounts,
      @JsonKey(name: "isFollowing") bool? isFollowing});

  @override
  $UserIdCopyWith<$Res>? get userId;
  @override
  $LikeDislikeCopyWith<$Res>? get likeDislike;
}

/// @nodoc
class __$$DashboardPeopleDataImplCopyWithImpl<$Res>
    extends _$DashboardPeopleDataCopyWithImpl<$Res, _$DashboardPeopleDataImpl>
    implements _$$DashboardPeopleDataImplCopyWith<$Res> {
  __$$DashboardPeopleDataImplCopyWithImpl(_$DashboardPeopleDataImpl _value,
      $Res Function(_$DashboardPeopleDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postImage = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
    Object? subscribers = freezed,
    Object? groupId = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? interests = freezed,
    Object? createdAt = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? updatedAt = freezed,
    Object? comments = freezed,
    Object? combinedCount = freezed,
    Object? commentCounts = freezed,
    Object? likeDislike = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_$DashboardPeopleDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment?>?,
      combinedCount: freezed == combinedCount
          ? _value.combinedCount
          : combinedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCounts: freezed == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeDislike: freezed == likeDislike
          ? _value.likeDislike
          : likeDislike // ignore: cast_nullable_to_non_nullable
              as LikeDislike?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardPeopleDataImpl implements _DashboardPeopleData {
  const _$DashboardPeopleDataImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "postImage") this.postImage,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "checkIn") this.checkIn,
      @JsonKey(name: "checkInImage") this.checkInImage,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "isActive") this.isActive,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "isBan") this.isBan,
      @JsonKey(name: "banReason") this.banReason,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "comments") final List<Comment?>? comments,
      @JsonKey(name: "combinedCount") this.combinedCount,
      @JsonKey(name: "commentCounts") this.commentCounts,
      @JsonKey(name: "likeDislike") this.likeDislike,
      @JsonKey(name: "likeCounts") this.likeCounts,
      @JsonKey(name: "disLikeCounts") this.dislikeCounts,
      @JsonKey(name: "isFollowing") this.isFollowing})
      : _subscribers = subscribers,
        _interests = interests,
        _comments = comments;

  factory _$DashboardPeopleDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardPeopleDataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "postImage")
  final String? postImage;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "checkIn")
  final String? checkIn;
  @override
  @JsonKey(name: "checkInImage")
  final String? checkInImage;
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
  @override
  @JsonKey(name: "userId")
  final UserId? userId;
  @override
  @JsonKey(name: "title")
  final String? title;
  final List<Interest?>? _interests;
  @override
  @JsonKey(name: "interests")
  List<Interest?>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "isBan")
  final bool? isBan;
  @override
  @JsonKey(name: "banReason")
  final String? banReason;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  final List<Comment?>? _comments;
  @override
  @JsonKey(name: "comments")
  List<Comment?>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "combinedCount")
  final int? combinedCount;
  @override
  @JsonKey(name: "commentCounts")
  final int? commentCounts;
  @override
  @JsonKey(name: "likeDislike")
  final LikeDislike? likeDislike;
  @override
  @JsonKey(name: "likeCounts")
  final int? likeCounts;
  @override
  @JsonKey(name: "disLikeCounts")
  final int? dislikeCounts;
  @override
  @JsonKey(name: "isFollowing")
  final bool? isFollowing;

  @override
  String toString() {
    return 'DashboardPeopleData(id: $id, postImage: $postImage, description: $description, slug: $slug, checkIn: $checkIn, checkInImage: $checkInImage, subscribers: $subscribers, groupId: $groupId, isActive: $isActive, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, privacy: $privacy, userId: $userId, title: $title, interests: $interests, createdAt: $createdAt, isBan: $isBan, banReason: $banReason, updatedAt: $updatedAt, comments: $comments, combinedCount: $combinedCount, commentCounts: $commentCounts, likeDislike: $likeDislike, likeCounts: $likeCounts, dislikeCounts: $dislikeCounts, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardPeopleDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkInImage, checkInImage) ||
                other.checkInImage == checkInImage) &&
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
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isBan, isBan) || other.isBan == isBan) &&
            (identical(other.banReason, banReason) ||
                other.banReason == banReason) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.combinedCount, combinedCount) ||
                other.combinedCount == combinedCount) &&
            (identical(other.commentCounts, commentCounts) ||
                other.commentCounts == commentCounts) &&
            (identical(other.likeDislike, likeDislike) ||
                other.likeDislike == likeDislike) &&
            (identical(other.likeCounts, likeCounts) ||
                other.likeCounts == likeCounts) &&
            (identical(other.dislikeCounts, dislikeCounts) ||
                other.dislikeCounts == dislikeCounts) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        postImage,
        description,
        slug,
        checkIn,
        checkInImage,
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(groupId),
        isActive,
        gif,
        videoUrl,
        bgColor,
        privacy,
        userId,
        title,
        const DeepCollectionEquality().hash(_interests),
        createdAt,
        isBan,
        banReason,
        updatedAt,
        const DeepCollectionEquality().hash(_comments),
        combinedCount,
        commentCounts,
        likeDislike,
        likeCounts,
        dislikeCounts,
        isFollowing
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardPeopleDataImplCopyWith<_$DashboardPeopleDataImpl> get copyWith =>
      __$$DashboardPeopleDataImplCopyWithImpl<_$DashboardPeopleDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardPeopleDataImplToJson(
      this,
    );
  }
}

abstract class _DashboardPeopleData implements DashboardPeopleData {
  const factory _DashboardPeopleData(
          {@JsonKey(name: "_id") final String? id,
          @JsonKey(name: "postImage") final String? postImage,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "slug") final String? slug,
          @JsonKey(name: "checkIn") final String? checkIn,
          @JsonKey(name: "checkInImage") final String? checkInImage,
          @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
          @JsonKey(name: "groupId") final dynamic groupId,
          @JsonKey(name: "isActive") final bool? isActive,
          @JsonKey(name: "gif") final String? gif,
          @JsonKey(name: "videoUrl") final String? videoUrl,
          @JsonKey(name: "bgColor") final String? bgColor,
          @JsonKey(name: "privacy") final String? privacy,
          @JsonKey(name: "userId") final UserId? userId,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "interests") final List<Interest?>? interests,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "isBan") final bool? isBan,
          @JsonKey(name: "banReason") final String? banReason,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "comments") final List<Comment?>? comments,
          @JsonKey(name: "combinedCount") final int? combinedCount,
          @JsonKey(name: "commentCounts") final int? commentCounts,
          @JsonKey(name: "likeDislike") final LikeDislike? likeDislike,
          @JsonKey(name: "likeCounts") final int? likeCounts,
          @JsonKey(name: "disLikeCounts") final int? dislikeCounts,
          @JsonKey(name: "isFollowing") final bool? isFollowing}) =
      _$DashboardPeopleDataImpl;

  factory _DashboardPeopleData.fromJson(Map<String, dynamic> json) =
      _$DashboardPeopleDataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "postImage")
  String? get postImage;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "checkIn")
  String? get checkIn;
  @override
  @JsonKey(name: "checkInImage")
  String? get checkInImage;
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
  @JsonKey(name: "userId")
  UserId? get userId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "interests")
  List<Interest?>? get interests;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "isBan")
  bool? get isBan;
  @override
  @JsonKey(name: "banReason")
  String? get banReason;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "comments")
  List<Comment?>? get comments;
  @override
  @JsonKey(name: "combinedCount")
  int? get combinedCount;
  @override
  @JsonKey(name: "commentCounts")
  int? get commentCounts;
  @override
  @JsonKey(name: "likeDislike")
  LikeDislike? get likeDislike;
  @override
  @JsonKey(name: "likeCounts")
  int? get likeCounts;
  @override
  @JsonKey(name: "disLikeCounts")
  int? get dislikeCounts;
  @override
  @JsonKey(name: "isFollowing")
  bool? get isFollowing;
  @override
  @JsonKey(ignore: true)
  _$$DashboardPeopleDataImplCopyWith<_$DashboardPeopleDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "postId")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "tutorialId")
  dynamic get tutorialId => throw _privateConstructorUsedError;
  @JsonKey(name: "questionId")
  dynamic get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: "parentId")
  dynamic get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "postId") String? postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "parentId") dynamic parentId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "comment") String? comment,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? tutorialId = freezed,
    Object? questionId = freezed,
    Object? parentId = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "postId") String? postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "parentId") dynamic parentId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "comment") String? comment,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? tutorialId = freezed,
    Object? questionId = freezed,
    Object? parentId = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CommentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
class _$CommentImpl implements _Comment {
  const _$CommentImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "postId") this.postId,
      @JsonKey(name: "tutorialId") this.tutorialId,
      @JsonKey(name: "questionId") this.questionId,
      @JsonKey(name: "parentId") this.parentId,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "comment") this.comment,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "postId")
  final String? postId;
  @override
  @JsonKey(name: "tutorialId")
  final dynamic tutorialId;
  @override
  @JsonKey(name: "questionId")
  final dynamic questionId;
  @override
  @JsonKey(name: "parentId")
  final dynamic parentId;
  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "comment")
  final String? comment;
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
    return 'Comment(id: $id, postId: $postId, tutorialId: $tutorialId, questionId: $questionId, parentId: $parentId, userId: $userId, comment: $comment, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            const DeepCollectionEquality()
                .equals(other.tutorialId, tutorialId) &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
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
      id,
      postId,
      const DeepCollectionEquality().hash(tutorialId),
      const DeepCollectionEquality().hash(questionId),
      const DeepCollectionEquality().hash(parentId),
      userId,
      comment,
      type,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "postId") final String? postId,
      @JsonKey(name: "tutorialId") final dynamic tutorialId,
      @JsonKey(name: "questionId") final dynamic questionId,
      @JsonKey(name: "parentId") final dynamic parentId,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "comment") final String? comment,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "postId")
  String? get postId;
  @override
  @JsonKey(name: "tutorialId")
  dynamic get tutorialId;
  @override
  @JsonKey(name: "questionId")
  dynamic get questionId;
  @override
  @JsonKey(name: "parentId")
  dynamic get parentId;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "comment")
  String? get comment;
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
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserId _$UserIdFromJson(Map<String, dynamic> json) {
  return _UserId.fromJson(json);
}

/// @nodoc
mixin _$UserId {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  dynamic get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "firstName")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "userName")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "isBan")
  bool? get isBan => throw _privateConstructorUsedError;
  @JsonKey(name: "banReason")
  String? get banReason => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "expertise")
  String? get expertise => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest?>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<Follower?>? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  dynamic get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry});
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
    Object? id = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? coverPhoto = freezed,
    Object? profilePhoto = freezed,
    Object? expertise = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower?>?,
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
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry});
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
    Object? id = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? coverPhoto = freezed,
    Object? profilePhoto = freezed,
    Object? expertise = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
  }) {
    return _then(_$UserIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceToken: freezed == deviceToken
          ? _value._deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      followers: freezed == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower?>?,
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
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdImpl implements _UserId {
  const _$UserIdImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "isBan") this.isBan,
      @JsonKey(name: "banReason") this.banReason,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "expertise") this.expertise,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry})
      : _deviceToken = deviceToken,
        _interests = interests,
        _subscribers = subscribers,
        _followers = followers;

  factory _$UserIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "isEmailVerified")
  final bool? isEmailVerified;
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
  @JsonKey(name: "firstName")
  final String? firstName;
  @override
  @JsonKey(name: "lastName")
  final String? lastName;
  @override
  @JsonKey(name: "userName")
  final String? userName;
  @override
  @JsonKey(name: "isBan")
  final bool? isBan;
  @override
  @JsonKey(name: "banReason")
  final String? banReason;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "password")
  final String? password;
  @override
  @JsonKey(name: "coverPhoto")
  final String? coverPhoto;
  @override
  @JsonKey(name: "profilePhoto")
  final String? profilePhoto;
  @override
  @JsonKey(name: "expertise")
  final String? expertise;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "location")
  final String? location;
  final List<Interest?>? _interests;
  @override
  @JsonKey(name: "interests")
  List<Interest?>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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

  final List<Follower?>? _followers;
  @override
  @JsonKey(name: "followers")
  List<Follower?>? get followers {
    final value = _followers;
    if (value == null) return null;
    if (_followers is EqualUnmodifiableListView) return _followers;
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
  @JsonKey(name: "otpExpiry")
  final dynamic otpExpiry;

  @override
  String toString() {
    return 'UserId(id: $id, role: $role, isEmailVerified: $isEmailVerified, productId: $productId, deviceToken: $deviceToken, firstName: $firstName, lastName: $lastName, userName: $userName, isBan: $isBan, banReason: $banReason, email: $email, phone: $phone, password: $password, coverPhoto: $coverPhoto, profilePhoto: $profilePhoto, expertise: $expertise, description: $description, location: $location, interests: $interests, subscribers: $subscribers, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, otpExpiry: $otpExpiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other._deviceToken, _deviceToken) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.isBan, isBan) || other.isBan == isBan) &&
            (identical(other.banReason, banReason) ||
                other.banReason == banReason) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.expertise, expertise) ||
                other.expertise == expertise) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality().equals(other.otpExpiry, otpExpiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        role,
        isEmailVerified,
        const DeepCollectionEquality().hash(productId),
        const DeepCollectionEquality().hash(_deviceToken),
        firstName,
        lastName,
        userName,
        isBan,
        banReason,
        email,
        phone,
        password,
        coverPhoto,
        profilePhoto,
        expertise,
        description,
        location,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_followers),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(otp),
        const DeepCollectionEquality().hash(otpExpiry)
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
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "role") final String? role,
      @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
      @JsonKey(name: "productId") final dynamic productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "firstName") final String? firstName,
      @JsonKey(name: "lastName") final String? lastName,
      @JsonKey(name: "userName") final String? userName,
      @JsonKey(name: "isBan") final bool? isBan,
      @JsonKey(name: "banReason") final String? banReason,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "password") final String? password,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "profilePhoto") final String? profilePhoto,
      @JsonKey(name: "expertise") final String? expertise,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "otp") final dynamic otp,
      @JsonKey(name: "otpExpiry") final dynamic otpExpiry}) = _$UserIdImpl;

  factory _UserId.fromJson(Map<String, dynamic> json) = _$UserIdImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified;
  @override
  @JsonKey(name: "productId")
  dynamic get productId;
  @override
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken;
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
  @JsonKey(name: "isBan")
  bool? get isBan;
  @override
  @JsonKey(name: "banReason")
  String? get banReason;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "password")
  String? get password;
  @override
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto;
  @override
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto;
  @override
  @JsonKey(name: "expertise")
  String? get expertise;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "interests")
  List<Interest?>? get interests;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
  @override
  @JsonKey(name: "followers")
  List<Follower?>? get followers;
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
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry;
  @override
  @JsonKey(ignore: true)
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Follower _$FollowerFromJson(Map<String, dynamic> json) {
  return _Follower.fromJson(json);
}

/// @nodoc
mixin _$Follower {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowerCopyWith<Follower> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowerCopyWith<$Res> {
  factory $FollowerCopyWith(Follower value, $Res Function(Follower) then) =
      _$FollowerCopyWithImpl<$Res, Follower>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class _$FollowerCopyWithImpl<$Res, $Val extends Follower>
    implements $FollowerCopyWith<$Res> {
  _$FollowerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowerImplCopyWith<$Res>
    implements $FollowerCopyWith<$Res> {
  factory _$$FollowerImplCopyWith(
          _$FollowerImpl value, $Res Function(_$FollowerImpl) then) =
      __$$FollowerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class __$$FollowerImplCopyWithImpl<$Res>
    extends _$FollowerCopyWithImpl<$Res, _$FollowerImpl>
    implements _$$FollowerImplCopyWith<$Res> {
  __$$FollowerImplCopyWithImpl(
      _$FollowerImpl _value, $Res Function(_$FollowerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$FollowerImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowerImpl implements _Follower {
  const _$FollowerImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId});

  factory _$FollowerImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowerImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "userId")
  final String? userId;

  @override
  String toString() {
    return 'Follower(status: $status, id: $id, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowerImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, id, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowerImplCopyWith<_$FollowerImpl> get copyWith =>
      __$$FollowerImplCopyWithImpl<_$FollowerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowerImplToJson(
      this,
    );
  }
}

abstract class _Follower implements Follower {
  const factory _Follower(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userId") final String? userId}) = _$FollowerImpl;

  factory _Follower.fromJson(Map<String, dynamic> json) =
      _$FollowerImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$FollowerImplCopyWith<_$FollowerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_public_posts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPublicPostsRequestModel _$GetPublicPostsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetPublicPostsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetPublicPostsRequestModel {
  @JsonKey(name: "searchKey")
  String? get searchKey => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  String? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "timeFilter")
  String? get timeFilter => throw _privateConstructorUsedError;
  @JsonKey(name: "feedFilter")
  String? get feedFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPublicPostsRequestModelCopyWith<GetPublicPostsRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPublicPostsRequestModelCopyWith<$Res> {
  factory $GetPublicPostsRequestModelCopyWith(GetPublicPostsRequestModel value,
          $Res Function(GetPublicPostsRequestModel) then) =
      _$GetPublicPostsRequestModelCopyWithImpl<$Res,
          GetPublicPostsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "searchKey") String? searchKey,
      @JsonKey(name: "interests") String? interests,
      @JsonKey(name: "timeFilter") String? timeFilter,
      @JsonKey(name: "feedFilter") String? feedFilter});
}

/// @nodoc
class _$GetPublicPostsRequestModelCopyWithImpl<$Res,
        $Val extends GetPublicPostsRequestModel>
    implements $GetPublicPostsRequestModelCopyWith<$Res> {
  _$GetPublicPostsRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetPublicPostsRequestModelImplCopyWith<$Res>
    implements $GetPublicPostsRequestModelCopyWith<$Res> {
  factory _$$GetPublicPostsRequestModelImplCopyWith(
          _$GetPublicPostsRequestModelImpl value,
          $Res Function(_$GetPublicPostsRequestModelImpl) then) =
      __$$GetPublicPostsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "searchKey") String? searchKey,
      @JsonKey(name: "interests") String? interests,
      @JsonKey(name: "timeFilter") String? timeFilter,
      @JsonKey(name: "feedFilter") String? feedFilter});
}

/// @nodoc
class __$$GetPublicPostsRequestModelImplCopyWithImpl<$Res>
    extends _$GetPublicPostsRequestModelCopyWithImpl<$Res,
        _$GetPublicPostsRequestModelImpl>
    implements _$$GetPublicPostsRequestModelImplCopyWith<$Res> {
  __$$GetPublicPostsRequestModelImplCopyWithImpl(
      _$GetPublicPostsRequestModelImpl _value,
      $Res Function(_$GetPublicPostsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
    Object? interests = freezed,
    Object? timeFilter = freezed,
    Object? feedFilter = freezed,
  }) {
    return _then(_$GetPublicPostsRequestModelImpl(
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
class _$GetPublicPostsRequestModelImpl implements _GetPublicPostsRequestModel {
  const _$GetPublicPostsRequestModelImpl(
      {@JsonKey(name: "searchKey") this.searchKey,
      @JsonKey(name: "interests") this.interests,
      @JsonKey(name: "timeFilter") this.timeFilter,
      @JsonKey(name: "feedFilter") this.feedFilter});

  factory _$GetPublicPostsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetPublicPostsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "searchKey")
  final String? searchKey;
  @override
  @JsonKey(name: "interests")
  final String? interests;
  @override
  @JsonKey(name: "timeFilter")
  final String? timeFilter;
  @override
  @JsonKey(name: "feedFilter")
  final String? feedFilter;

  @override
  String toString() {
    return 'GetPublicPostsRequestModel(searchKey: $searchKey, interests: $interests, timeFilter: $timeFilter, feedFilter: $feedFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPublicPostsRequestModelImpl &&
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
  _$$GetPublicPostsRequestModelImplCopyWith<_$GetPublicPostsRequestModelImpl>
      get copyWith => __$$GetPublicPostsRequestModelImplCopyWithImpl<
          _$GetPublicPostsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPublicPostsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetPublicPostsRequestModel
    implements GetPublicPostsRequestModel {
  const factory _GetPublicPostsRequestModel(
          {@JsonKey(name: "searchKey") final String? searchKey,
          @JsonKey(name: "interests") final String? interests,
          @JsonKey(name: "timeFilter") final String? timeFilter,
          @JsonKey(name: "feedFilter") final String? feedFilter}) =
      _$GetPublicPostsRequestModelImpl;

  factory _GetPublicPostsRequestModel.fromJson(Map<String, dynamic> json) =
      _$GetPublicPostsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "searchKey")
  String? get searchKey;
  @override
  @JsonKey(name: "interests")
  String? get interests;
  @override
  @JsonKey(name: "timeFilter")
  String? get timeFilter;
  @override
  @JsonKey(name: "feedFilter")
  String? get feedFilter;
  @override
  @JsonKey(ignore: true)
  _$$GetPublicPostsRequestModelImplCopyWith<_$GetPublicPostsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetPublicPostsResponseModel _$GetPublicPostsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetPublicPostsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetPublicPostsResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<DashboardGroupModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPublicPostsResponseModelCopyWith<GetPublicPostsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPublicPostsResponseModelCopyWith<$Res> {
  factory $GetPublicPostsResponseModelCopyWith(
          GetPublicPostsResponseModel value,
          $Res Function(GetPublicPostsResponseModel) then) =
      _$GetPublicPostsResponseModelCopyWithImpl<$Res,
          GetPublicPostsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<DashboardGroupModel>? data});
}

/// @nodoc
class _$GetPublicPostsResponseModelCopyWithImpl<$Res,
        $Val extends GetPublicPostsResponseModel>
    implements $GetPublicPostsResponseModelCopyWith<$Res> {
  _$GetPublicPostsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<DashboardGroupModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPublicPostsResponseModelImplCopyWith<$Res>
    implements $GetPublicPostsResponseModelCopyWith<$Res> {
  factory _$$GetPublicPostsResponseModelImplCopyWith(
          _$GetPublicPostsResponseModelImpl value,
          $Res Function(_$GetPublicPostsResponseModelImpl) then) =
      __$$GetPublicPostsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<DashboardGroupModel>? data});
}

/// @nodoc
class __$$GetPublicPostsResponseModelImplCopyWithImpl<$Res>
    extends _$GetPublicPostsResponseModelCopyWithImpl<$Res,
        _$GetPublicPostsResponseModelImpl>
    implements _$$GetPublicPostsResponseModelImplCopyWith<$Res> {
  __$$GetPublicPostsResponseModelImplCopyWithImpl(
      _$GetPublicPostsResponseModelImpl _value,
      $Res Function(_$GetPublicPostsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetPublicPostsResponseModelImpl(
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
              as List<DashboardGroupModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPublicPostsResponseModelImpl
    implements _GetPublicPostsResponseModel {
  const _$GetPublicPostsResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<DashboardGroupModel>? data})
      : _data = data;

  factory _$GetPublicPostsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetPublicPostsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<DashboardGroupModel>? _data;
  @override
  @JsonKey(name: "data")
  List<DashboardGroupModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetPublicPostsResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPublicPostsResponseModelImpl &&
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
  _$$GetPublicPostsResponseModelImplCopyWith<_$GetPublicPostsResponseModelImpl>
      get copyWith => __$$GetPublicPostsResponseModelImplCopyWithImpl<
          _$GetPublicPostsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPublicPostsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetPublicPostsResponseModel
    implements GetPublicPostsResponseModel {
  const factory _GetPublicPostsResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<DashboardGroupModel>? data}) =
      _$GetPublicPostsResponseModelImpl;

  factory _GetPublicPostsResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetPublicPostsResponseModelImpl.fromJson;

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
  List<DashboardGroupModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPublicPostsResponseModelImplCopyWith<_$GetPublicPostsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DashboardGroupModel _$DashboardGroupModelFromJson(Map<String, dynamic> json) {
  return _DashboardGroupModel.fromJson(json);
}

/// @nodoc
mixin _$DashboardGroupModel {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
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
  List<Interest?>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  UserId? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "postImage")
  String? get postImage => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "isBan")
  bool? get isBan => throw _privateConstructorUsedError;
  @JsonKey(name: "banReason")
  String? get banReason => throw _privateConstructorUsedError;
  @JsonKey(name: "checkIn")
  String? get checkIn => throw _privateConstructorUsedError;
  @JsonKey(name: "checkInImage")
  String? get checkInImage => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "groupData")
  GroupData? get groupData => throw _privateConstructorUsedError;
  @JsonKey(name: "commentCounts")
  int? get commentCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "likeCounts")
  int? get likeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "disLikeCounts")
  int? get dislikeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "likeDislike")
  LikeDislike? get likeDislike => throw _privateConstructorUsedError;
  @JsonKey(name: "follower")
  int? get follower => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "averageRating")
  double? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: "isFollowing")
  bool? get isFollowing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardGroupModelCopyWith<DashboardGroupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardGroupModelCopyWith<$Res> {
  factory $DashboardGroupModelCopyWith(
          DashboardGroupModel value, $Res Function(DashboardGroupModel) then) =
      _$DashboardGroupModelCopyWithImpl<$Res, DashboardGroupModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "checkIn") String? checkIn,
      @JsonKey(name: "checkInImage") String? checkInImage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "groupData") GroupData? groupData,
      @JsonKey(name: "commentCounts") int? commentCounts,
      @JsonKey(name: "likeCounts") int? likeCounts,
      @JsonKey(name: "disLikeCounts") int? dislikeCounts,
      @JsonKey(name: "likeDislike") LikeDislike? likeDislike,
      @JsonKey(name: "follower") int? follower,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "averageRating") double? averageRating,
      @JsonKey(name: "isFollowing") bool? isFollowing});

  $UserIdCopyWith<$Res>? get userId;
  $GroupDataCopyWith<$Res>? get groupData;
  $LikeDislikeCopyWith<$Res>? get likeDislike;
}

/// @nodoc
class _$DashboardGroupModelCopyWithImpl<$Res, $Val extends DashboardGroupModel>
    implements $DashboardGroupModelCopyWith<$Res> {
  _$DashboardGroupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subscribers = freezed,
    Object? groupId = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? interests = freezed,
    Object? userId = freezed,
    Object? postImage = freezed,
    Object? slug = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? groupData = freezed,
    Object? commentCounts = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
    Object? likeDislike = freezed,
    Object? follower = freezed,
    Object? rating = freezed,
    Object? averageRating = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
              as List<Interest?>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      commentCounts: freezed == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeDislike: freezed == likeDislike
          ? _value.likeDislike
          : likeDislike // ignore: cast_nullable_to_non_nullable
              as LikeDislike?,
      follower: freezed == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
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
  $GroupDataCopyWith<$Res>? get groupData {
    if (_value.groupData == null) {
      return null;
    }

    return $GroupDataCopyWith<$Res>(_value.groupData!, (value) {
      return _then(_value.copyWith(groupData: value) as $Val);
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
abstract class _$$DashboardGroupModelImplCopyWith<$Res>
    implements $DashboardGroupModelCopyWith<$Res> {
  factory _$$DashboardGroupModelImplCopyWith(_$DashboardGroupModelImpl value,
          $Res Function(_$DashboardGroupModelImpl) then) =
      __$$DashboardGroupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "checkIn") String? checkIn,
      @JsonKey(name: "checkInImage") String? checkInImage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "groupData") GroupData? groupData,
      @JsonKey(name: "commentCounts") int? commentCounts,
      @JsonKey(name: "likeCounts") int? likeCounts,
      @JsonKey(name: "disLikeCounts") int? dislikeCounts,
      @JsonKey(name: "likeDislike") LikeDislike? likeDislike,
      @JsonKey(name: "follower") int? follower,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "averageRating") double? averageRating,
      @JsonKey(name: "isFollowing") bool? isFollowing});

  @override
  $UserIdCopyWith<$Res>? get userId;
  @override
  $GroupDataCopyWith<$Res>? get groupData;
  @override
  $LikeDislikeCopyWith<$Res>? get likeDislike;
}

/// @nodoc
class __$$DashboardGroupModelImplCopyWithImpl<$Res>
    extends _$DashboardGroupModelCopyWithImpl<$Res, _$DashboardGroupModelImpl>
    implements _$$DashboardGroupModelImplCopyWith<$Res> {
  __$$DashboardGroupModelImplCopyWithImpl(_$DashboardGroupModelImpl _value,
      $Res Function(_$DashboardGroupModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? subscribers = freezed,
    Object? groupId = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? interests = freezed,
    Object? userId = freezed,
    Object? postImage = freezed,
    Object? slug = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? groupData = freezed,
    Object? commentCounts = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
    Object? likeDislike = freezed,
    Object? follower = freezed,
    Object? rating = freezed,
    Object? averageRating = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_$DashboardGroupModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
              as List<Interest?>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkInImage: freezed == checkInImage
          ? _value.checkInImage
          : checkInImage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      commentCounts: freezed == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeDislike: freezed == likeDislike
          ? _value.likeDislike
          : likeDislike // ignore: cast_nullable_to_non_nullable
              as LikeDislike?,
      follower: freezed == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardGroupModelImpl implements _DashboardGroupModel {
  const _$DashboardGroupModelImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "isActive") this.isActive,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "postImage") this.postImage,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "isBan") this.isBan,
      @JsonKey(name: "banReason") this.banReason,
      @JsonKey(name: "checkIn") this.checkIn,
      @JsonKey(name: "checkInImage") this.checkInImage,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "groupData") this.groupData,
      @JsonKey(name: "commentCounts") this.commentCounts,
      @JsonKey(name: "likeCounts") this.likeCounts,
      @JsonKey(name: "disLikeCounts") this.dislikeCounts,
      @JsonKey(name: "likeDislike") this.likeDislike,
      @JsonKey(name: "follower") this.follower,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "averageRating") this.averageRating,
      @JsonKey(name: "isFollowing") this.isFollowing})
      : _subscribers = subscribers,
        _interests = interests;

  factory _$DashboardGroupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardGroupModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
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
  final String? groupId;
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
  @JsonKey(name: "userId")
  final UserId? userId;
  @override
  @JsonKey(name: "postImage")
  final String? postImage;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "isBan")
  final bool? isBan;
  @override
  @JsonKey(name: "banReason")
  final String? banReason;
  @override
  @JsonKey(name: "checkIn")
  final String? checkIn;
  @override
  @JsonKey(name: "checkInImage")
  final String? checkInImage;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "groupData")
  final GroupData? groupData;
  @override
  @JsonKey(name: "commentCounts")
  final int? commentCounts;
  @override
  @JsonKey(name: "likeCounts")
  final int? likeCounts;
  @override
  @JsonKey(name: "disLikeCounts")
  final int? dislikeCounts;
  @override
  @JsonKey(name: "likeDislike")
  final LikeDislike? likeDislike;
  @override
  @JsonKey(name: "follower")
  final int? follower;
  @override
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "averageRating")
  final double? averageRating;
  @override
  @JsonKey(name: "isFollowing")
  final bool? isFollowing;

  @override
  String toString() {
    return 'DashboardGroupModel(id: $id, subscribers: $subscribers, groupId: $groupId, isActive: $isActive, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, privacy: $privacy, interests: $interests, userId: $userId, postImage: $postImage, slug: $slug, isBan: $isBan, banReason: $banReason, checkIn: $checkIn, checkInImage: $checkInImage, title: $title, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, groupData: $groupData, commentCounts: $commentCounts, likeCounts: $likeCounts, dislikeCounts: $dislikeCounts, likeDislike: $likeDislike, follower: $follower, rating: $rating, averageRating: $averageRating, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardGroupModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.gif, gif) || other.gif == gif) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.isBan, isBan) || other.isBan == isBan) &&
            (identical(other.banReason, banReason) ||
                other.banReason == banReason) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkInImage, checkInImage) ||
                other.checkInImage == checkInImage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.groupData, groupData) ||
                other.groupData == groupData) &&
            (identical(other.commentCounts, commentCounts) ||
                other.commentCounts == commentCounts) &&
            (identical(other.likeCounts, likeCounts) ||
                other.likeCounts == likeCounts) &&
            (identical(other.dislikeCounts, dislikeCounts) ||
                other.dislikeCounts == dislikeCounts) &&
            (identical(other.likeDislike, likeDislike) ||
                other.likeDislike == likeDislike) &&
            (identical(other.follower, follower) ||
                other.follower == follower) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_subscribers),
        groupId,
        isActive,
        gif,
        videoUrl,
        bgColor,
        privacy,
        const DeepCollectionEquality().hash(_interests),
        userId,
        postImage,
        slug,
        isBan,
        banReason,
        checkIn,
        checkInImage,
        title,
        description,
        createdAt,
        updatedAt,
        groupData,
        commentCounts,
        likeCounts,
        dislikeCounts,
        likeDislike,
        follower,
        rating,
        averageRating,
        isFollowing
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardGroupModelImplCopyWith<_$DashboardGroupModelImpl> get copyWith =>
      __$$DashboardGroupModelImplCopyWithImpl<_$DashboardGroupModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardGroupModelImplToJson(
      this,
    );
  }
}

abstract class _DashboardGroupModel implements DashboardGroupModel {
  const factory _DashboardGroupModel(
          {@JsonKey(name: "_id") final String? id,
          @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
          @JsonKey(name: "groupId") final String? groupId,
          @JsonKey(name: "isActive") final bool? isActive,
          @JsonKey(name: "gif") final String? gif,
          @JsonKey(name: "videoUrl") final String? videoUrl,
          @JsonKey(name: "bgColor") final String? bgColor,
          @JsonKey(name: "privacy") final String? privacy,
          @JsonKey(name: "interests") final List<Interest?>? interests,
          @JsonKey(name: "userId") final UserId? userId,
          @JsonKey(name: "postImage") final String? postImage,
          @JsonKey(name: "slug") final String? slug,
          @JsonKey(name: "isBan") final bool? isBan,
          @JsonKey(name: "banReason") final String? banReason,
          @JsonKey(name: "checkIn") final String? checkIn,
          @JsonKey(name: "checkInImage") final String? checkInImage,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "groupData") final GroupData? groupData,
          @JsonKey(name: "commentCounts") final int? commentCounts,
          @JsonKey(name: "likeCounts") final int? likeCounts,
          @JsonKey(name: "disLikeCounts") final int? dislikeCounts,
          @JsonKey(name: "likeDislike") final LikeDislike? likeDislike,
          @JsonKey(name: "follower") final int? follower,
          @JsonKey(name: "rating") final int? rating,
          @JsonKey(name: "averageRating") final double? averageRating,
          @JsonKey(name: "isFollowing") final bool? isFollowing}) =
      _$DashboardGroupModelImpl;

  factory _DashboardGroupModel.fromJson(Map<String, dynamic> json) =
      _$DashboardGroupModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
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
  List<Interest?>? get interests;
  @override
  @JsonKey(name: "userId")
  UserId? get userId;
  @override
  @JsonKey(name: "postImage")
  String? get postImage;
  @override
  @JsonKey(name: "slug")
  String? get slug;
  @override
  @JsonKey(name: "isBan")
  bool? get isBan;
  @override
  @JsonKey(name: "banReason")
  String? get banReason;
  @override
  @JsonKey(name: "checkIn")
  String? get checkIn;
  @override
  @JsonKey(name: "checkInImage")
  String? get checkInImage;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "groupData")
  GroupData? get groupData;
  @override
  @JsonKey(name: "commentCounts")
  int? get commentCounts;
  @override
  @JsonKey(name: "likeCounts")
  int? get likeCounts;
  @override
  @JsonKey(name: "disLikeCounts")
  int? get dislikeCounts;
  @override
  @JsonKey(name: "likeDislike")
  LikeDislike? get likeDislike;
  @override
  @JsonKey(name: "follower")
  int? get follower;
  @override
  @JsonKey(name: "rating")
  int? get rating;
  @override
  @JsonKey(name: "averageRating")
  double? get averageRating;
  @override
  @JsonKey(name: "isFollowing")
  bool? get isFollowing;
  @override
  @JsonKey(ignore: true)
  _$$DashboardGroupModelImplCopyWith<_$DashboardGroupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupData _$GroupDataFromJson(Map<String, dynamic> json) {
  return _GroupData.fromJson(json);
}

/// @nodoc
mixin _$GroupData {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest?>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  String? get privacy => throw _privateConstructorUsedError;
  @JsonKey(name: "one_month_subscription_price")
  int? get oneMonthSubscriptionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "six_month_subscription_price")
  int? get sixMonthSubscriptionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "twelve_month_subscription_price")
  int? get twelveMonthSubscriptionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  dynamic get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "groupPhoto")
  String? get groupPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<Follower>? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "promoCode")
  String? get promoCode => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewer")
  List<Reviewer>? get reviewer => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  int? get discount => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "one_month_subscription_price")
      int? oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      int? sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      int? twelveMonthSubscriptionPrice,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "promoCode") String? promoCode,
      @JsonKey(name: "reviewer") List<Reviewer>? reviewer,
      @JsonKey(name: "discount") int? discount});
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
    Object? oneMonthSubscriptionPrice = freezed,
    Object? sixMonthSubscriptionPrice = freezed,
    Object? twelveMonthSubscriptionPrice = freezed,
    Object? productId = freezed,
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? promoCode = freezed,
    Object? reviewer = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      oneMonthSubscriptionPrice: freezed == oneMonthSubscriptionPrice
          ? _value.oneMonthSubscriptionPrice
          : oneMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      sixMonthSubscriptionPrice: freezed == sixMonthSubscriptionPrice
          ? _value.sixMonthSubscriptionPrice
          : sixMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      twelveMonthSubscriptionPrice: freezed == twelveMonthSubscriptionPrice
          ? _value.twelveMonthSubscriptionPrice
          : twelveMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<Reviewer>?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "one_month_subscription_price")
      int? oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      int? sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      int? twelveMonthSubscriptionPrice,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "promoCode") String? promoCode,
      @JsonKey(name: "reviewer") List<Reviewer>? reviewer,
      @JsonKey(name: "discount") int? discount});
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
    Object? oneMonthSubscriptionPrice = freezed,
    Object? sixMonthSubscriptionPrice = freezed,
    Object? twelveMonthSubscriptionPrice = freezed,
    Object? productId = freezed,
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? promoCode = freezed,
    Object? reviewer = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$GroupDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      oneMonthSubscriptionPrice: freezed == oneMonthSubscriptionPrice
          ? _value.oneMonthSubscriptionPrice
          : oneMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      sixMonthSubscriptionPrice: freezed == sixMonthSubscriptionPrice
          ? _value.sixMonthSubscriptionPrice
          : sixMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      twelveMonthSubscriptionPrice: freezed == twelveMonthSubscriptionPrice
          ? _value.twelveMonthSubscriptionPrice
          : twelveMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      followers: freezed == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewer: freezed == reviewer
          ? _value._reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<Reviewer>?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupDataImpl implements _GroupData {
  const _$GroupDataImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "one_month_subscription_price")
      this.oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      this.sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      this.twelveMonthSubscriptionPrice,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "groupPhoto") this.groupPhoto,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "promoCode") this.promoCode,
      @JsonKey(name: "reviewer") final List<Reviewer>? reviewer,
      @JsonKey(name: "discount") this.discount})
      : _interests = interests,
        _subscribers = subscribers,
        _followers = followers,
        _reviewer = reviewer;

  factory _$GroupDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupDataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
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
  @JsonKey(name: "privacy")
  final String? privacy;
  @override
  @JsonKey(name: "one_month_subscription_price")
  final int? oneMonthSubscriptionPrice;
  @override
  @JsonKey(name: "six_month_subscription_price")
  final int? sixMonthSubscriptionPrice;
  @override
  @JsonKey(name: "twelve_month_subscription_price")
  final int? twelveMonthSubscriptionPrice;
  @override
  @JsonKey(name: "productId")
  final dynamic productId;
  @override
  @JsonKey(name: "groupPhoto")
  final String? groupPhoto;
  @override
  @JsonKey(name: "coverPhoto")
  final String? coverPhoto;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "userId")
  final String? userId;
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

  final List<Follower>? _followers;
  @override
  @JsonKey(name: "followers")
  List<Follower>? get followers {
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
  @JsonKey(name: "promoCode")
  final String? promoCode;
  final List<Reviewer>? _reviewer;
  @override
  @JsonKey(name: "reviewer")
  List<Reviewer>? get reviewer {
    final value = _reviewer;
    if (value == null) return null;
    if (_reviewer is EqualUnmodifiableListView) return _reviewer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "discount")
  final int? discount;

  @override
  String toString() {
    return 'GroupData(id: $id, interests: $interests, privacy: $privacy, oneMonthSubscriptionPrice: $oneMonthSubscriptionPrice, sixMonthSubscriptionPrice: $sixMonthSubscriptionPrice, twelveMonthSubscriptionPrice: $twelveMonthSubscriptionPrice, productId: $productId, groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, name: $name, description: $description, location: $location, userId: $userId, subscribers: $subscribers, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt, promoCode: $promoCode, reviewer: $reviewer, discount: $discount)';
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
            (identical(other.oneMonthSubscriptionPrice,
                    oneMonthSubscriptionPrice) ||
                other.oneMonthSubscriptionPrice == oneMonthSubscriptionPrice) &&
            (identical(other.sixMonthSubscriptionPrice,
                    sixMonthSubscriptionPrice) ||
                other.sixMonthSubscriptionPrice == sixMonthSubscriptionPrice) &&
            (identical(other.twelveMonthSubscriptionPrice,
                    twelveMonthSubscriptionPrice) ||
                other.twelveMonthSubscriptionPrice ==
                    twelveMonthSubscriptionPrice) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
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
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            const DeepCollectionEquality().equals(other._reviewer, _reviewer) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_interests),
        privacy,
        oneMonthSubscriptionPrice,
        sixMonthSubscriptionPrice,
        twelveMonthSubscriptionPrice,
        const DeepCollectionEquality().hash(productId),
        groupPhoto,
        coverPhoto,
        name,
        description,
        location,
        userId,
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_followers),
        createdAt,
        updatedAt,
        promoCode,
        const DeepCollectionEquality().hash(_reviewer),
        discount
      ]);

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
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "privacy") final String? privacy,
      @JsonKey(name: "one_month_subscription_price")
      final int? oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      final int? sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      final int? twelveMonthSubscriptionPrice,
      @JsonKey(name: "productId") final dynamic productId,
      @JsonKey(name: "groupPhoto") final String? groupPhoto,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "promoCode") final String? promoCode,
      @JsonKey(name: "reviewer") final List<Reviewer>? reviewer,
      @JsonKey(name: "discount") final int? discount}) = _$GroupDataImpl;

  factory _GroupData.fromJson(Map<String, dynamic> json) =
      _$GroupDataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "interests")
  List<Interest?>? get interests;
  @override
  @JsonKey(name: "privacy")
  String? get privacy;
  @override
  @JsonKey(name: "one_month_subscription_price")
  int? get oneMonthSubscriptionPrice;
  @override
  @JsonKey(name: "six_month_subscription_price")
  int? get sixMonthSubscriptionPrice;
  @override
  @JsonKey(name: "twelve_month_subscription_price")
  int? get twelveMonthSubscriptionPrice;
  @override
  @JsonKey(name: "productId")
  dynamic get productId;
  @override
  @JsonKey(name: "groupPhoto")
  String? get groupPhoto;
  @override
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
  @override
  @JsonKey(name: "followers")
  List<Follower>? get followers;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "promoCode")
  String? get promoCode;
  @override
  @JsonKey(name: "reviewer")
  List<Reviewer>? get reviewer;
  @override
  @JsonKey(name: "discount")
  int? get discount;
  @override
  @JsonKey(ignore: true)
  _$$GroupDataImplCopyWith<_$GroupDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LikeDislike _$LikeDislikeFromJson(Map<String, dynamic> json) {
  return _LikeDislike.fromJson(json);
}

/// @nodoc
mixin _$LikeDislike {
  @JsonKey(name: "postId")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "tutorialId")
  dynamic get tutorialId => throw _privateConstructorUsedError;
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
  $LikeDislikeCopyWith<LikeDislike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeDislikeCopyWith<$Res> {
  factory $LikeDislikeCopyWith(
          LikeDislike value, $Res Function(LikeDislike) then) =
      _$LikeDislikeCopyWithImpl<$Res, LikeDislike>;
  @useResult
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
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
class _$LikeDislikeCopyWithImpl<$Res, $Val extends LikeDislike>
    implements $LikeDislikeCopyWith<$Res> {
  _$LikeDislikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? tutorialId = freezed,
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
              as String?,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$LikeDislikeImplCopyWith<$Res>
    implements $LikeDislikeCopyWith<$Res> {
  factory _$$LikeDislikeImplCopyWith(
          _$LikeDislikeImpl value, $Res Function(_$LikeDislikeImpl) then) =
      __$$LikeDislikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
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
class __$$LikeDislikeImplCopyWithImpl<$Res>
    extends _$LikeDislikeCopyWithImpl<$Res, _$LikeDislikeImpl>
    implements _$$LikeDislikeImplCopyWith<$Res> {
  __$$LikeDislikeImplCopyWithImpl(
      _$LikeDislikeImpl _value, $Res Function(_$LikeDislikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? tutorialId = freezed,
    Object? questionId = freezed,
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$LikeDislikeImpl(
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
class _$LikeDislikeImpl implements _LikeDislike {
  const _$LikeDislikeImpl(
      {@JsonKey(name: "postId") this.postId,
      @JsonKey(name: "tutorialId") this.tutorialId,
      @JsonKey(name: "questionId") this.questionId,
      @JsonKey(name: "isLike") this.isLike,
      @JsonKey(name: "isDislike") this.isDislike,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$LikeDislikeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeDislikeImplFromJson(json);

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
    return 'LikeDislike(postId: $postId, tutorialId: $tutorialId, questionId: $questionId, isLike: $isLike, isDislike: $isDislike, id: $id, userId: $userId, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeDislikeImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            const DeepCollectionEquality()
                .equals(other.tutorialId, tutorialId) &&
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
      postId,
      const DeepCollectionEquality().hash(tutorialId),
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
  _$$LikeDislikeImplCopyWith<_$LikeDislikeImpl> get copyWith =>
      __$$LikeDislikeImplCopyWithImpl<_$LikeDislikeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeDislikeImplToJson(
      this,
    );
  }
}

abstract class _LikeDislike implements LikeDislike {
  const factory _LikeDislike(
          {@JsonKey(name: "postId") final String? postId,
          @JsonKey(name: "tutorialId") final dynamic tutorialId,
          @JsonKey(name: "questionId") final dynamic questionId,
          @JsonKey(name: "isLike") final bool? isLike,
          @JsonKey(name: "isDislike") final bool? isDislike,
          @JsonKey(name: "_id") final String? id,
          @JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt}) =
      _$LikeDislikeImpl;

  factory _LikeDislike.fromJson(Map<String, dynamic> json) =
      _$LikeDislikeImpl.fromJson;

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
  _$$LikeDislikeImplCopyWith<_$LikeDislikeImpl> get copyWith =>
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
  @JsonKey(name: "firstName")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "userName")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "expertise")
  String? get expertise => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "isBan")
  bool? get isBan => throw _privateConstructorUsedError;
  @JsonKey(name: "banReason")
  String? get banReason => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  dynamic get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: "accountId")
  String? get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: "accountLink")
  String? get accountLink => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest?>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto => throw _privateConstructorUsedError;

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
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "accountId") String? accountId,
      @JsonKey(name: "accountLink") String? accountLink,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "profilePhoto") String? profilePhoto});
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
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? expertise = freezed,
    Object? phone = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? password = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? accountId = freezed,
    Object? accountLink = freezed,
    Object? customerId = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? coverPhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? profilePhoto = freezed,
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
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
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
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountLink: freezed == accountLink
          ? _value.accountLink
          : accountLink // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") String? banReason,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "accountId") String? accountId,
      @JsonKey(name: "accountLink") String? accountLink,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "profilePhoto") String? profilePhoto});
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
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? expertise = freezed,
    Object? phone = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? password = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? accountId = freezed,
    Object? accountLink = freezed,
    Object? customerId = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? coverPhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? profilePhoto = freezed,
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
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
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
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountLink: freezed == accountLink
          ? _value.accountLink
          : accountLink // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "expertise") this.expertise,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "isBan") this.isBan,
      @JsonKey(name: "banReason") this.banReason,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry,
      @JsonKey(name: "accountId") this.accountId,
      @JsonKey(name: "accountLink") this.accountLink,
      @JsonKey(name: "customerId") this.customerId,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "profilePhoto") this.profilePhoto})
      : _interests = interests,
        _subscribers = subscribers;

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
  @JsonKey(name: "expertise")
  final String? expertise;
  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "isBan")
  final bool? isBan;
  @override
  @JsonKey(name: "banReason")
  final String? banReason;
  @override
  @JsonKey(name: "password")
  final String? password;
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
  @JsonKey(name: "accountId")
  final String? accountId;
  @override
  @JsonKey(name: "accountLink")
  final String? accountLink;
  @override
  @JsonKey(name: "customerId")
  final String? customerId;
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

  @override
  @JsonKey(name: "coverPhoto")
  final String? coverPhoto;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "profilePhoto")
  final String? profilePhoto;

  @override
  String toString() {
    return 'UserId(id: $id, role: $role, isEmailVerified: $isEmailVerified, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, expertise: $expertise, phone: $phone, isBan: $isBan, banReason: $banReason, password: $password, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, otpExpiry: $otpExpiry, accountId: $accountId, accountLink: $accountLink, customerId: $customerId, interests: $interests, subscribers: $subscribers, coverPhoto: $coverPhoto, description: $description, location: $location, profilePhoto: $profilePhoto)';
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
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.expertise, expertise) ||
                other.expertise == expertise) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isBan, isBan) || other.isBan == isBan) &&
            (identical(other.banReason, banReason) ||
                other.banReason == banReason) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality().equals(other.otpExpiry, otpExpiry) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.accountLink, accountLink) ||
                other.accountLink == accountLink) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        role,
        isEmailVerified,
        firstName,
        lastName,
        userName,
        email,
        expertise,
        phone,
        isBan,
        banReason,
        password,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(otp),
        const DeepCollectionEquality().hash(otpExpiry),
        accountId,
        accountLink,
        customerId,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_subscribers),
        coverPhoto,
        description,
        location,
        profilePhoto
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
          @JsonKey(name: "firstName") final String? firstName,
          @JsonKey(name: "lastName") final String? lastName,
          @JsonKey(name: "userName") final String? userName,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "expertise") final String? expertise,
          @JsonKey(name: "phone") final String? phone,
          @JsonKey(name: "isBan") final bool? isBan,
          @JsonKey(name: "banReason") final String? banReason,
          @JsonKey(name: "password") final String? password,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "otp") final dynamic otp,
          @JsonKey(name: "otpExpiry") final dynamic otpExpiry,
          @JsonKey(name: "accountId") final String? accountId,
          @JsonKey(name: "accountLink") final String? accountLink,
          @JsonKey(name: "customerId") final String? customerId,
          @JsonKey(name: "interests") final List<Interest?>? interests,
          @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
          @JsonKey(name: "coverPhoto") final String? coverPhoto,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "location") final String? location,
          @JsonKey(name: "profilePhoto") final String? profilePhoto}) =
      _$UserIdImpl;

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
  @JsonKey(name: "expertise")
  String? get expertise;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "isBan")
  bool? get isBan;
  @override
  @JsonKey(name: "banReason")
  String? get banReason;
  @override
  @JsonKey(name: "password")
  String? get password;
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
  @JsonKey(name: "accountId")
  String? get accountId;
  @override
  @JsonKey(name: "accountLink")
  String? get accountLink;
  @override
  @JsonKey(name: "customerId")
  String? get customerId;
  @override
  @JsonKey(name: "interests")
  List<Interest?>? get interests;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
  @override
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto;
  @override
  @JsonKey(ignore: true)
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reviewer _$ReviewerFromJson(Map<String, dynamic> json) {
  return _Reviewer.fromJson(json);
}

/// @nodoc
mixin _$Reviewer {
  @JsonKey(name: "review")
  dynamic get review => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  dynamic get title => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewerCopyWith<Reviewer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewerCopyWith<$Res> {
  factory $ReviewerCopyWith(Reviewer value, $Res Function(Reviewer) then) =
      _$ReviewerCopyWithImpl<$Res, Reviewer>;
  @useResult
  $Res call(
      {@JsonKey(name: "review") dynamic review,
      @JsonKey(name: "title") dynamic title,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class _$ReviewerCopyWithImpl<$Res, $Val extends Reviewer>
    implements $ReviewerCopyWith<$Res> {
  _$ReviewerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? review = freezed,
    Object? title = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? rating = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewerImplCopyWith<$Res>
    implements $ReviewerCopyWith<$Res> {
  factory _$$ReviewerImplCopyWith(
          _$ReviewerImpl value, $Res Function(_$ReviewerImpl) then) =
      __$$ReviewerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "review") dynamic review,
      @JsonKey(name: "title") dynamic title,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "userId") String? userId});
}

/// @nodoc
class __$$ReviewerImplCopyWithImpl<$Res>
    extends _$ReviewerCopyWithImpl<$Res, _$ReviewerImpl>
    implements _$$ReviewerImplCopyWith<$Res> {
  __$$ReviewerImplCopyWithImpl(
      _$ReviewerImpl _value, $Res Function(_$ReviewerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? review = freezed,
    Object? title = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? rating = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$ReviewerImpl(
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewerImpl implements _Reviewer {
  const _$ReviewerImpl(
      {@JsonKey(name: "review") this.review,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "userId") this.userId});

  factory _$ReviewerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewerImplFromJson(json);

  @override
  @JsonKey(name: "review")
  final dynamic review;
  @override
  @JsonKey(name: "title")
  final dynamic title;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "userId")
  final String? userId;

  @override
  String toString() {
    return 'Reviewer(review: $review, title: $title, id: $id, name: $name, email: $email, rating: $rating, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewerImpl &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(review),
      const DeepCollectionEquality().hash(title),
      id,
      name,
      email,
      rating,
      userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewerImplCopyWith<_$ReviewerImpl> get copyWith =>
      __$$ReviewerImplCopyWithImpl<_$ReviewerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewerImplToJson(
      this,
    );
  }
}

abstract class _Reviewer implements Reviewer {
  const factory _Reviewer(
      {@JsonKey(name: "review") final dynamic review,
      @JsonKey(name: "title") final dynamic title,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "rating") final int? rating,
      @JsonKey(name: "userId") final String? userId}) = _$ReviewerImpl;

  factory _Reviewer.fromJson(Map<String, dynamic> json) =
      _$ReviewerImpl.fromJson;

  @override
  @JsonKey(name: "review")
  dynamic get review;
  @override
  @JsonKey(name: "title")
  dynamic get title;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "rating")
  int? get rating;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$ReviewerImplCopyWith<_$ReviewerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_people_without_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllPeopleWithoutLoginRequestModel
    _$GetAllPeopleWithoutLoginRequestModelFromJson(Map<String, dynamic> json) {
  return _GetAllPeopleWithoutLoginRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllPeopleWithoutLoginRequestModel {
  String? get searchKey => throw _privateConstructorUsedError;
  String? get interests => throw _privateConstructorUsedError;
  String? get timeFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllPeopleWithoutLoginRequestModelCopyWith<
          GetAllPeopleWithoutLoginRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllPeopleWithoutLoginRequestModelCopyWith<$Res> {
  factory $GetAllPeopleWithoutLoginRequestModelCopyWith(
          GetAllPeopleWithoutLoginRequestModel value,
          $Res Function(GetAllPeopleWithoutLoginRequestModel) then) =
      _$GetAllPeopleWithoutLoginRequestModelCopyWithImpl<$Res,
          GetAllPeopleWithoutLoginRequestModel>;
  @useResult
  $Res call({String? searchKey, String? interests, String? timeFilter});
}

/// @nodoc
class _$GetAllPeopleWithoutLoginRequestModelCopyWithImpl<$Res,
        $Val extends GetAllPeopleWithoutLoginRequestModel>
    implements $GetAllPeopleWithoutLoginRequestModelCopyWith<$Res> {
  _$GetAllPeopleWithoutLoginRequestModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllPeopleWithoutLoginRequestModelImplCopyWith<$Res>
    implements $GetAllPeopleWithoutLoginRequestModelCopyWith<$Res> {
  factory _$$GetAllPeopleWithoutLoginRequestModelImplCopyWith(
          _$GetAllPeopleWithoutLoginRequestModelImpl value,
          $Res Function(_$GetAllPeopleWithoutLoginRequestModelImpl) then) =
      __$$GetAllPeopleWithoutLoginRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? searchKey, String? interests, String? timeFilter});
}

/// @nodoc
class __$$GetAllPeopleWithoutLoginRequestModelImplCopyWithImpl<$Res>
    extends _$GetAllPeopleWithoutLoginRequestModelCopyWithImpl<$Res,
        _$GetAllPeopleWithoutLoginRequestModelImpl>
    implements _$$GetAllPeopleWithoutLoginRequestModelImplCopyWith<$Res> {
  __$$GetAllPeopleWithoutLoginRequestModelImplCopyWithImpl(
      _$GetAllPeopleWithoutLoginRequestModelImpl _value,
      $Res Function(_$GetAllPeopleWithoutLoginRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
    Object? interests = freezed,
    Object? timeFilter = freezed,
  }) {
    return _then(_$GetAllPeopleWithoutLoginRequestModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllPeopleWithoutLoginRequestModelImpl
    implements _GetAllPeopleWithoutLoginRequestModel {
  const _$GetAllPeopleWithoutLoginRequestModelImpl(
      {this.searchKey, this.interests, this.timeFilter});

  factory _$GetAllPeopleWithoutLoginRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllPeopleWithoutLoginRequestModelImplFromJson(json);

  @override
  final String? searchKey;
  @override
  final String? interests;
  @override
  final String? timeFilter;

  @override
  String toString() {
    return 'GetAllPeopleWithoutLoginRequestModel(searchKey: $searchKey, interests: $interests, timeFilter: $timeFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllPeopleWithoutLoginRequestModelImpl &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey) &&
            (identical(other.interests, interests) ||
                other.interests == interests) &&
            (identical(other.timeFilter, timeFilter) ||
                other.timeFilter == timeFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, searchKey, interests, timeFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllPeopleWithoutLoginRequestModelImplCopyWith<
          _$GetAllPeopleWithoutLoginRequestModelImpl>
      get copyWith => __$$GetAllPeopleWithoutLoginRequestModelImplCopyWithImpl<
          _$GetAllPeopleWithoutLoginRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllPeopleWithoutLoginRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllPeopleWithoutLoginRequestModel
    implements GetAllPeopleWithoutLoginRequestModel {
  const factory _GetAllPeopleWithoutLoginRequestModel(
      {final String? searchKey,
      final String? interests,
      final String? timeFilter}) = _$GetAllPeopleWithoutLoginRequestModelImpl;

  factory _GetAllPeopleWithoutLoginRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAllPeopleWithoutLoginRequestModelImpl.fromJson;

  @override
  String? get searchKey;
  @override
  String? get interests;
  @override
  String? get timeFilter;
  @override
  @JsonKey(ignore: true)
  _$$GetAllPeopleWithoutLoginRequestModelImplCopyWith<
          _$GetAllPeopleWithoutLoginRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetAllPeopleWithoutLoginResponseModel
    _$GetAllPeopleWithoutLoginResponseModelFromJson(Map<String, dynamic> json) {
  return _GetAllPeopleWithoutLoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllPeopleWithoutLoginResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<People>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllPeopleWithoutLoginResponseModelCopyWith<
          GetAllPeopleWithoutLoginResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllPeopleWithoutLoginResponseModelCopyWith<$Res> {
  factory $GetAllPeopleWithoutLoginResponseModelCopyWith(
          GetAllPeopleWithoutLoginResponseModel value,
          $Res Function(GetAllPeopleWithoutLoginResponseModel) then) =
      _$GetAllPeopleWithoutLoginResponseModelCopyWithImpl<$Res,
          GetAllPeopleWithoutLoginResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<People>? data});
}

/// @nodoc
class _$GetAllPeopleWithoutLoginResponseModelCopyWithImpl<$Res,
        $Val extends GetAllPeopleWithoutLoginResponseModel>
    implements $GetAllPeopleWithoutLoginResponseModelCopyWith<$Res> {
  _$GetAllPeopleWithoutLoginResponseModelCopyWithImpl(this._value, this._then);

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
              as List<People>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllPeopleWithoutLoginResponseModelImplCopyWith<$Res>
    implements $GetAllPeopleWithoutLoginResponseModelCopyWith<$Res> {
  factory _$$GetAllPeopleWithoutLoginResponseModelImplCopyWith(
          _$GetAllPeopleWithoutLoginResponseModelImpl value,
          $Res Function(_$GetAllPeopleWithoutLoginResponseModelImpl) then) =
      __$$GetAllPeopleWithoutLoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<People>? data});
}

/// @nodoc
class __$$GetAllPeopleWithoutLoginResponseModelImplCopyWithImpl<$Res>
    extends _$GetAllPeopleWithoutLoginResponseModelCopyWithImpl<$Res,
        _$GetAllPeopleWithoutLoginResponseModelImpl>
    implements _$$GetAllPeopleWithoutLoginResponseModelImplCopyWith<$Res> {
  __$$GetAllPeopleWithoutLoginResponseModelImplCopyWithImpl(
      _$GetAllPeopleWithoutLoginResponseModelImpl _value,
      $Res Function(_$GetAllPeopleWithoutLoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAllPeopleWithoutLoginResponseModelImpl(
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
              as List<People>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllPeopleWithoutLoginResponseModelImpl
    implements _GetAllPeopleWithoutLoginResponseModel {
  const _$GetAllPeopleWithoutLoginResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<People>? data})
      : _data = data;

  factory _$GetAllPeopleWithoutLoginResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllPeopleWithoutLoginResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<People>? _data;
  @override
  @JsonKey(name: "data")
  List<People>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllPeopleWithoutLoginResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllPeopleWithoutLoginResponseModelImpl &&
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
  _$$GetAllPeopleWithoutLoginResponseModelImplCopyWith<
          _$GetAllPeopleWithoutLoginResponseModelImpl>
      get copyWith => __$$GetAllPeopleWithoutLoginResponseModelImplCopyWithImpl<
          _$GetAllPeopleWithoutLoginResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllPeopleWithoutLoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllPeopleWithoutLoginResponseModel
    implements GetAllPeopleWithoutLoginResponseModel {
  const factory _GetAllPeopleWithoutLoginResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<People>? data}) =
      _$GetAllPeopleWithoutLoginResponseModelImpl;

  factory _GetAllPeopleWithoutLoginResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAllPeopleWithoutLoginResponseModelImpl.fromJson;

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
  List<People>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAllPeopleWithoutLoginResponseModelImplCopyWith<
          _$GetAllPeopleWithoutLoginResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

People _$PeopleFromJson(Map<String, dynamic> json) {
  return _People.fromJson(json);
}

/// @nodoc
mixin _$People {
  @JsonKey(name: "postImage")
  String? get postImage => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "checkIn")
  String? get checkIn => throw _privateConstructorUsedError;
  @JsonKey(name: "checkInImage")
  String? get checkInImage =>
      throw _privateConstructorUsedError; // @JsonKey(name: "subscribers")
// List<Subscriber?>? subscribers,
  @JsonKey(name: "groupId")
  GroupId? get groupId => throw _privateConstructorUsedError;
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
  @JsonKey(name: "hide")
  List<dynamic>? get hide => throw _privateConstructorUsedError;
  @JsonKey(name: "isBan")
  bool? get isBan => throw _privateConstructorUsedError;
  @JsonKey(name: "banReason")
  dynamic get banReason => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  UserId? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest?>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeopleCopyWith<People> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleCopyWith<$Res> {
  factory $PeopleCopyWith(People value, $Res Function(People) then) =
      _$PeopleCopyWithImpl<$Res, People>;
  @useResult
  $Res call(
      {@JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "checkIn") String? checkIn,
      @JsonKey(name: "checkInImage") String? checkInImage,
      @JsonKey(name: "groupId") GroupId? groupId,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "hide") List<dynamic>? hide,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") dynamic banReason,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  $GroupIdCopyWith<$Res>? get groupId;
  $UserIdCopyWith<$Res>? get userId;
}

/// @nodoc
class _$PeopleCopyWithImpl<$Res, $Val extends People>
    implements $PeopleCopyWith<$Res> {
  _$PeopleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postImage = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
    Object? groupId = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? hide = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? interests = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
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
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as GroupId?,
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
      hide: freezed == hide
          ? _value.hide
          : hide // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
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

  @override
  @pragma('vm:prefer-inline')
  $GroupIdCopyWith<$Res>? get groupId {
    if (_value.groupId == null) {
      return null;
    }

    return $GroupIdCopyWith<$Res>(_value.groupId!, (value) {
      return _then(_value.copyWith(groupId: value) as $Val);
    });
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
}

/// @nodoc
abstract class _$$PeopleImplCopyWith<$Res> implements $PeopleCopyWith<$Res> {
  factory _$$PeopleImplCopyWith(
          _$PeopleImpl value, $Res Function(_$PeopleImpl) then) =
      __$$PeopleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "checkIn") String? checkIn,
      @JsonKey(name: "checkInImage") String? checkInImage,
      @JsonKey(name: "groupId") GroupId? groupId,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "hide") List<dynamic>? hide,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") dynamic banReason,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  @override
  $GroupIdCopyWith<$Res>? get groupId;
  @override
  $UserIdCopyWith<$Res>? get userId;
}

/// @nodoc
class __$$PeopleImplCopyWithImpl<$Res>
    extends _$PeopleCopyWithImpl<$Res, _$PeopleImpl>
    implements _$$PeopleImplCopyWith<$Res> {
  __$$PeopleImplCopyWithImpl(
      _$PeopleImpl _value, $Res Function(_$PeopleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postImage = freezed,
    Object? description = freezed,
    Object? slug = freezed,
    Object? checkIn = freezed,
    Object? checkInImage = freezed,
    Object? groupId = freezed,
    Object? isActive = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? hide = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? interests = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PeopleImpl(
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
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as GroupId?,
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
      hide: freezed == hide
          ? _value._hide
          : hide // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
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
class _$PeopleImpl implements _People {
  const _$PeopleImpl(
      {@JsonKey(name: "postImage") this.postImage,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "checkIn") this.checkIn,
      @JsonKey(name: "checkInImage") this.checkInImage,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "isActive") this.isActive,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "hide") final List<dynamic>? hide,
      @JsonKey(name: "isBan") this.isBan,
      @JsonKey(name: "banReason") this.banReason,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt})
      : _hide = hide,
        _interests = interests;

  factory _$PeopleImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeopleImplFromJson(json);

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
// @JsonKey(name: "subscribers")
// List<Subscriber?>? subscribers,
  @override
  @JsonKey(name: "groupId")
  final GroupId? groupId;
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
  final List<dynamic>? _hide;
  @override
  @JsonKey(name: "hide")
  List<dynamic>? get hide {
    final value = _hide;
    if (value == null) return null;
    if (_hide is EqualUnmodifiableListView) return _hide;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "isBan")
  final bool? isBan;
  @override
  @JsonKey(name: "banReason")
  final dynamic banReason;
  @override
  @JsonKey(name: "_id")
  final String? id;
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
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'People(postImage: $postImage, description: $description, slug: $slug, checkIn: $checkIn, checkInImage: $checkInImage, groupId: $groupId, isActive: $isActive, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, privacy: $privacy, hide: $hide, isBan: $isBan, banReason: $banReason, id: $id, userId: $userId, title: $title, interests: $interests, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleImpl &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkInImage, checkInImage) ||
                other.checkInImage == checkInImage) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.gif, gif) || other.gif == gif) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            const DeepCollectionEquality().equals(other._hide, _hide) &&
            (identical(other.isBan, isBan) || other.isBan == isBan) &&
            const DeepCollectionEquality().equals(other.banReason, banReason) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        postImage,
        description,
        slug,
        checkIn,
        checkInImage,
        groupId,
        isActive,
        gif,
        videoUrl,
        bgColor,
        privacy,
        const DeepCollectionEquality().hash(_hide),
        isBan,
        const DeepCollectionEquality().hash(banReason),
        id,
        userId,
        title,
        const DeepCollectionEquality().hash(_interests),
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeopleImplCopyWith<_$PeopleImpl> get copyWith =>
      __$$PeopleImplCopyWithImpl<_$PeopleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeopleImplToJson(
      this,
    );
  }
}

abstract class _People implements People {
  const factory _People(
      {@JsonKey(name: "postImage") final String? postImage,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "slug") final String? slug,
      @JsonKey(name: "checkIn") final String? checkIn,
      @JsonKey(name: "checkInImage") final String? checkInImage,
      @JsonKey(name: "groupId") final GroupId? groupId,
      @JsonKey(name: "isActive") final bool? isActive,
      @JsonKey(name: "gif") final String? gif,
      @JsonKey(name: "videoUrl") final String? videoUrl,
      @JsonKey(name: "bgColor") final String? bgColor,
      @JsonKey(name: "privacy") final String? privacy,
      @JsonKey(name: "hide") final List<dynamic>? hide,
      @JsonKey(name: "isBan") final bool? isBan,
      @JsonKey(name: "banReason") final dynamic banReason,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userId") final UserId? userId,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$PeopleImpl;

  factory _People.fromJson(Map<String, dynamic> json) = _$PeopleImpl.fromJson;

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
  @override // @JsonKey(name: "subscribers")
// List<Subscriber?>? subscribers,
  @JsonKey(name: "groupId")
  GroupId? get groupId;
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
  @JsonKey(name: "hide")
  List<dynamic>? get hide;
  @override
  @JsonKey(name: "isBan")
  bool? get isBan;
  @override
  @JsonKey(name: "banReason")
  dynamic get banReason;
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
  @JsonKey(name: "interests")
  List<Interest?>? get interests;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PeopleImplCopyWith<_$PeopleImpl> get copyWith =>
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
  @JsonKey(name: "isKyc")
  bool? get isKyc => throw _privateConstructorUsedError;
  @JsonKey(name: "expertise")
  String? get expertise => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  dynamic get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "isBan")
  bool? get isBan => throw _privateConstructorUsedError;
  @JsonKey(name: "banReason")
  dynamic get banReason => throw _privateConstructorUsedError;
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
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<Follower?>? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  dynamic get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: "accountId")
  String? get accountId => throw _privateConstructorUsedError;

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
      @JsonKey(name: "isKyc") bool? isKyc,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") dynamic banReason,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "accountId") String? accountId});
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
    Object? isKyc = freezed,
    Object? expertise = freezed,
    Object? profilePhoto = freezed,
    Object? coverPhoto = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customerId = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? accountId = freezed,
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
      isKyc: freezed == isKyc
          ? _value.isKyc
          : isKyc // ignore: cast_nullable_to_non_nullable
              as bool?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as List<Interest>?,
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
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: "isKyc") bool? isKyc,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") dynamic banReason,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "accountId") String? accountId});
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
    Object? isKyc = freezed,
    Object? expertise = freezed,
    Object? profilePhoto = freezed,
    Object? coverPhoto = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customerId = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? accountId = freezed,
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
      isKyc: freezed == isKyc
          ? _value.isKyc
          : isKyc // ignore: cast_nullable_to_non_nullable
              as bool?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceToken: freezed == deviceToken
          ? _value._deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      isBan: freezed == isBan
          ? _value.isBan
          : isBan // ignore: cast_nullable_to_non_nullable
              as bool?,
      banReason: freezed == banReason
          ? _value.banReason
          : banReason // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as List<Interest>?,
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
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdImpl implements _UserId {
  const _$UserIdImpl(
      {@JsonKey(name: "role") this.role,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "isKyc") this.isKyc,
      @JsonKey(name: "expertise") this.expertise,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "isBan") this.isBan,
      @JsonKey(name: "banReason") this.banReason,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "customerId") this.customerId,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry,
      @JsonKey(name: "accountId") this.accountId})
      : _deviceToken = deviceToken,
        _interests = interests,
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
  @override
  @JsonKey(name: "isKyc")
  final bool? isKyc;
  @override
  @JsonKey(name: "expertise")
  final String? expertise;
  @override
  @JsonKey(name: "profilePhoto")
  final String? profilePhoto;
  @override
  @JsonKey(name: "coverPhoto")
  final String? coverPhoto;
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
  @JsonKey(name: "isBan")
  final bool? isBan;
  @override
  @JsonKey(name: "banReason")
  final dynamic banReason;
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
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "location")
  final String? location;
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
  @JsonKey(name: "customerId")
  final String? customerId;
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
  String toString() {
    return 'UserId(role: $role, isEmailVerified: $isEmailVerified, isKyc: $isKyc, expertise: $expertise, profilePhoto: $profilePhoto, coverPhoto: $coverPhoto, productId: $productId, deviceToken: $deviceToken, isBan: $isBan, banReason: $banReason, id: $id, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, description: $description, location: $location, interests: $interests, subscribers: $subscribers, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, otp: $otp, otpExpiry: $otpExpiry, accountId: $accountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isKyc, isKyc) || other.isKyc == isKyc) &&
            (identical(other.expertise, expertise) ||
                other.expertise == expertise) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other._deviceToken, _deviceToken) &&
            (identical(other.isBan, isBan) || other.isBan == isBan) &&
            const DeepCollectionEquality().equals(other.banReason, banReason) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
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
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality().equals(other.otpExpiry, otpExpiry) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        role,
        isEmailVerified,
        isKyc,
        expertise,
        profilePhoto,
        coverPhoto,
        const DeepCollectionEquality().hash(productId),
        const DeepCollectionEquality().hash(_deviceToken),
        isBan,
        const DeepCollectionEquality().hash(banReason),
        id,
        firstName,
        lastName,
        userName,
        email,
        phone,
        description,
        location,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_followers),
        createdAt,
        updatedAt,
        customerId,
        const DeepCollectionEquality().hash(otp),
        const DeepCollectionEquality().hash(otpExpiry),
        accountId
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
      @JsonKey(name: "isKyc") final bool? isKyc,
      @JsonKey(name: "expertise") final String? expertise,
      @JsonKey(name: "profilePhoto") final String? profilePhoto,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "productId") final dynamic productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "isBan") final bool? isBan,
      @JsonKey(name: "banReason") final dynamic banReason,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "firstName") final String? firstName,
      @JsonKey(name: "lastName") final String? lastName,
      @JsonKey(name: "userName") final String? userName,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "customerId") final String? customerId,
      @JsonKey(name: "otp") final dynamic otp,
      @JsonKey(name: "otpExpiry") final dynamic otpExpiry,
      @JsonKey(name: "accountId") final String? accountId}) = _$UserIdImpl;

  factory _UserId.fromJson(Map<String, dynamic> json) = _$UserIdImpl.fromJson;

  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified;
  @override
  @JsonKey(name: "isKyc")
  bool? get isKyc;
  @override
  @JsonKey(name: "expertise")
  String? get expertise;
  @override
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto;
  @override
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto;
  @override
  @JsonKey(name: "productId")
  dynamic get productId;
  @override
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken;
  @override
  @JsonKey(name: "isBan")
  bool? get isBan;
  @override
  @JsonKey(name: "banReason")
  dynamic get banReason;
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
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
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
  @JsonKey(name: "customerId")
  String? get customerId;
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
  @JsonKey(ignore: true)
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

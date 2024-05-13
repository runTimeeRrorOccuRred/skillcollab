// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_groups_and_people_without_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllGroupsAndPeopleWithoutLoginRequestModel
    _$GetAllGroupsAndPeopleWithoutLoginRequestModelFromJson(
        Map<String, dynamic> json) {
  return _GetAllGroupsAndPeopleWithoutLoginRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllGroupsAndPeopleWithoutLoginRequestModel {
  @JsonKey(name: "searchKey")
  String? get searchKey => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  String? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "timeFilter")
  String? get timeFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllGroupsAndPeopleWithoutLoginRequestModelCopyWith<
          GetAllGroupsAndPeopleWithoutLoginRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllGroupsAndPeopleWithoutLoginRequestModelCopyWith<$Res> {
  factory $GetAllGroupsAndPeopleWithoutLoginRequestModelCopyWith(
          GetAllGroupsAndPeopleWithoutLoginRequestModel value,
          $Res Function(GetAllGroupsAndPeopleWithoutLoginRequestModel) then) =
      _$GetAllGroupsAndPeopleWithoutLoginRequestModelCopyWithImpl<$Res,
          GetAllGroupsAndPeopleWithoutLoginRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "searchKey") String? searchKey,
      @JsonKey(name: "interests") String? interests,
      @JsonKey(name: "timeFilter") String? timeFilter});
}

/// @nodoc
class _$GetAllGroupsAndPeopleWithoutLoginRequestModelCopyWithImpl<$Res,
        $Val extends GetAllGroupsAndPeopleWithoutLoginRequestModel>
    implements $GetAllGroupsAndPeopleWithoutLoginRequestModelCopyWith<$Res> {
  _$GetAllGroupsAndPeopleWithoutLoginRequestModelCopyWithImpl(
      this._value, this._then);

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
abstract class _$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplCopyWith<
        $Res>
    implements $GetAllGroupsAndPeopleWithoutLoginRequestModelCopyWith<$Res> {
  factory _$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplCopyWith(
          _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl value,
          $Res Function(_$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl)
              then) =
      __$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "searchKey") String? searchKey,
      @JsonKey(name: "interests") String? interests,
      @JsonKey(name: "timeFilter") String? timeFilter});
}

/// @nodoc
class __$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplCopyWithImpl<$Res>
    extends _$GetAllGroupsAndPeopleWithoutLoginRequestModelCopyWithImpl<$Res,
        _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl>
    implements
        _$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplCopyWith<$Res> {
  __$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplCopyWithImpl(
      _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl _value,
      $Res Function(_$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
    Object? interests = freezed,
    Object? timeFilter = freezed,
  }) {
    return _then(_$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl(
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
class _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl
    implements _GetAllGroupsAndPeopleWithoutLoginRequestModel {
  const _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl(
      {@JsonKey(name: "searchKey") this.searchKey,
      @JsonKey(name: "interests") this.interests,
      @JsonKey(name: "timeFilter") this.timeFilter});

  factory _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplFromJson(json);

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
  String toString() {
    return 'GetAllGroupsAndPeopleWithoutLoginRequestModel(searchKey: $searchKey, interests: $interests, timeFilter: $timeFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl &&
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
  _$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplCopyWith<
          _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl>
      get copyWith =>
          __$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplCopyWithImpl<
                  _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllGroupsAndPeopleWithoutLoginRequestModel
    implements GetAllGroupsAndPeopleWithoutLoginRequestModel {
  const factory _GetAllGroupsAndPeopleWithoutLoginRequestModel(
          {@JsonKey(name: "searchKey") final String? searchKey,
          @JsonKey(name: "interests") final String? interests,
          @JsonKey(name: "timeFilter") final String? timeFilter}) =
      _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl;

  factory _GetAllGroupsAndPeopleWithoutLoginRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$GetAllGroupsAndPeopleWithoutLoginRequestModelImplCopyWith<
          _$GetAllGroupsAndPeopleWithoutLoginRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetAllGroupsAndPeopleWithoutLoginResponseModel
    _$GetAllGroupsAndPeopleWithoutLoginResponseModelFromJson(
        Map<String, dynamic> json) {
  return _GetAllGroupsAndPeopleWithoutLoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllGroupsAndPeopleWithoutLoginResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<PeopleAndGroupPostWOL?>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllGroupsAndPeopleWithoutLoginResponseModelCopyWith<
          GetAllGroupsAndPeopleWithoutLoginResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllGroupsAndPeopleWithoutLoginResponseModelCopyWith<$Res> {
  factory $GetAllGroupsAndPeopleWithoutLoginResponseModelCopyWith(
          GetAllGroupsAndPeopleWithoutLoginResponseModel value,
          $Res Function(GetAllGroupsAndPeopleWithoutLoginResponseModel) then) =
      _$GetAllGroupsAndPeopleWithoutLoginResponseModelCopyWithImpl<$Res,
          GetAllGroupsAndPeopleWithoutLoginResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<PeopleAndGroupPostWOL?>? data});
}

/// @nodoc
class _$GetAllGroupsAndPeopleWithoutLoginResponseModelCopyWithImpl<$Res,
        $Val extends GetAllGroupsAndPeopleWithoutLoginResponseModel>
    implements $GetAllGroupsAndPeopleWithoutLoginResponseModelCopyWith<$Res> {
  _$GetAllGroupsAndPeopleWithoutLoginResponseModelCopyWithImpl(
      this._value, this._then);

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
              as List<PeopleAndGroupPostWOL?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplCopyWith<
        $Res>
    implements $GetAllGroupsAndPeopleWithoutLoginResponseModelCopyWith<$Res> {
  factory _$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplCopyWith(
          _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl value,
          $Res Function(_$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl)
              then) =
      __$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<PeopleAndGroupPostWOL?>? data});
}

/// @nodoc
class __$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplCopyWithImpl<$Res>
    extends _$GetAllGroupsAndPeopleWithoutLoginResponseModelCopyWithImpl<$Res,
        _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl>
    implements
        _$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplCopyWith<$Res> {
  __$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplCopyWithImpl(
      _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl _value,
      $Res Function(_$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl(
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
              as List<PeopleAndGroupPostWOL?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl
    implements _GetAllGroupsAndPeopleWithoutLoginResponseModel {
  const _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<PeopleAndGroupPostWOL?>? data})
      : _data = data;

  factory _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<PeopleAndGroupPostWOL?>? _data;
  @override
  @JsonKey(name: "data")
  List<PeopleAndGroupPostWOL?>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllGroupsAndPeopleWithoutLoginResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl &&
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
  _$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplCopyWith<
          _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl>
      get copyWith =>
          __$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplCopyWithImpl<
                  _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllGroupsAndPeopleWithoutLoginResponseModel
    implements GetAllGroupsAndPeopleWithoutLoginResponseModel {
  const factory _GetAllGroupsAndPeopleWithoutLoginResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<PeopleAndGroupPostWOL?>? data}) =
      _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl;

  factory _GetAllGroupsAndPeopleWithoutLoginResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl.fromJson;

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
  List<PeopleAndGroupPostWOL?>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAllGroupsAndPeopleWithoutLoginResponseModelImplCopyWith<
          _$GetAllGroupsAndPeopleWithoutLoginResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PeopleAndGroupPostWOL _$PeopleAndGroupPostWOLFromJson(
    Map<String, dynamic> json) {
  return _PeopleAndGroupPostWOL.fromJson(json);
}

/// @nodoc
mixin _$PeopleAndGroupPostWOL {
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
  List<Subscriber?>? get subscribers => throw _privateConstructorUsedError;
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
  $PeopleAndGroupPostWOLCopyWith<PeopleAndGroupPostWOL> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleAndGroupPostWOLCopyWith<$Res> {
  factory $PeopleAndGroupPostWOLCopyWith(PeopleAndGroupPostWOL value,
          $Res Function(PeopleAndGroupPostWOL) then) =
      _$PeopleAndGroupPostWOLCopyWithImpl<$Res, PeopleAndGroupPostWOL>;
  @useResult
  $Res call(
      {@JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "checkIn") String? checkIn,
      @JsonKey(name: "checkInImage") String? checkInImage,
      @JsonKey(name: "subscribers") List<Subscriber?>? subscribers,
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
class _$PeopleAndGroupPostWOLCopyWithImpl<$Res,
        $Val extends PeopleAndGroupPostWOL>
    implements $PeopleAndGroupPostWOLCopyWith<$Res> {
  _$PeopleAndGroupPostWOLCopyWithImpl(this._value, this._then);

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
    Object? subscribers = freezed,
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
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<Subscriber?>?,
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
abstract class _$$PeopleAndGroupPostWOLImplCopyWith<$Res>
    implements $PeopleAndGroupPostWOLCopyWith<$Res> {
  factory _$$PeopleAndGroupPostWOLImplCopyWith(
          _$PeopleAndGroupPostWOLImpl value,
          $Res Function(_$PeopleAndGroupPostWOLImpl) then) =
      __$$PeopleAndGroupPostWOLImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "postImage") String? postImage,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "slug") String? slug,
      @JsonKey(name: "checkIn") String? checkIn,
      @JsonKey(name: "checkInImage") String? checkInImage,
      @JsonKey(name: "subscribers") List<Subscriber?>? subscribers,
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
class __$$PeopleAndGroupPostWOLImplCopyWithImpl<$Res>
    extends _$PeopleAndGroupPostWOLCopyWithImpl<$Res,
        _$PeopleAndGroupPostWOLImpl>
    implements _$$PeopleAndGroupPostWOLImplCopyWith<$Res> {
  __$$PeopleAndGroupPostWOLImplCopyWithImpl(_$PeopleAndGroupPostWOLImpl _value,
      $Res Function(_$PeopleAndGroupPostWOLImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
    return _then(_$PeopleAndGroupPostWOLImpl(
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
              as List<Subscriber?>?,
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
class _$PeopleAndGroupPostWOLImpl implements _PeopleAndGroupPostWOL {
  const _$PeopleAndGroupPostWOLImpl(
      {@JsonKey(name: "postImage") this.postImage,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "slug") this.slug,
      @JsonKey(name: "checkIn") this.checkIn,
      @JsonKey(name: "checkInImage") this.checkInImage,
      @JsonKey(name: "subscribers") final List<Subscriber?>? subscribers,
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
      : _subscribers = subscribers,
        _hide = hide,
        _interests = interests;

  factory _$PeopleAndGroupPostWOLImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeopleAndGroupPostWOLImplFromJson(json);

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
  final List<Subscriber?>? _subscribers;
  @override
  @JsonKey(name: "subscribers")
  List<Subscriber?>? get subscribers {
    final value = _subscribers;
    if (value == null) return null;
    if (_subscribers is EqualUnmodifiableListView) return _subscribers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'PeopleAndGroupPostWOL(postImage: $postImage, description: $description, slug: $slug, checkIn: $checkIn, checkInImage: $checkInImage, subscribers: $subscribers, groupId: $groupId, isActive: $isActive, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, privacy: $privacy, hide: $hide, isBan: $isBan, banReason: $banReason, id: $id, userId: $userId, title: $title, interests: $interests, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleAndGroupPostWOLImpl &&
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
        const DeepCollectionEquality().hash(_subscribers),
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
  _$$PeopleAndGroupPostWOLImplCopyWith<_$PeopleAndGroupPostWOLImpl>
      get copyWith => __$$PeopleAndGroupPostWOLImplCopyWithImpl<
          _$PeopleAndGroupPostWOLImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeopleAndGroupPostWOLImplToJson(
      this,
    );
  }
}

abstract class _PeopleAndGroupPostWOL implements PeopleAndGroupPostWOL {
  const factory _PeopleAndGroupPostWOL(
          {@JsonKey(name: "postImage") final String? postImage,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "slug") final String? slug,
          @JsonKey(name: "checkIn") final String? checkIn,
          @JsonKey(name: "checkInImage") final String? checkInImage,
          @JsonKey(name: "subscribers") final List<Subscriber?>? subscribers,
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
          @JsonKey(name: "updatedAt") final DateTime? updatedAt}) =
      _$PeopleAndGroupPostWOLImpl;

  factory _PeopleAndGroupPostWOL.fromJson(Map<String, dynamic> json) =
      _$PeopleAndGroupPostWOLImpl.fromJson;

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
  List<Subscriber?>? get subscribers;
  @override
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
  _$$PeopleAndGroupPostWOLImplCopyWith<_$PeopleAndGroupPostWOLImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GroupId _$GroupIdFromJson(Map<String, dynamic> json) {
  return _GroupId.fromJson(json);
}

/// @nodoc
mixin _$GroupId {
  @JsonKey(name: "groupPhoto")
  String? get groupPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  String? get privacy => throw _privateConstructorUsedError;
  @JsonKey(name: "one_month_subscription_price")
  dynamic get oneMonthSubscriptionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "six_month_subscription_price")
  dynamic get sixMonthSubscriptionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "twelve_month_subscription_price")
  dynamic get twelveMonthSubscriptionPrice =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "promoCode")
  dynamic get promoCode => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  dynamic get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  dynamic get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest?>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<Follower?>? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "rules")
  String? get rules => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewer")
  List<Reviewer?>? get reviewer => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupIdCopyWith<GroupId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupIdCopyWith<$Res> {
  factory $GroupIdCopyWith(GroupId value, $Res Function(GroupId) then) =
      _$GroupIdCopyWithImpl<$Res, GroupId>;
  @useResult
  $Res call(
      {@JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "one_month_subscription_price")
      dynamic oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      dynamic sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      dynamic twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") dynamic promoCode,
      @JsonKey(name: "discount") dynamic discount,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "rules") String? rules,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "reviewer") List<Reviewer?>? reviewer,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class _$GroupIdCopyWithImpl<$Res, $Val extends GroupId>
    implements $GroupIdCopyWith<$Res> {
  _$GroupIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? privacy = freezed,
    Object? oneMonthSubscriptionPrice = freezed,
    Object? sixMonthSubscriptionPrice = freezed,
    Object? twelveMonthSubscriptionPrice = freezed,
    Object? promoCode = freezed,
    Object? discount = freezed,
    Object? productId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? interests = freezed,
    Object? followers = freezed,
    Object? rules = freezed,
    Object? userId = freezed,
    Object? subscribers = freezed,
    Object? reviewer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      groupPhoto: freezed == groupPhoto
          ? _value.groupPhoto
          : groupPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
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
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      oneMonthSubscriptionPrice: freezed == oneMonthSubscriptionPrice
          ? _value.oneMonthSubscriptionPrice
          : oneMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sixMonthSubscriptionPrice: freezed == sixMonthSubscriptionPrice
          ? _value.sixMonthSubscriptionPrice
          : sixMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      twelveMonthSubscriptionPrice: freezed == twelveMonthSubscriptionPrice
          ? _value.twelveMonthSubscriptionPrice
          : twelveMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower?>?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<Reviewer?>?,
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
abstract class _$$GroupIdImplCopyWith<$Res> implements $GroupIdCopyWith<$Res> {
  factory _$$GroupIdImplCopyWith(
          _$GroupIdImpl value, $Res Function(_$GroupIdImpl) then) =
      __$$GroupIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "one_month_subscription_price")
      dynamic oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      dynamic sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      dynamic twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") dynamic promoCode,
      @JsonKey(name: "discount") dynamic discount,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "rules") String? rules,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "reviewer") List<Reviewer?>? reviewer,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class __$$GroupIdImplCopyWithImpl<$Res>
    extends _$GroupIdCopyWithImpl<$Res, _$GroupIdImpl>
    implements _$$GroupIdImplCopyWith<$Res> {
  __$$GroupIdImplCopyWithImpl(
      _$GroupIdImpl _value, $Res Function(_$GroupIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? privacy = freezed,
    Object? oneMonthSubscriptionPrice = freezed,
    Object? sixMonthSubscriptionPrice = freezed,
    Object? twelveMonthSubscriptionPrice = freezed,
    Object? promoCode = freezed,
    Object? discount = freezed,
    Object? productId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? interests = freezed,
    Object? followers = freezed,
    Object? rules = freezed,
    Object? userId = freezed,
    Object? subscribers = freezed,
    Object? reviewer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GroupIdImpl(
      groupPhoto: freezed == groupPhoto
          ? _value.groupPhoto
          : groupPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
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
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      oneMonthSubscriptionPrice: freezed == oneMonthSubscriptionPrice
          ? _value.oneMonthSubscriptionPrice
          : oneMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sixMonthSubscriptionPrice: freezed == sixMonthSubscriptionPrice
          ? _value.sixMonthSubscriptionPrice
          : sixMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      twelveMonthSubscriptionPrice: freezed == twelveMonthSubscriptionPrice
          ? _value.twelveMonthSubscriptionPrice
          : twelveMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest?>?,
      followers: freezed == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower?>?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reviewer: freezed == reviewer
          ? _value._reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<Reviewer?>?,
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
class _$GroupIdImpl implements _GroupId {
  const _$GroupIdImpl(
      {@JsonKey(name: "groupPhoto") this.groupPhoto,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "one_month_subscription_price")
      this.oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      this.sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      this.twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") this.promoCode,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "rules") this.rules,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "reviewer") final List<Reviewer?>? reviewer,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt})
      : _interests = interests,
        _followers = followers,
        _subscribers = subscribers,
        _reviewer = reviewer;

  factory _$GroupIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupIdImplFromJson(json);

  @override
  @JsonKey(name: "groupPhoto")
  final String? groupPhoto;
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
  @JsonKey(name: "privacy")
  final String? privacy;
  @override
  @JsonKey(name: "one_month_subscription_price")
  final dynamic oneMonthSubscriptionPrice;
  @override
  @JsonKey(name: "six_month_subscription_price")
  final dynamic sixMonthSubscriptionPrice;
  @override
  @JsonKey(name: "twelve_month_subscription_price")
  final dynamic twelveMonthSubscriptionPrice;
  @override
  @JsonKey(name: "promoCode")
  final dynamic promoCode;
  @override
  @JsonKey(name: "discount")
  final dynamic discount;
  @override
  @JsonKey(name: "productId")
  final dynamic productId;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
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
  @JsonKey(name: "rules")
  final String? rules;
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

  final List<Reviewer?>? _reviewer;
  @override
  @JsonKey(name: "reviewer")
  List<Reviewer?>? get reviewer {
    final value = _reviewer;
    if (value == null) return null;
    if (_reviewer is EqualUnmodifiableListView) return _reviewer;
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
    return 'GroupId(groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, description: $description, location: $location, privacy: $privacy, oneMonthSubscriptionPrice: $oneMonthSubscriptionPrice, sixMonthSubscriptionPrice: $sixMonthSubscriptionPrice, twelveMonthSubscriptionPrice: $twelveMonthSubscriptionPrice, promoCode: $promoCode, discount: $discount, productId: $productId, id: $id, name: $name, interests: $interests, followers: $followers, rules: $rules, userId: $userId, subscribers: $subscribers, reviewer: $reviewer, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupIdImpl &&
            (identical(other.groupPhoto, groupPhoto) ||
                other.groupPhoto == groupPhoto) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            const DeepCollectionEquality().equals(
                other.oneMonthSubscriptionPrice, oneMonthSubscriptionPrice) &&
            const DeepCollectionEquality().equals(
                other.sixMonthSubscriptionPrice, sixMonthSubscriptionPrice) &&
            const DeepCollectionEquality().equals(
                other.twelveMonthSubscriptionPrice,
                twelveMonthSubscriptionPrice) &&
            const DeepCollectionEquality().equals(other.promoCode, promoCode) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            (identical(other.rules, rules) || other.rules == rules) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            const DeepCollectionEquality().equals(other._reviewer, _reviewer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        groupPhoto,
        coverPhoto,
        description,
        location,
        privacy,
        const DeepCollectionEquality().hash(oneMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(sixMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(twelveMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(promoCode),
        const DeepCollectionEquality().hash(discount),
        const DeepCollectionEquality().hash(productId),
        id,
        name,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_followers),
        rules,
        userId,
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_reviewer),
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupIdImplCopyWith<_$GroupIdImpl> get copyWith =>
      __$$GroupIdImplCopyWithImpl<_$GroupIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupIdImplToJson(
      this,
    );
  }
}

abstract class _GroupId implements GroupId {
  const factory _GroupId(
      {@JsonKey(name: "groupPhoto") final String? groupPhoto,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "privacy") final String? privacy,
      @JsonKey(name: "one_month_subscription_price")
      final dynamic oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      final dynamic sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      final dynamic twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") final dynamic promoCode,
      @JsonKey(name: "discount") final dynamic discount,
      @JsonKey(name: "productId") final dynamic productId,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "rules") final String? rules,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "reviewer") final List<Reviewer?>? reviewer,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$GroupIdImpl;

  factory _GroupId.fromJson(Map<String, dynamic> json) = _$GroupIdImpl.fromJson;

  @override
  @JsonKey(name: "groupPhoto")
  String? get groupPhoto;
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
  @JsonKey(name: "privacy")
  String? get privacy;
  @override
  @JsonKey(name: "one_month_subscription_price")
  dynamic get oneMonthSubscriptionPrice;
  @override
  @JsonKey(name: "six_month_subscription_price")
  dynamic get sixMonthSubscriptionPrice;
  @override
  @JsonKey(name: "twelve_month_subscription_price")
  dynamic get twelveMonthSubscriptionPrice;
  @override
  @JsonKey(name: "promoCode")
  dynamic get promoCode;
  @override
  @JsonKey(name: "discount")
  dynamic get discount;
  @override
  @JsonKey(name: "productId")
  dynamic get productId;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "interests")
  List<Interest?>? get interests;
  @override
  @JsonKey(name: "followers")
  List<Follower?>? get followers;
  @override
  @JsonKey(name: "rules")
  String? get rules;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
  @override
  @JsonKey(name: "reviewer")
  List<Reviewer?>? get reviewer;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$GroupIdImplCopyWith<_$GroupIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserId _$UserIdFromJson(Map<String, dynamic> json) {
  return _UserId.fromJson(json);
}

/// @nodoc
mixin _$UserId {
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "isKyc")
  bool? get isKyc => throw _privateConstructorUsedError;
  @JsonKey(name: "expertise")
  dynamic get expertise => throw _privateConstructorUsedError;
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
  @JsonKey(name: "interests")
  List<dynamic>? get interests => throw _privateConstructorUsedError;
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
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "isKyc") bool? isKyc,
      @JsonKey(name: "expertise") dynamic expertise,
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
      @JsonKey(name: "interests") List<dynamic>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location});
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
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customerId = freezed,
    Object? description = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
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
              as dynamic,
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
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "isKyc") bool? isKyc,
      @JsonKey(name: "expertise") dynamic expertise,
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
      @JsonKey(name: "interests") List<dynamic>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location});
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
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customerId = freezed,
    Object? description = freezed,
    Object? location = freezed,
  }) {
    return _then(_$UserIdImpl(
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
              as dynamic,
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
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdImpl implements _UserId {
  const _$UserIdImpl(
      {@JsonKey(name: "isEmailVerified") this.isEmailVerified,
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
      @JsonKey(name: "interests") final List<dynamic>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "customerId") this.customerId,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location})
      : _deviceToken = deviceToken,
        _interests = interests,
        _subscribers = subscribers,
        _followers = followers;

  factory _$UserIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdImplFromJson(json);

  @override
  @JsonKey(name: "isEmailVerified")
  final bool? isEmailVerified;
  @override
  @JsonKey(name: "isKyc")
  final bool? isKyc;
  @override
  @JsonKey(name: "expertise")
  final dynamic expertise;
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
  final List<dynamic>? _interests;
  @override
  @JsonKey(name: "interests")
  List<dynamic>? get interests {
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
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "location")
  final String? location;

  @override
  String toString() {
    return 'UserId(isEmailVerified: $isEmailVerified, isKyc: $isKyc, expertise: $expertise, profilePhoto: $profilePhoto, coverPhoto: $coverPhoto, productId: $productId, deviceToken: $deviceToken, isBan: $isBan, banReason: $banReason, id: $id, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, interests: $interests, subscribers: $subscribers, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, description: $description, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdImpl &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isKyc, isKyc) || other.isKyc == isKyc) &&
            const DeepCollectionEquality().equals(other.expertise, expertise) &&
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isEmailVerified,
        isKyc,
        const DeepCollectionEquality().hash(expertise),
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
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_followers),
        createdAt,
        updatedAt,
        customerId,
        description,
        location
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
      {@JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
      @JsonKey(name: "isKyc") final bool? isKyc,
      @JsonKey(name: "expertise") final dynamic expertise,
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
      @JsonKey(name: "interests") final List<dynamic>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "customerId") final String? customerId,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location}) = _$UserIdImpl;

  factory _UserId.fromJson(Map<String, dynamic> json) = _$UserIdImpl.fromJson;

  @override
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified;
  @override
  @JsonKey(name: "isKyc")
  bool? get isKyc;
  @override
  @JsonKey(name: "expertise")
  dynamic get expertise;
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
  @JsonKey(name: "interests")
  List<dynamic>? get interests;
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
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "location")
  String? get location;
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
  String? get review => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "review") String? review,
      @JsonKey(name: "title") String? title,
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
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "review") String? review,
      @JsonKey(name: "title") String? title,
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
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
  final String? review;
  @override
  @JsonKey(name: "title")
  final String? title;
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
            (identical(other.review, review) || other.review == review) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, review, title, id, name, email, rating, userId);

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
      {@JsonKey(name: "review") final String? review,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "rating") final int? rating,
      @JsonKey(name: "userId") final String? userId}) = _$ReviewerImpl;

  factory _Reviewer.fromJson(Map<String, dynamic> json) =
      _$ReviewerImpl.fromJson;

  @override
  @JsonKey(name: "review")
  String? get review;
  @override
  @JsonKey(name: "title")
  String? get title;
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

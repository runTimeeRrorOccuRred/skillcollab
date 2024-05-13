// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_people_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllPeopleRequestModel _$AllPeopleRequestModelFromJson(
    Map<String, dynamic> json) {
  return _AllPeopleRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AllPeopleRequestModel {
  @JsonKey(name: "searchKey")
  String? get searchKey => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  String? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "timeFilter")
  String? get timeFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllPeopleRequestModelCopyWith<AllPeopleRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllPeopleRequestModelCopyWith<$Res> {
  factory $AllPeopleRequestModelCopyWith(AllPeopleRequestModel value,
          $Res Function(AllPeopleRequestModel) then) =
      _$AllPeopleRequestModelCopyWithImpl<$Res, AllPeopleRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "searchKey") String? searchKey,
      @JsonKey(name: "interests") String? interests,
      @JsonKey(name: "timeFilter") String? timeFilter});
}

/// @nodoc
class _$AllPeopleRequestModelCopyWithImpl<$Res,
        $Val extends AllPeopleRequestModel>
    implements $AllPeopleRequestModelCopyWith<$Res> {
  _$AllPeopleRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AllPeopleRequestModelImplCopyWith<$Res>
    implements $AllPeopleRequestModelCopyWith<$Res> {
  factory _$$AllPeopleRequestModelImplCopyWith(
          _$AllPeopleRequestModelImpl value,
          $Res Function(_$AllPeopleRequestModelImpl) then) =
      __$$AllPeopleRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "searchKey") String? searchKey,
      @JsonKey(name: "interests") String? interests,
      @JsonKey(name: "timeFilter") String? timeFilter});
}

/// @nodoc
class __$$AllPeopleRequestModelImplCopyWithImpl<$Res>
    extends _$AllPeopleRequestModelCopyWithImpl<$Res,
        _$AllPeopleRequestModelImpl>
    implements _$$AllPeopleRequestModelImplCopyWith<$Res> {
  __$$AllPeopleRequestModelImplCopyWithImpl(_$AllPeopleRequestModelImpl _value,
      $Res Function(_$AllPeopleRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
    Object? interests = freezed,
    Object? timeFilter = freezed,
  }) {
    return _then(_$AllPeopleRequestModelImpl(
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
class _$AllPeopleRequestModelImpl implements _AllPeopleRequestModel {
  const _$AllPeopleRequestModelImpl(
      {@JsonKey(name: "searchKey") this.searchKey,
      @JsonKey(name: "interests") this.interests,
      @JsonKey(name: "timeFilter") this.timeFilter});

  factory _$AllPeopleRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllPeopleRequestModelImplFromJson(json);

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
    return 'AllPeopleRequestModel(searchKey: $searchKey, interests: $interests, timeFilter: $timeFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllPeopleRequestModelImpl &&
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
  _$$AllPeopleRequestModelImplCopyWith<_$AllPeopleRequestModelImpl>
      get copyWith => __$$AllPeopleRequestModelImplCopyWithImpl<
          _$AllPeopleRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllPeopleRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AllPeopleRequestModel implements AllPeopleRequestModel {
  const factory _AllPeopleRequestModel(
          {@JsonKey(name: "searchKey") final String? searchKey,
          @JsonKey(name: "interests") final String? interests,
          @JsonKey(name: "timeFilter") final String? timeFilter}) =
      _$AllPeopleRequestModelImpl;

  factory _AllPeopleRequestModel.fromJson(Map<String, dynamic> json) =
      _$AllPeopleRequestModelImpl.fromJson;

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
  _$$AllPeopleRequestModelImplCopyWith<_$AllPeopleRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AllPeopleResponseModel _$AllPeopleResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AllPeopleResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AllPeopleResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<UserData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllPeopleResponseModelCopyWith<AllPeopleResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllPeopleResponseModelCopyWith<$Res> {
  factory $AllPeopleResponseModelCopyWith(AllPeopleResponseModel value,
          $Res Function(AllPeopleResponseModel) then) =
      _$AllPeopleResponseModelCopyWithImpl<$Res, AllPeopleResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<UserData>? data});
}

/// @nodoc
class _$AllPeopleResponseModelCopyWithImpl<$Res,
        $Val extends AllPeopleResponseModel>
    implements $AllPeopleResponseModelCopyWith<$Res> {
  _$AllPeopleResponseModelCopyWithImpl(this._value, this._then);

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
              as List<UserData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllPeopleResponseModelImplCopyWith<$Res>
    implements $AllPeopleResponseModelCopyWith<$Res> {
  factory _$$AllPeopleResponseModelImplCopyWith(
          _$AllPeopleResponseModelImpl value,
          $Res Function(_$AllPeopleResponseModelImpl) then) =
      __$$AllPeopleResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<UserData>? data});
}

/// @nodoc
class __$$AllPeopleResponseModelImplCopyWithImpl<$Res>
    extends _$AllPeopleResponseModelCopyWithImpl<$Res,
        _$AllPeopleResponseModelImpl>
    implements _$$AllPeopleResponseModelImplCopyWith<$Res> {
  __$$AllPeopleResponseModelImplCopyWithImpl(
      _$AllPeopleResponseModelImpl _value,
      $Res Function(_$AllPeopleResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AllPeopleResponseModelImpl(
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
              as List<UserData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllPeopleResponseModelImpl implements _AllPeopleResponseModel {
  const _$AllPeopleResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<UserData>? data})
      : _data = data;

  factory _$AllPeopleResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllPeopleResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<UserData>? _data;
  @override
  @JsonKey(name: "data")
  List<UserData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllPeopleResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllPeopleResponseModelImpl &&
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
  _$$AllPeopleResponseModelImplCopyWith<_$AllPeopleResponseModelImpl>
      get copyWith => __$$AllPeopleResponseModelImplCopyWithImpl<
          _$AllPeopleResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllPeopleResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AllPeopleResponseModel implements AllPeopleResponseModel {
  const factory _AllPeopleResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<UserData>? data}) =
      _$AllPeopleResponseModelImpl;

  factory _AllPeopleResponseModel.fromJson(Map<String, dynamic> json) =
      _$AllPeopleResponseModelImpl.fromJson;

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
  List<UserData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AllPeopleResponseModelImplCopyWith<_$AllPeopleResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
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
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "expertise")
  String? get expertise => throw _privateConstructorUsedError;
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
  @JsonKey(name: "otp")
  int? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "otpExpiry")
  DateTime? get otpExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: "publicPost")
  int? get publicPost => throw _privateConstructorUsedError;
  @JsonKey(name: "premiumPost")
  int? get premiumPost => throw _privateConstructorUsedError;
  @JsonKey(name: "isFollowing")
  bool? get isFollowing => throw _privateConstructorUsedError;
  @JsonKey(name: "uid")
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
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
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") int? otp,
      @JsonKey(name: "otpExpiry") DateTime? otpExpiry,
      @JsonKey(name: "publicPost") int? publicPost,
      @JsonKey(name: "premiumPost") int? premiumPost,
      @JsonKey(name: "isFollowing") bool? isFollowing,
      @JsonKey(name: "uid") String? uid,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? location = freezed,
    Object? expertise = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? publicPost = freezed,
    Object? premiumPost = freezed,
    Object? isFollowing = freezed,
    Object? uid = freezed,
    Object? type = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
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
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publicPost: freezed == publicPost
          ? _value.publicPost
          : publicPost // ignore: cast_nullable_to_non_nullable
              as int?,
      premiumPost: freezed == premiumPost
          ? _value.premiumPost
          : premiumPost // ignore: cast_nullable_to_non_nullable
              as int?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") int? otp,
      @JsonKey(name: "otpExpiry") DateTime? otpExpiry,
      @JsonKey(name: "publicPost") int? publicPost,
      @JsonKey(name: "premiumPost") int? premiumPost,
      @JsonKey(name: "isFollowing") bool? isFollowing,
      @JsonKey(name: "uid") String? uid,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
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
    Object? description = freezed,
    Object? location = freezed,
    Object? expertise = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? publicPost = freezed,
    Object? premiumPost = freezed,
    Object? isFollowing = freezed,
    Object? uid = freezed,
    Object? type = freezed,
  }) {
    return _then(_$UserDataImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
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
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publicPost: freezed == publicPost
          ? _value.publicPost
          : publicPost // ignore: cast_nullable_to_non_nullable
              as int?,
      premiumPost: freezed == premiumPost
          ? _value.premiumPost
          : premiumPost // ignore: cast_nullable_to_non_nullable
              as int?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
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
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "expertise") this.expertise,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry,
      @JsonKey(name: "publicPost") this.publicPost,
      @JsonKey(name: "premiumPost") this.premiumPost,
      @JsonKey(name: "isFollowing") this.isFollowing,
      @JsonKey(name: "uid") this.uid,
      @JsonKey(name: "type") this.type})
      : _deviceToken = deviceToken,
        _interests = interests,
        _subscribers = subscribers,
        _followers = followers;

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

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
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "expertise")
  final String? expertise;
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
  @JsonKey(name: "otp")
  final int? otp;
  @override
  @JsonKey(name: "otpExpiry")
  final DateTime? otpExpiry;
  @override
  @JsonKey(name: "publicPost")
  final int? publicPost;
  @override
  @JsonKey(name: "premiumPost")
  final int? premiumPost;
  @override
  @JsonKey(name: "isFollowing")
  final bool? isFollowing;
  @override
  @JsonKey(name: "uid")
  final String? uid;
  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'UserData(id: $id, role: $role, isEmailVerified: $isEmailVerified, productId: $productId, deviceToken: $deviceToken, firstName: $firstName, lastName: $lastName, userName: $userName, isBan: $isBan, banReason: $banReason, email: $email, phone: $phone, password: $password, coverPhoto: $coverPhoto, profilePhoto: $profilePhoto, description: $description, location: $location, expertise: $expertise, interests: $interests, subscribers: $subscribers, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, otpExpiry: $otpExpiry, publicPost: $publicPost, premiumPost: $premiumPost, isFollowing: $isFollowing, uid: $uid, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.expertise, expertise) ||
                other.expertise == expertise) &&
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
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.otpExpiry, otpExpiry) ||
                other.otpExpiry == otpExpiry) &&
            (identical(other.publicPost, publicPost) ||
                other.publicPost == publicPost) &&
            (identical(other.premiumPost, premiumPost) ||
                other.premiumPost == premiumPost) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.type, type) || other.type == type));
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
        description,
        location,
        expertise,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_followers),
        createdAt,
        updatedAt,
        otp,
        otpExpiry,
        publicPost,
        premiumPost,
        isFollowing,
        uid,
        type
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
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
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "expertise") final String? expertise,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "otp") final int? otp,
      @JsonKey(name: "otpExpiry") final DateTime? otpExpiry,
      @JsonKey(name: "publicPost") final int? publicPost,
      @JsonKey(name: "premiumPost") final int? premiumPost,
      @JsonKey(name: "isFollowing") final bool? isFollowing,
      @JsonKey(name: "uid") final String? uid,
      @JsonKey(name: "type") final String? type}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

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
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "expertise")
  String? get expertise;
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
  @JsonKey(name: "otp")
  int? get otp;
  @override
  @JsonKey(name: "otpExpiry")
  DateTime? get otpExpiry;
  @override
  @JsonKey(name: "publicPost")
  int? get publicPost;
  @override
  @JsonKey(name: "premiumPost")
  int? get premiumPost;
  @override
  @JsonKey(name: "isFollowing")
  bool? get isFollowing;
  @override
  @JsonKey(name: "uid")
  String? get uid;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
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

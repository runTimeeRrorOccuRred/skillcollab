// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_people_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExplorePeopleResponseModel _$ExplorePeopleResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ExplorePeopleResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ExplorePeopleResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<PeopleDatum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplorePeopleResponseModelCopyWith<ExplorePeopleResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorePeopleResponseModelCopyWith<$Res> {
  factory $ExplorePeopleResponseModelCopyWith(ExplorePeopleResponseModel value,
          $Res Function(ExplorePeopleResponseModel) then) =
      _$ExplorePeopleResponseModelCopyWithImpl<$Res,
          ExplorePeopleResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<PeopleDatum>? data});
}

/// @nodoc
class _$ExplorePeopleResponseModelCopyWithImpl<$Res,
        $Val extends ExplorePeopleResponseModel>
    implements $ExplorePeopleResponseModelCopyWith<$Res> {
  _$ExplorePeopleResponseModelCopyWithImpl(this._value, this._then);

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
              as List<PeopleDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExplorePeopleResponseModelImplCopyWith<$Res>
    implements $ExplorePeopleResponseModelCopyWith<$Res> {
  factory _$$ExplorePeopleResponseModelImplCopyWith(
          _$ExplorePeopleResponseModelImpl value,
          $Res Function(_$ExplorePeopleResponseModelImpl) then) =
      __$$ExplorePeopleResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<PeopleDatum>? data});
}

/// @nodoc
class __$$ExplorePeopleResponseModelImplCopyWithImpl<$Res>
    extends _$ExplorePeopleResponseModelCopyWithImpl<$Res,
        _$ExplorePeopleResponseModelImpl>
    implements _$$ExplorePeopleResponseModelImplCopyWith<$Res> {
  __$$ExplorePeopleResponseModelImplCopyWithImpl(
      _$ExplorePeopleResponseModelImpl _value,
      $Res Function(_$ExplorePeopleResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ExplorePeopleResponseModelImpl(
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
              as List<PeopleDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExplorePeopleResponseModelImpl implements _ExplorePeopleResponseModel {
  const _$ExplorePeopleResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<PeopleDatum>? data})
      : _data = data;

  factory _$ExplorePeopleResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExplorePeopleResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<PeopleDatum>? _data;
  @override
  @JsonKey(name: "data")
  List<PeopleDatum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExplorePeopleResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExplorePeopleResponseModelImpl &&
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
  _$$ExplorePeopleResponseModelImplCopyWith<_$ExplorePeopleResponseModelImpl>
      get copyWith => __$$ExplorePeopleResponseModelImplCopyWithImpl<
          _$ExplorePeopleResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExplorePeopleResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ExplorePeopleResponseModel
    implements ExplorePeopleResponseModel {
  const factory _ExplorePeopleResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<PeopleDatum>? data}) =
      _$ExplorePeopleResponseModelImpl;

  factory _ExplorePeopleResponseModel.fromJson(Map<String, dynamic> json) =
      _$ExplorePeopleResponseModelImpl.fromJson;

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
  List<PeopleDatum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ExplorePeopleResponseModelImplCopyWith<_$ExplorePeopleResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PeopleDatum _$PeopleDatumFromJson(Map<String, dynamic> json) {
  return _PeopleDatum.fromJson(json);
}

/// @nodoc
mixin _$PeopleDatum {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "expertise")
  String? get expertise => throw _privateConstructorUsedError;
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
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<Follower>? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  dynamic get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: "follower")
  int? get follower => throw _privateConstructorUsedError;
  @JsonKey(name: "publicPost")
  int? get publicPost => throw _privateConstructorUsedError;
  @JsonKey(name: "premiumPost")
  int? get premiumPost => throw _privateConstructorUsedError;
  @JsonKey(name: "isFollowing")
  bool? get isFollowing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeopleDatumCopyWith<PeopleDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleDatumCopyWith<$Res> {
  factory $PeopleDatumCopyWith(
          PeopleDatum value, $Res Function(PeopleDatum) then) =
      _$PeopleDatumCopyWithImpl<$Res, PeopleDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "follower") int? follower,
      @JsonKey(name: "publicPost") int? publicPost,
      @JsonKey(name: "premiumPost") int? premiumPost,
      @JsonKey(name: "isFollowing") bool? isFollowing});
}

/// @nodoc
class _$PeopleDatumCopyWithImpl<$Res, $Val extends PeopleDatum>
    implements $PeopleDatumCopyWith<$Res> {
  _$PeopleDatumCopyWithImpl(this._value, this._then);

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
    Object? expertise = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? coverPhoto = freezed,
    Object? profilePhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? follower = freezed,
    Object? publicPost = freezed,
    Object? premiumPost = freezed,
    Object? isFollowing = freezed,
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
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<Follower>?,
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
      follower: freezed == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeopleDatumImplCopyWith<$Res>
    implements $PeopleDatumCopyWith<$Res> {
  factory _$$PeopleDatumImplCopyWith(
          _$PeopleDatumImpl value, $Res Function(_$PeopleDatumImpl) then) =
      __$$PeopleDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "follower") int? follower,
      @JsonKey(name: "publicPost") int? publicPost,
      @JsonKey(name: "premiumPost") int? premiumPost,
      @JsonKey(name: "isFollowing") bool? isFollowing});
}

/// @nodoc
class __$$PeopleDatumImplCopyWithImpl<$Res>
    extends _$PeopleDatumCopyWithImpl<$Res, _$PeopleDatumImpl>
    implements _$$PeopleDatumImplCopyWith<$Res> {
  __$$PeopleDatumImplCopyWithImpl(
      _$PeopleDatumImpl _value, $Res Function(_$PeopleDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? expertise = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? coverPhoto = freezed,
    Object? profilePhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? follower = freezed,
    Object? publicPost = freezed,
    Object? premiumPost = freezed,
    Object? isFollowing = freezed,
  }) {
    return _then(_$PeopleDatumImpl(
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
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<Follower>?,
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
      follower: freezed == follower
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeopleDatumImpl implements _PeopleDatum {
  const _$PeopleDatumImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "expertise") this.expertise,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry,
      @JsonKey(name: "follower") this.follower,
      @JsonKey(name: "publicPost") this.publicPost,
      @JsonKey(name: "premiumPost") this.premiumPost,
      @JsonKey(name: "isFollowing") this.isFollowing})
      : _deviceToken = deviceToken,
        _interests = interests,
        _subscribers = subscribers,
        _followers = followers;

  factory _$PeopleDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeopleDatumImplFromJson(json);

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
  @JsonKey(name: "expertise")
  final String? expertise;
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
  @JsonKey(name: "otp")
  final dynamic otp;
  @override
  @JsonKey(name: "otpExpiry")
  final dynamic otpExpiry;
  @override
  @JsonKey(name: "follower")
  final int? follower;
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
  String toString() {
    return 'PeopleDatum(id: $id, role: $role, isEmailVerified: $isEmailVerified, expertise: $expertise, productId: $productId, deviceToken: $deviceToken, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, password: $password, coverPhoto: $coverPhoto, profilePhoto: $profilePhoto, description: $description, location: $location, interests: $interests, subscribers: $subscribers, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, otpExpiry: $otpExpiry, follower: $follower, publicPost: $publicPost, premiumPost: $premiumPost, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeopleDatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.expertise, expertise) ||
                other.expertise == expertise) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other._deviceToken, _deviceToken) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
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
            const DeepCollectionEquality().equals(other.otpExpiry, otpExpiry) &&
            (identical(other.follower, follower) ||
                other.follower == follower) &&
            (identical(other.publicPost, publicPost) ||
                other.publicPost == publicPost) &&
            (identical(other.premiumPost, premiumPost) ||
                other.premiumPost == premiumPost) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        role,
        isEmailVerified,
        expertise,
        const DeepCollectionEquality().hash(productId),
        const DeepCollectionEquality().hash(_deviceToken),
        firstName,
        lastName,
        userName,
        email,
        phone,
        password,
        coverPhoto,
        profilePhoto,
        description,
        location,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_followers),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(otp),
        const DeepCollectionEquality().hash(otpExpiry),
        follower,
        publicPost,
        premiumPost,
        isFollowing
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeopleDatumImplCopyWith<_$PeopleDatumImpl> get copyWith =>
      __$$PeopleDatumImplCopyWithImpl<_$PeopleDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeopleDatumImplToJson(
      this,
    );
  }
}

abstract class _PeopleDatum implements PeopleDatum {
  const factory _PeopleDatum(
          {@JsonKey(name: "_id") final String? id,
          @JsonKey(name: "role") final String? role,
          @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
          @JsonKey(name: "expertise") final String? expertise,
          @JsonKey(name: "productId") final dynamic productId,
          @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
          @JsonKey(name: "firstName") final String? firstName,
          @JsonKey(name: "lastName") final String? lastName,
          @JsonKey(name: "userName") final String? userName,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "phone") final String? phone,
          @JsonKey(name: "password") final String? password,
          @JsonKey(name: "coverPhoto") final String? coverPhoto,
          @JsonKey(name: "profilePhoto") final String? profilePhoto,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "location") final String? location,
          @JsonKey(name: "interests") final List<Interest>? interests,
          @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
          @JsonKey(name: "followers") final List<Follower>? followers,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "otp") final dynamic otp,
          @JsonKey(name: "otpExpiry") final dynamic otpExpiry,
          @JsonKey(name: "follower") final int? follower,
          @JsonKey(name: "publicPost") final int? publicPost,
          @JsonKey(name: "premiumPost") final int? premiumPost,
          @JsonKey(name: "isFollowing") final bool? isFollowing}) =
      _$PeopleDatumImpl;

  factory _PeopleDatum.fromJson(Map<String, dynamic> json) =
      _$PeopleDatumImpl.fromJson;

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
  @JsonKey(name: "expertise")
  String? get expertise;
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
  @JsonKey(name: "interests")
  List<Interest>? get interests;
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
  @JsonKey(name: "otp")
  dynamic get otp;
  @override
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry;
  @override
  @JsonKey(name: "follower")
  int? get follower;
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
  @JsonKey(ignore: true)
  _$$PeopleDatumImplCopyWith<_$PeopleDatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExplorePeopleRequestModel _$ExplorePeopleRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ExplorePeopleRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ExplorePeopleRequestModel {
  @JsonKey(name: "interests")
  List<String>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "searchKey")
  String? get searchKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExplorePeopleRequestModelCopyWith<ExplorePeopleRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExplorePeopleRequestModelCopyWith<$Res> {
  factory $ExplorePeopleRequestModelCopyWith(ExplorePeopleRequestModel value,
          $Res Function(ExplorePeopleRequestModel) then) =
      _$ExplorePeopleRequestModelCopyWithImpl<$Res, ExplorePeopleRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "interests") List<String>? interests,
      @JsonKey(name: "searchKey") String? searchKey});
}

/// @nodoc
class _$ExplorePeopleRequestModelCopyWithImpl<$Res,
        $Val extends ExplorePeopleRequestModel>
    implements $ExplorePeopleRequestModelCopyWith<$Res> {
  _$ExplorePeopleRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interests = freezed,
    Object? searchKey = freezed,
  }) {
    return _then(_value.copyWith(
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExplorePeopleRequestModelImplCopyWith<$Res>
    implements $ExplorePeopleRequestModelCopyWith<$Res> {
  factory _$$ExplorePeopleRequestModelImplCopyWith(
          _$ExplorePeopleRequestModelImpl value,
          $Res Function(_$ExplorePeopleRequestModelImpl) then) =
      __$$ExplorePeopleRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "interests") List<String>? interests,
      @JsonKey(name: "searchKey") String? searchKey});
}

/// @nodoc
class __$$ExplorePeopleRequestModelImplCopyWithImpl<$Res>
    extends _$ExplorePeopleRequestModelCopyWithImpl<$Res,
        _$ExplorePeopleRequestModelImpl>
    implements _$$ExplorePeopleRequestModelImplCopyWith<$Res> {
  __$$ExplorePeopleRequestModelImplCopyWithImpl(
      _$ExplorePeopleRequestModelImpl _value,
      $Res Function(_$ExplorePeopleRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interests = freezed,
    Object? searchKey = freezed,
  }) {
    return _then(_$ExplorePeopleRequestModelImpl(
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExplorePeopleRequestModelImpl implements _ExplorePeopleRequestModel {
  const _$ExplorePeopleRequestModelImpl(
      {@JsonKey(name: "interests") final List<String>? interests,
      @JsonKey(name: "searchKey") this.searchKey})
      : _interests = interests;

  factory _$ExplorePeopleRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExplorePeopleRequestModelImplFromJson(json);

  final List<String>? _interests;
  @override
  @JsonKey(name: "interests")
  List<String>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "searchKey")
  final String? searchKey;

  @override
  String toString() {
    return 'ExplorePeopleRequestModel(interests: $interests, searchKey: $searchKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExplorePeopleRequestModelImpl &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_interests), searchKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExplorePeopleRequestModelImplCopyWith<_$ExplorePeopleRequestModelImpl>
      get copyWith => __$$ExplorePeopleRequestModelImplCopyWithImpl<
          _$ExplorePeopleRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExplorePeopleRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ExplorePeopleRequestModel implements ExplorePeopleRequestModel {
  const factory _ExplorePeopleRequestModel(
          {@JsonKey(name: "interests") final List<String>? interests,
          @JsonKey(name: "searchKey") final String? searchKey}) =
      _$ExplorePeopleRequestModelImpl;

  factory _ExplorePeopleRequestModel.fromJson(Map<String, dynamic> json) =
      _$ExplorePeopleRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "interests")
  List<String>? get interests;
  @override
  @JsonKey(name: "searchKey")
  String? get searchKey;
  @override
  @JsonKey(ignore: true)
  _$$ExplorePeopleRequestModelImplCopyWith<_$ExplorePeopleRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

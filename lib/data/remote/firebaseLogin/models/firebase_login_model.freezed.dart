// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirebaseLoginRequest _$FirebaseLoginRequestFromJson(Map<String, dynamic> json) {
  return _FirebaseLoginRequest.fromJson(json);
}

/// @nodoc
mixin _$FirebaseLoginRequest {
  @JsonKey(name: "uid")
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  String? get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseLoginRequestCopyWith<FirebaseLoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseLoginRequestCopyWith<$Res> {
  factory $FirebaseLoginRequestCopyWith(FirebaseLoginRequest value,
          $Res Function(FirebaseLoginRequest) then) =
      _$FirebaseLoginRequestCopyWithImpl<$Res, FirebaseLoginRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "uid") String? uid,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "deviceToken") String? deviceToken});
}

/// @nodoc
class _$FirebaseLoginRequestCopyWithImpl<$Res,
        $Val extends FirebaseLoginRequest>
    implements $FirebaseLoginRequestCopyWith<$Res> {
  _$FirebaseLoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? isEmailVerified = freezed,
    Object? type = freezed,
    Object? username = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseLoginRequestImplCopyWith<$Res>
    implements $FirebaseLoginRequestCopyWith<$Res> {
  factory _$$FirebaseLoginRequestImplCopyWith(_$FirebaseLoginRequestImpl value,
          $Res Function(_$FirebaseLoginRequestImpl) then) =
      __$$FirebaseLoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uid") String? uid,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "deviceToken") String? deviceToken});
}

/// @nodoc
class __$$FirebaseLoginRequestImplCopyWithImpl<$Res>
    extends _$FirebaseLoginRequestCopyWithImpl<$Res, _$FirebaseLoginRequestImpl>
    implements _$$FirebaseLoginRequestImplCopyWith<$Res> {
  __$$FirebaseLoginRequestImplCopyWithImpl(_$FirebaseLoginRequestImpl _value,
      $Res Function(_$FirebaseLoginRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? isEmailVerified = freezed,
    Object? type = freezed,
    Object? username = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_$FirebaseLoginRequestImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseLoginRequestImpl implements _FirebaseLoginRequest {
  const _$FirebaseLoginRequestImpl(
      {@JsonKey(name: "uid") this.uid,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "deviceToken") this.deviceToken});

  factory _$FirebaseLoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseLoginRequestImplFromJson(json);

  @override
  @JsonKey(name: "uid")
  final String? uid;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "isEmailVerified")
  final bool? isEmailVerified;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "deviceToken")
  final String? deviceToken;

  @override
  String toString() {
    return 'FirebaseLoginRequest(uid: $uid, email: $email, isEmailVerified: $isEmailVerified, type: $type, username: $username, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseLoginRequestImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uid, email, isEmailVerified, type, username, deviceToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseLoginRequestImplCopyWith<_$FirebaseLoginRequestImpl>
      get copyWith =>
          __$$FirebaseLoginRequestImplCopyWithImpl<_$FirebaseLoginRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseLoginRequestImplToJson(
      this,
    );
  }
}

abstract class _FirebaseLoginRequest implements FirebaseLoginRequest {
  const factory _FirebaseLoginRequest(
          {@JsonKey(name: "uid") final String? uid,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "username") final String? username,
          @JsonKey(name: "deviceToken") final String? deviceToken}) =
      _$FirebaseLoginRequestImpl;

  factory _FirebaseLoginRequest.fromJson(Map<String, dynamic> json) =
      _$FirebaseLoginRequestImpl.fromJson;

  @override
  @JsonKey(name: "uid")
  String? get uid;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "deviceToken")
  String? get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseLoginRequestImplCopyWith<_$FirebaseLoginRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FirebaseLoginResponse _$FirebaseLoginResponseFromJson(
    Map<String, dynamic> json) {
  return _FirebaseLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$FirebaseLoginResponse {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "accessToken")
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refreshToken")
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseLoginResponseCopyWith<FirebaseLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseLoginResponseCopyWith<$Res> {
  factory $FirebaseLoginResponseCopyWith(FirebaseLoginResponse value,
          $Res Function(FirebaseLoginResponse) then) =
      _$FirebaseLoginResponseCopyWithImpl<$Res, FirebaseLoginResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "accessToken") String? accessToken,
      @JsonKey(name: "refreshToken") String? refreshToken});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FirebaseLoginResponseCopyWithImpl<$Res,
        $Val extends FirebaseLoginResponse>
    implements $FirebaseLoginResponseCopyWith<$Res> {
  _$FirebaseLoginResponseCopyWithImpl(this._value, this._then);

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
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
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
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$FirebaseLoginResponseImplCopyWith<$Res>
    implements $FirebaseLoginResponseCopyWith<$Res> {
  factory _$$FirebaseLoginResponseImplCopyWith(
          _$FirebaseLoginResponseImpl value,
          $Res Function(_$FirebaseLoginResponseImpl) then) =
      __$$FirebaseLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "accessToken") String? accessToken,
      @JsonKey(name: "refreshToken") String? refreshToken});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FirebaseLoginResponseImplCopyWithImpl<$Res>
    extends _$FirebaseLoginResponseCopyWithImpl<$Res,
        _$FirebaseLoginResponseImpl>
    implements _$$FirebaseLoginResponseImplCopyWith<$Res> {
  __$$FirebaseLoginResponseImplCopyWithImpl(_$FirebaseLoginResponseImpl _value,
      $Res Function(_$FirebaseLoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$FirebaseLoginResponseImpl(
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
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseLoginResponseImpl implements _FirebaseLoginResponse {
  const _$FirebaseLoginResponseImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "accessToken") this.accessToken,
      @JsonKey(name: "refreshToken") this.refreshToken});

  factory _$FirebaseLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseLoginResponseImplFromJson(json);

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
  @JsonKey(name: "accessToken")
  final String? accessToken;
  @override
  @JsonKey(name: "refreshToken")
  final String? refreshToken;

  @override
  String toString() {
    return 'FirebaseLoginResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseLoginResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, isSuccess, data, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseLoginResponseImplCopyWith<_$FirebaseLoginResponseImpl>
      get copyWith => __$$FirebaseLoginResponseImplCopyWithImpl<
          _$FirebaseLoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _FirebaseLoginResponse implements FirebaseLoginResponse {
  const factory _FirebaseLoginResponse(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data,
          @JsonKey(name: "accessToken") final String? accessToken,
          @JsonKey(name: "refreshToken") final String? refreshToken}) =
      _$FirebaseLoginResponseImpl;

  factory _FirebaseLoginResponse.fromJson(Map<String, dynamic> json) =
      _$FirebaseLoginResponseImpl.fromJson;

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
  @JsonKey(name: "accessToken")
  String? get accessToken;
  @override
  @JsonKey(name: "refreshToken")
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseLoginResponseImplCopyWith<_$FirebaseLoginResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "isKyc")
  bool? get isKyc => throw _privateConstructorUsedError;
  @JsonKey(name: "expertise")
  dynamic get expertise => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  dynamic get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  dynamic get coverPhoto => throw _privateConstructorUsedError;
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
  @JsonKey(name: "uid")
  String? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<dynamic>? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  String? get customerId => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "isKyc") bool? isKyc,
      @JsonKey(name: "expertise") dynamic expertise,
      @JsonKey(name: "profilePhoto") dynamic profilePhoto,
      @JsonKey(name: "coverPhoto") dynamic coverPhoto,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") dynamic banReason,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "uid") String? uid,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<dynamic>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "customerId") String? customerId});
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
    Object? uid = freezed,
    Object? email = freezed,
    Object? type = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customerId = freezed,
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
              as dynamic,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
              as List<dynamic>?,
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
      {@JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "isKyc") bool? isKyc,
      @JsonKey(name: "expertise") dynamic expertise,
      @JsonKey(name: "profilePhoto") dynamic profilePhoto,
      @JsonKey(name: "coverPhoto") dynamic coverPhoto,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") dynamic banReason,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "uid") String? uid,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<dynamic>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "customerId") String? customerId});
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
    Object? uid = freezed,
    Object? email = freezed,
    Object? type = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? customerId = freezed,
  }) {
    return _then(_$DataImpl(
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
              as dynamic,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
              as List<dynamic>?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
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
      @JsonKey(name: "uid") this.uid,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<dynamic>? followers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "customerId") this.customerId})
      : _deviceToken = deviceToken,
        _interests = interests,
        _subscribers = subscribers,
        _followers = followers;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

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
  final dynamic expertise;
  @override
  @JsonKey(name: "profilePhoto")
  final dynamic profilePhoto;
  @override
  @JsonKey(name: "coverPhoto")
  final dynamic coverPhoto;
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
  @JsonKey(name: "uid")
  final String? uid;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "type")
  final String? type;
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
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "customerId")
  final String? customerId;

  @override
  String toString() {
    return 'Data(role: $role, isEmailVerified: $isEmailVerified, isKyc: $isKyc, expertise: $expertise, profilePhoto: $profilePhoto, coverPhoto: $coverPhoto, productId: $productId, deviceToken: $deviceToken, isBan: $isBan, banReason: $banReason, id: $id, uid: $uid, email: $email, type: $type, interests: $interests, subscribers: $subscribers, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isKyc, isKyc) || other.isKyc == isKyc) &&
            const DeepCollectionEquality().equals(other.expertise, expertise) &&
            const DeepCollectionEquality()
                .equals(other.profilePhoto, profilePhoto) &&
            const DeepCollectionEquality()
                .equals(other.coverPhoto, coverPhoto) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other._deviceToken, _deviceToken) &&
            (identical(other.isBan, isBan) || other.isBan == isBan) &&
            const DeepCollectionEquality().equals(other.banReason, banReason) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.type, type) || other.type == type) &&
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
                other.customerId == customerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        role,
        isEmailVerified,
        isKyc,
        const DeepCollectionEquality().hash(expertise),
        const DeepCollectionEquality().hash(profilePhoto),
        const DeepCollectionEquality().hash(coverPhoto),
        const DeepCollectionEquality().hash(productId),
        const DeepCollectionEquality().hash(_deviceToken),
        isBan,
        const DeepCollectionEquality().hash(banReason),
        id,
        uid,
        email,
        type,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_followers),
        createdAt,
        updatedAt,
        customerId
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
      {@JsonKey(name: "role") final String? role,
      @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
      @JsonKey(name: "isKyc") final bool? isKyc,
      @JsonKey(name: "expertise") final dynamic expertise,
      @JsonKey(name: "profilePhoto") final dynamic profilePhoto,
      @JsonKey(name: "coverPhoto") final dynamic coverPhoto,
      @JsonKey(name: "productId") final dynamic productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "isBan") final bool? isBan,
      @JsonKey(name: "banReason") final dynamic banReason,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "uid") final String? uid,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<dynamic>? followers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "customerId") final String? customerId}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

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
  dynamic get expertise;
  @override
  @JsonKey(name: "profilePhoto")
  dynamic get profilePhoto;
  @override
  @JsonKey(name: "coverPhoto")
  dynamic get coverPhoto;
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
  @JsonKey(name: "uid")
  String? get uid;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
  @override
  @JsonKey(name: "followers")
  List<dynamic>? get followers;
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
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

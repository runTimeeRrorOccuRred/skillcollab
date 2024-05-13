// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_all_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExploreAllResponseModel _$ExploreAllResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ExploreAllResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ExploreAllResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<ExploreData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExploreAllResponseModelCopyWith<ExploreAllResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreAllResponseModelCopyWith<$Res> {
  factory $ExploreAllResponseModelCopyWith(ExploreAllResponseModel value,
          $Res Function(ExploreAllResponseModel) then) =
      _$ExploreAllResponseModelCopyWithImpl<$Res, ExploreAllResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<ExploreData>? data});
}

/// @nodoc
class _$ExploreAllResponseModelCopyWithImpl<$Res,
        $Val extends ExploreAllResponseModel>
    implements $ExploreAllResponseModelCopyWith<$Res> {
  _$ExploreAllResponseModelCopyWithImpl(this._value, this._then);

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
              as List<ExploreData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExploreAllResponseModelImplCopyWith<$Res>
    implements $ExploreAllResponseModelCopyWith<$Res> {
  factory _$$ExploreAllResponseModelImplCopyWith(
          _$ExploreAllResponseModelImpl value,
          $Res Function(_$ExploreAllResponseModelImpl) then) =
      __$$ExploreAllResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<ExploreData>? data});
}

/// @nodoc
class __$$ExploreAllResponseModelImplCopyWithImpl<$Res>
    extends _$ExploreAllResponseModelCopyWithImpl<$Res,
        _$ExploreAllResponseModelImpl>
    implements _$$ExploreAllResponseModelImplCopyWith<$Res> {
  __$$ExploreAllResponseModelImplCopyWithImpl(
      _$ExploreAllResponseModelImpl _value,
      $Res Function(_$ExploreAllResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ExploreAllResponseModelImpl(
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
              as List<ExploreData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExploreAllResponseModelImpl implements _ExploreAllResponseModel {
  const _$ExploreAllResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<ExploreData>? data})
      : _data = data;

  factory _$ExploreAllResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExploreAllResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<ExploreData>? _data;
  @override
  @JsonKey(name: "data")
  List<ExploreData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExploreAllResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreAllResponseModelImpl &&
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
  _$$ExploreAllResponseModelImplCopyWith<_$ExploreAllResponseModelImpl>
      get copyWith => __$$ExploreAllResponseModelImplCopyWithImpl<
          _$ExploreAllResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExploreAllResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ExploreAllResponseModel implements ExploreAllResponseModel {
  const factory _ExploreAllResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<ExploreData>? data}) =
      _$ExploreAllResponseModelImpl;

  factory _ExploreAllResponseModel.fromJson(Map<String, dynamic> json) =
      _$ExploreAllResponseModelImpl.fromJson;

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
  List<ExploreData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ExploreAllResponseModelImplCopyWith<_$ExploreAllResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExploreData _$ExploreDataFromJson(Map<String, dynamic> json) {
  return _ExploreData.fromJson(json);
}

/// @nodoc
mixin _$ExploreData {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
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
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "isBan")
  bool? get isBan => throw _privateConstructorUsedError;
  @JsonKey(name: "banReason")
  dynamic get banReason => throw _privateConstructorUsedError;
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
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<Subscriber?>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<Follower>? get followers => throw _privateConstructorUsedError;
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
  @JsonKey(name: "publicPost")
  int? get publicPost => throw _privateConstructorUsedError;
  @JsonKey(name: "premiumPost")
  int? get premiumPost => throw _privateConstructorUsedError;
  @JsonKey(name: "exploreType")
  String? get exploreType => throw _privateConstructorUsedError;
  @JsonKey(name: "isFollowing")
  bool? get isFollowing => throw _privateConstructorUsedError;
  @JsonKey(name: "postImage")
  String? get postImage => throw _privateConstructorUsedError;
  @JsonKey(name: "slug")
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: "checkIn")
  String? get checkIn => throw _privateConstructorUsedError;
  @JsonKey(name: "checkInImage")
  String? get checkInImage => throw _privateConstructorUsedError;
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
  @JsonKey(name: "userId")
  UserId? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "comments")
  List<ExploreComment?>? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: "commentCounts")
  int? get commentCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "likeDislike")
  LikeDislike? get likeDislike => throw _privateConstructorUsedError;
  @JsonKey(name: "groupPhoto")
  String? get groupPhoto => throw _privateConstructorUsedError;
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
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "rules")
  String? get rules => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewer")
  List<Reviewer?>? get reviewer => throw _privateConstructorUsedError;
  @JsonKey(name: "likeCounts")
  int? get likeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "dislikeCounts")
  int? get dislikeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "averageRating")
  double? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExploreDataCopyWith<ExploreData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreDataCopyWith<$Res> {
  factory $ExploreDataCopyWith(
          ExploreData value, $Res Function(ExploreData) then) =
      _$ExploreDataCopyWithImpl<$Res, ExploreData>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "isKyc") bool? isKyc,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "productId") String? productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") dynamic banReason,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<Subscriber?>? subscribers,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "accountId") String? accountId,
      @JsonKey(name: "publicPost") int? publicPost,
      @JsonKey(name: "premiumPost") int? premiumPost,
      @JsonKey(name: "exploreType") String? exploreType,
      @JsonKey(name: "isFollowing") bool? isFollowing,
      @JsonKey(name: "postImage") String? postImage,
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
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "comments") List<ExploreComment?>? comments,
      @JsonKey(name: "commentCounts") int? commentCounts,
      @JsonKey(name: "likeDislike") LikeDislike? likeDislike,
      @JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "one_month_subscription_price")
      dynamic oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      dynamic sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      dynamic twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") dynamic promoCode,
      @JsonKey(name: "discount") dynamic discount,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "rules") String? rules,
      @JsonKey(name: "reviewer") List<Reviewer?>? reviewer,
      @JsonKey(name: "likeCounts") int? likeCounts,
      @JsonKey(name: "dislikeCounts") int? dislikeCounts,
      @JsonKey(name: "averageRating") double? averageRating,
      @JsonKey(name: "rating") double? rating});

  $GroupIdCopyWith<$Res>? get groupId;
  $UserIdCopyWith<$Res>? get userId;
  $LikeDislikeCopyWith<$Res>? get likeDislike;
}

/// @nodoc
class _$ExploreDataCopyWithImpl<$Res, $Val extends ExploreData>
    implements $ExploreDataCopyWith<$Res> {
  _$ExploreDataCopyWithImpl(this._value, this._then);

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
    Object? isKyc = freezed,
    Object? expertise = freezed,
    Object? profilePhoto = freezed,
    Object? coverPhoto = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? isBan = freezed,
    Object? banReason = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
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
    Object? publicPost = freezed,
    Object? premiumPost = freezed,
    Object? exploreType = freezed,
    Object? isFollowing = freezed,
    Object? postImage = freezed,
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
    Object? userId = freezed,
    Object? title = freezed,
    Object? comments = freezed,
    Object? commentCounts = freezed,
    Object? likeDislike = freezed,
    Object? groupPhoto = freezed,
    Object? oneMonthSubscriptionPrice = freezed,
    Object? sixMonthSubscriptionPrice = freezed,
    Object? twelveMonthSubscriptionPrice = freezed,
    Object? promoCode = freezed,
    Object? discount = freezed,
    Object? name = freezed,
    Object? rules = freezed,
    Object? reviewer = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
    Object? averageRating = freezed,
    Object? rating = freezed,
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
              as String?,
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
              as List<Subscriber?>?,
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
      publicPost: freezed == publicPost
          ? _value.publicPost
          : publicPost // ignore: cast_nullable_to_non_nullable
              as int?,
      premiumPost: freezed == premiumPost
          ? _value.premiumPost
          : premiumPost // ignore: cast_nullable_to_non_nullable
              as int?,
      exploreType: freezed == exploreType
          ? _value.exploreType
          : exploreType // ignore: cast_nullable_to_non_nullable
              as String?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<ExploreComment?>?,
      commentCounts: freezed == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeDislike: freezed == likeDislike
          ? _value.likeDislike
          : likeDislike // ignore: cast_nullable_to_non_nullable
              as LikeDislike?,
      groupPhoto: freezed == groupPhoto
          ? _value.groupPhoto
          : groupPhoto // ignore: cast_nullable_to_non_nullable
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<Reviewer?>?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$ExploreDataImplCopyWith<$Res>
    implements $ExploreDataCopyWith<$Res> {
  factory _$$ExploreDataImplCopyWith(
          _$ExploreDataImpl value, $Res Function(_$ExploreDataImpl) then) =
      __$$ExploreDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "isKyc") bool? isKyc,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "productId") String? productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") dynamic banReason,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<Subscriber?>? subscribers,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "accountId") String? accountId,
      @JsonKey(name: "publicPost") int? publicPost,
      @JsonKey(name: "premiumPost") int? premiumPost,
      @JsonKey(name: "exploreType") String? exploreType,
      @JsonKey(name: "isFollowing") bool? isFollowing,
      @JsonKey(name: "postImage") String? postImage,
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
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "comments") List<ExploreComment?>? comments,
      @JsonKey(name: "commentCounts") int? commentCounts,
      @JsonKey(name: "likeDislike") LikeDislike? likeDislike,
      @JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "one_month_subscription_price")
      dynamic oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      dynamic sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      dynamic twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") dynamic promoCode,
      @JsonKey(name: "discount") dynamic discount,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "rules") String? rules,
      @JsonKey(name: "reviewer") List<Reviewer?>? reviewer,
      @JsonKey(name: "likeCounts") int? likeCounts,
      @JsonKey(name: "dislikeCounts") int? dislikeCounts,
      @JsonKey(name: "averageRating") double? averageRating,
      @JsonKey(name: "rating") double? rating});

  @override
  $GroupIdCopyWith<$Res>? get groupId;
  @override
  $UserIdCopyWith<$Res>? get userId;
  @override
  $LikeDislikeCopyWith<$Res>? get likeDislike;
}

/// @nodoc
class __$$ExploreDataImplCopyWithImpl<$Res>
    extends _$ExploreDataCopyWithImpl<$Res, _$ExploreDataImpl>
    implements _$$ExploreDataImplCopyWith<$Res> {
  __$$ExploreDataImplCopyWithImpl(
      _$ExploreDataImpl _value, $Res Function(_$ExploreDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
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
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
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
    Object? publicPost = freezed,
    Object? premiumPost = freezed,
    Object? exploreType = freezed,
    Object? isFollowing = freezed,
    Object? postImage = freezed,
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
    Object? userId = freezed,
    Object? title = freezed,
    Object? comments = freezed,
    Object? commentCounts = freezed,
    Object? likeDislike = freezed,
    Object? groupPhoto = freezed,
    Object? oneMonthSubscriptionPrice = freezed,
    Object? sixMonthSubscriptionPrice = freezed,
    Object? twelveMonthSubscriptionPrice = freezed,
    Object? promoCode = freezed,
    Object? discount = freezed,
    Object? name = freezed,
    Object? rules = freezed,
    Object? reviewer = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
    Object? averageRating = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$ExploreDataImpl(
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
              as String?,
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
              as List<Subscriber?>?,
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
      publicPost: freezed == publicPost
          ? _value.publicPost
          : publicPost // ignore: cast_nullable_to_non_nullable
              as int?,
      premiumPost: freezed == premiumPost
          ? _value.premiumPost
          : premiumPost // ignore: cast_nullable_to_non_nullable
              as int?,
      exploreType: freezed == exploreType
          ? _value.exploreType
          : exploreType // ignore: cast_nullable_to_non_nullable
              as String?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<ExploreComment?>?,
      commentCounts: freezed == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeDislike: freezed == likeDislike
          ? _value.likeDislike
          : likeDislike // ignore: cast_nullable_to_non_nullable
              as LikeDislike?,
      groupPhoto: freezed == groupPhoto
          ? _value.groupPhoto
          : groupPhoto // ignore: cast_nullable_to_non_nullable
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewer: freezed == reviewer
          ? _value._reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<Reviewer?>?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExploreDataImpl implements _ExploreData {
  const _$ExploreDataImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "isKyc") this.isKyc,
      @JsonKey(name: "expertise") this.expertise,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "isBan") this.isBan,
      @JsonKey(name: "banReason") this.banReason,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<Subscriber?>? subscribers,
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "customerId") this.customerId,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry,
      @JsonKey(name: "accountId") this.accountId,
      @JsonKey(name: "publicPost") this.publicPost,
      @JsonKey(name: "premiumPost") this.premiumPost,
      @JsonKey(name: "exploreType") this.exploreType,
      @JsonKey(name: "isFollowing") this.isFollowing,
      @JsonKey(name: "postImage") this.postImage,
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
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "comments") final List<ExploreComment?>? comments,
      @JsonKey(name: "commentCounts") this.commentCounts,
      @JsonKey(name: "likeDislike") this.likeDislike,
      @JsonKey(name: "groupPhoto") this.groupPhoto,
      @JsonKey(name: "one_month_subscription_price")
      this.oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      this.sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      this.twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") this.promoCode,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "rules") this.rules,
      @JsonKey(name: "reviewer") final List<Reviewer?>? reviewer,
      @JsonKey(name: "likeCounts") this.likeCounts,
      @JsonKey(name: "dislikeCounts") this.dislikeCounts,
      @JsonKey(name: "averageRating") this.averageRating,
      @JsonKey(name: "rating") this.rating})
      : _deviceToken = deviceToken,
        _interests = interests,
        _subscribers = subscribers,
        _followers = followers,
        _hide = hide,
        _comments = comments,
        _reviewer = reviewer;

  factory _$ExploreDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExploreDataImplFromJson(json);

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
  final String? productId;
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
  @JsonKey(name: "publicPost")
  final int? publicPost;
  @override
  @JsonKey(name: "premiumPost")
  final int? premiumPost;
  @override
  @JsonKey(name: "exploreType")
  final String? exploreType;
  @override
  @JsonKey(name: "isFollowing")
  final bool? isFollowing;
  @override
  @JsonKey(name: "postImage")
  final String? postImage;
  @override
  @JsonKey(name: "slug")
  final String? slug;
  @override
  @JsonKey(name: "checkIn")
  final String? checkIn;
  @override
  @JsonKey(name: "checkInImage")
  final String? checkInImage;
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
  @JsonKey(name: "userId")
  final UserId? userId;
  @override
  @JsonKey(name: "title")
  final String? title;
  final List<ExploreComment?>? _comments;
  @override
  @JsonKey(name: "comments")
  List<ExploreComment?>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "commentCounts")
  final int? commentCounts;
  @override
  @JsonKey(name: "likeDislike")
  final LikeDislike? likeDislike;
  @override
  @JsonKey(name: "groupPhoto")
  final String? groupPhoto;
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
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "rules")
  final String? rules;
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
  @JsonKey(name: "likeCounts")
  final int? likeCounts;
  @override
  @JsonKey(name: "dislikeCounts")
  final int? dislikeCounts;
  @override
  @JsonKey(name: "averageRating")
  final double? averageRating;
  @override
  @JsonKey(name: "rating")
  final double? rating;

  @override
  String toString() {
    return 'ExploreData(id: $id, role: $role, isEmailVerified: $isEmailVerified, isKyc: $isKyc, expertise: $expertise, profilePhoto: $profilePhoto, coverPhoto: $coverPhoto, productId: $productId, deviceToken: $deviceToken, isBan: $isBan, banReason: $banReason, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, password: $password, description: $description, location: $location, interests: $interests, subscribers: $subscribers, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, otp: $otp, otpExpiry: $otpExpiry, accountId: $accountId, publicPost: $publicPost, premiumPost: $premiumPost, exploreType: $exploreType, isFollowing: $isFollowing, postImage: $postImage, slug: $slug, checkIn: $checkIn, checkInImage: $checkInImage, groupId: $groupId, isActive: $isActive, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, privacy: $privacy, hide: $hide, userId: $userId, title: $title, comments: $comments, commentCounts: $commentCounts, likeDislike: $likeDislike, groupPhoto: $groupPhoto, oneMonthSubscriptionPrice: $oneMonthSubscriptionPrice, sixMonthSubscriptionPrice: $sixMonthSubscriptionPrice, twelveMonthSubscriptionPrice: $twelveMonthSubscriptionPrice, promoCode: $promoCode, discount: $discount, name: $name, rules: $rules, reviewer: $reviewer, likeCounts: $likeCounts, dislikeCounts: $dislikeCounts, averageRating: $averageRating, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreDataImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            const DeepCollectionEquality()
                .equals(other._deviceToken, _deviceToken) &&
            (identical(other.isBan, isBan) || other.isBan == isBan) &&
            const DeepCollectionEquality().equals(other.banReason, banReason) &&
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
                other.accountId == accountId) &&
            (identical(other.publicPost, publicPost) ||
                other.publicPost == publicPost) &&
            (identical(other.premiumPost, premiumPost) ||
                other.premiumPost == premiumPost) &&
            (identical(other.exploreType, exploreType) ||
                other.exploreType == exploreType) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
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
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.commentCounts, commentCounts) ||
                other.commentCounts == commentCounts) &&
            (identical(other.likeDislike, likeDislike) ||
                other.likeDislike == likeDislike) &&
            (identical(other.groupPhoto, groupPhoto) ||
                other.groupPhoto == groupPhoto) &&
            const DeepCollectionEquality().equals(
                other.oneMonthSubscriptionPrice, oneMonthSubscriptionPrice) &&
            const DeepCollectionEquality().equals(
                other.sixMonthSubscriptionPrice, sixMonthSubscriptionPrice) &&
            const DeepCollectionEquality().equals(
                other.twelveMonthSubscriptionPrice,
                twelveMonthSubscriptionPrice) &&
            const DeepCollectionEquality().equals(other.promoCode, promoCode) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rules, rules) || other.rules == rules) &&
            const DeepCollectionEquality().equals(other._reviewer, _reviewer) &&
            (identical(other.likeCounts, likeCounts) ||
                other.likeCounts == likeCounts) &&
            (identical(other.dislikeCounts, dislikeCounts) ||
                other.dislikeCounts == dislikeCounts) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        role,
        isEmailVerified,
        isKyc,
        expertise,
        profilePhoto,
        coverPhoto,
        productId,
        const DeepCollectionEquality().hash(_deviceToken),
        isBan,
        const DeepCollectionEquality().hash(banReason),
        firstName,
        lastName,
        userName,
        email,
        phone,
        password,
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
        accountId,
        publicPost,
        premiumPost,
        exploreType,
        isFollowing,
        postImage,
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
        userId,
        title,
        const DeepCollectionEquality().hash(_comments),
        commentCounts,
        likeDislike,
        groupPhoto,
        const DeepCollectionEquality().hash(oneMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(sixMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(twelveMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(promoCode),
        const DeepCollectionEquality().hash(discount),
        name,
        rules,
        const DeepCollectionEquality().hash(_reviewer),
        likeCounts,
        dislikeCounts,
        averageRating,
        rating
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExploreDataImplCopyWith<_$ExploreDataImpl> get copyWith =>
      __$$ExploreDataImplCopyWithImpl<_$ExploreDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExploreDataImplToJson(
      this,
    );
  }
}

abstract class _ExploreData implements ExploreData {
  const factory _ExploreData(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "role") final String? role,
      @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
      @JsonKey(name: "isKyc") final bool? isKyc,
      @JsonKey(name: "expertise") final String? expertise,
      @JsonKey(name: "profilePhoto") final String? profilePhoto,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "productId") final String? productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "isBan") final bool? isBan,
      @JsonKey(name: "banReason") final dynamic banReason,
      @JsonKey(name: "firstName") final String? firstName,
      @JsonKey(name: "lastName") final String? lastName,
      @JsonKey(name: "userName") final String? userName,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "password") final String? password,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<Subscriber?>? subscribers,
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "customerId") final String? customerId,
      @JsonKey(name: "otp") final dynamic otp,
      @JsonKey(name: "otpExpiry") final dynamic otpExpiry,
      @JsonKey(name: "accountId") final String? accountId,
      @JsonKey(name: "publicPost") final int? publicPost,
      @JsonKey(name: "premiumPost") final int? premiumPost,
      @JsonKey(name: "exploreType") final String? exploreType,
      @JsonKey(name: "isFollowing") final bool? isFollowing,
      @JsonKey(name: "postImage") final String? postImage,
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
      @JsonKey(name: "userId") final UserId? userId,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "comments") final List<ExploreComment?>? comments,
      @JsonKey(name: "commentCounts") final int? commentCounts,
      @JsonKey(name: "likeDislike") final LikeDislike? likeDislike,
      @JsonKey(name: "groupPhoto") final String? groupPhoto,
      @JsonKey(name: "one_month_subscription_price")
      final dynamic oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      final dynamic sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      final dynamic twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") final dynamic promoCode,
      @JsonKey(name: "discount") final dynamic discount,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "rules") final String? rules,
      @JsonKey(name: "reviewer") final List<Reviewer?>? reviewer,
      @JsonKey(name: "likeCounts") final int? likeCounts,
      @JsonKey(name: "dislikeCounts") final int? dislikeCounts,
      @JsonKey(name: "averageRating") final double? averageRating,
      @JsonKey(name: "rating") final double? rating}) = _$ExploreDataImpl;

  factory _ExploreData.fromJson(Map<String, dynamic> json) =
      _$ExploreDataImpl.fromJson;

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
  String? get productId;
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
  List<Subscriber?>? get subscribers;
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
  @JsonKey(name: "publicPost")
  int? get publicPost;
  @override
  @JsonKey(name: "premiumPost")
  int? get premiumPost;
  @override
  @JsonKey(name: "exploreType")
  String? get exploreType;
  @override
  @JsonKey(name: "isFollowing")
  bool? get isFollowing;
  @override
  @JsonKey(name: "postImage")
  String? get postImage;
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
  @JsonKey(name: "userId")
  UserId? get userId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "comments")
  List<ExploreComment?>? get comments;
  @override
  @JsonKey(name: "commentCounts")
  int? get commentCounts;
  @override
  @JsonKey(name: "likeDislike")
  LikeDislike? get likeDislike;
  @override
  @JsonKey(name: "groupPhoto")
  String? get groupPhoto;
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
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "rules")
  String? get rules;
  @override
  @JsonKey(name: "reviewer")
  List<Reviewer?>? get reviewer;
  @override
  @JsonKey(name: "likeCounts")
  int? get likeCounts;
  @override
  @JsonKey(name: "dislikeCounts")
  int? get dislikeCounts;
  @override
  @JsonKey(name: "averageRating")
  double? get averageRating;
  @override
  @JsonKey(name: "rating")
  double? get rating;
  @override
  @JsonKey(ignore: true)
  _$$ExploreDataImplCopyWith<_$ExploreDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExploreComment _$ExploreCommentFromJson(Map<String, dynamic> json) {
  return _ExploreComment.fromJson(json);
}

/// @nodoc
mixin _$ExploreComment {
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
  $ExploreCommentCopyWith<ExploreComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreCommentCopyWith<$Res> {
  factory $ExploreCommentCopyWith(
          ExploreComment value, $Res Function(ExploreComment) then) =
      _$ExploreCommentCopyWithImpl<$Res, ExploreComment>;
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
class _$ExploreCommentCopyWithImpl<$Res, $Val extends ExploreComment>
    implements $ExploreCommentCopyWith<$Res> {
  _$ExploreCommentCopyWithImpl(this._value, this._then);

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
abstract class _$$ExploreCommentImplCopyWith<$Res>
    implements $ExploreCommentCopyWith<$Res> {
  factory _$$ExploreCommentImplCopyWith(_$ExploreCommentImpl value,
          $Res Function(_$ExploreCommentImpl) then) =
      __$$ExploreCommentImplCopyWithImpl<$Res>;
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
class __$$ExploreCommentImplCopyWithImpl<$Res>
    extends _$ExploreCommentCopyWithImpl<$Res, _$ExploreCommentImpl>
    implements _$$ExploreCommentImplCopyWith<$Res> {
  __$$ExploreCommentImplCopyWithImpl(
      _$ExploreCommentImpl _value, $Res Function(_$ExploreCommentImpl) _then)
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
    return _then(_$ExploreCommentImpl(
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
class _$ExploreCommentImpl implements _ExploreComment {
  const _$ExploreCommentImpl(
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

  factory _$ExploreCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExploreCommentImplFromJson(json);

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
    return 'ExploreComment(id: $id, postId: $postId, tutorialId: $tutorialId, questionId: $questionId, parentId: $parentId, userId: $userId, comment: $comment, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreCommentImpl &&
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
  _$$ExploreCommentImplCopyWith<_$ExploreCommentImpl> get copyWith =>
      __$$ExploreCommentImplCopyWithImpl<_$ExploreCommentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExploreCommentImplToJson(
      this,
    );
  }
}

abstract class _ExploreComment implements ExploreComment {
  const factory _ExploreComment(
          {@JsonKey(name: "_id") final String? id,
          @JsonKey(name: "postId") final String? postId,
          @JsonKey(name: "tutorialId") final dynamic tutorialId,
          @JsonKey(name: "questionId") final dynamic questionId,
          @JsonKey(name: "parentId") final dynamic parentId,
          @JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "comment") final String? comment,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt}) =
      _$ExploreCommentImpl;

  factory _ExploreComment.fromJson(Map<String, dynamic> json) =
      _$ExploreCommentImpl.fromJson;

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
  _$$ExploreCommentImplCopyWith<_$ExploreCommentImpl> get copyWith =>
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
  @JsonKey(name: "isKyc")
  bool? get isKyc => throw _privateConstructorUsedError;
  @JsonKey(name: "expertise")
  String? get expertise => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "isBan")
  bool? get isBan => throw _privateConstructorUsedError;
  @JsonKey(name: "banReason")
  dynamic get banReason => throw _privateConstructorUsedError;
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
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest?>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<Subscriber?>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<Follower>? get followers => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "isKyc") bool? isKyc,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "productId") String? productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") dynamic banReason,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "subscribers") List<Subscriber?>? subscribers,
      @JsonKey(name: "followers") List<Follower>? followers,
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
    Object? id = freezed,
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
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
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
              as String?,
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
              as List<Subscriber?>?,
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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "isKyc") bool? isKyc,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "productId") String? productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "isBan") bool? isBan,
      @JsonKey(name: "banReason") dynamic banReason,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "subscribers") List<Subscriber?>? subscribers,
      @JsonKey(name: "followers") List<Follower>? followers,
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
    Object? id = freezed,
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
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
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
              as String?,
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
              as List<Subscriber?>?,
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
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "isKyc") this.isKyc,
      @JsonKey(name: "expertise") this.expertise,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "isBan") this.isBan,
      @JsonKey(name: "banReason") this.banReason,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "subscribers") final List<Subscriber?>? subscribers,
      @JsonKey(name: "followers") final List<Follower>? followers,
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
  @JsonKey(name: "_id")
  final String? id;
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
  final String? productId;
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
    return 'UserId(id: $id, role: $role, isEmailVerified: $isEmailVerified, isKyc: $isKyc, expertise: $expertise, profilePhoto: $profilePhoto, coverPhoto: $coverPhoto, productId: $productId, deviceToken: $deviceToken, isBan: $isBan, banReason: $banReason, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, password: $password, description: $description, location: $location, interests: $interests, subscribers: $subscribers, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, otp: $otp, otpExpiry: $otpExpiry, accountId: $accountId)';
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
            (identical(other.isKyc, isKyc) || other.isKyc == isKyc) &&
            (identical(other.expertise, expertise) ||
                other.expertise == expertise) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            const DeepCollectionEquality()
                .equals(other._deviceToken, _deviceToken) &&
            (identical(other.isBan, isBan) || other.isBan == isBan) &&
            const DeepCollectionEquality().equals(other.banReason, banReason) &&
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
        id,
        role,
        isEmailVerified,
        isKyc,
        expertise,
        profilePhoto,
        coverPhoto,
        productId,
        const DeepCollectionEquality().hash(_deviceToken),
        isBan,
        const DeepCollectionEquality().hash(banReason),
        firstName,
        lastName,
        userName,
        email,
        phone,
        password,
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
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "role") final String? role,
      @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
      @JsonKey(name: "isKyc") final bool? isKyc,
      @JsonKey(name: "expertise") final String? expertise,
      @JsonKey(name: "profilePhoto") final String? profilePhoto,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "productId") final String? productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "isBan") final bool? isBan,
      @JsonKey(name: "banReason") final dynamic banReason,
      @JsonKey(name: "firstName") final String? firstName,
      @JsonKey(name: "lastName") final String? lastName,
      @JsonKey(name: "userName") final String? userName,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "password") final String? password,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "subscribers") final List<Subscriber?>? subscribers,
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "customerId") final String? customerId,
      @JsonKey(name: "otp") final dynamic otp,
      @JsonKey(name: "otpExpiry") final dynamic otpExpiry,
      @JsonKey(name: "accountId") final String? accountId}) = _$UserIdImpl;

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
  String? get productId;
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
  List<Subscriber?>? get subscribers;
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

Subscriber _$SubscriberFromJson(Map<String, dynamic> json) {
  return _Subscriber.fromJson(json);
}

/// @nodoc
mixin _$Subscriber {
  @JsonKey(name: "subscription_id")
  String? get subscriptionId => throw _privateConstructorUsedError;
  @JsonKey(name: "isPaid")
  bool? get isPaid => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  String? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "expirationDate")
  DateTime? get expirationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriberCopyWith<Subscriber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriberCopyWith<$Res> {
  factory $SubscriberCopyWith(
          Subscriber value, $Res Function(Subscriber) then) =
      _$SubscriberCopyWithImpl<$Res, Subscriber>;
  @useResult
  $Res call(
      {@JsonKey(name: "subscription_id") String? subscriptionId,
      @JsonKey(name: "isPaid") bool? isPaid,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "user") String? user,
      @JsonKey(name: "expirationDate") DateTime? expirationDate});
}

/// @nodoc
class _$SubscriberCopyWithImpl<$Res, $Val extends Subscriber>
    implements $SubscriberCopyWith<$Res> {
  _$SubscriberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = freezed,
    Object? isPaid = freezed,
    Object? id = freezed,
    Object? user = freezed,
    Object? expirationDate = freezed,
  }) {
    return _then(_value.copyWith(
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriberImplCopyWith<$Res>
    implements $SubscriberCopyWith<$Res> {
  factory _$$SubscriberImplCopyWith(
          _$SubscriberImpl value, $Res Function(_$SubscriberImpl) then) =
      __$$SubscriberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "subscription_id") String? subscriptionId,
      @JsonKey(name: "isPaid") bool? isPaid,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "user") String? user,
      @JsonKey(name: "expirationDate") DateTime? expirationDate});
}

/// @nodoc
class __$$SubscriberImplCopyWithImpl<$Res>
    extends _$SubscriberCopyWithImpl<$Res, _$SubscriberImpl>
    implements _$$SubscriberImplCopyWith<$Res> {
  __$$SubscriberImplCopyWithImpl(
      _$SubscriberImpl _value, $Res Function(_$SubscriberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = freezed,
    Object? isPaid = freezed,
    Object? id = freezed,
    Object? user = freezed,
    Object? expirationDate = freezed,
  }) {
    return _then(_$SubscriberImpl(
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriberImpl implements _Subscriber {
  const _$SubscriberImpl(
      {@JsonKey(name: "subscription_id") this.subscriptionId,
      @JsonKey(name: "isPaid") this.isPaid,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "user") this.user,
      @JsonKey(name: "expirationDate") this.expirationDate});

  factory _$SubscriberImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriberImplFromJson(json);

  @override
  @JsonKey(name: "subscription_id")
  final String? subscriptionId;
  @override
  @JsonKey(name: "isPaid")
  final bool? isPaid;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "user")
  final String? user;
  @override
  @JsonKey(name: "expirationDate")
  final DateTime? expirationDate;

  @override
  String toString() {
    return 'Subscriber(subscriptionId: $subscriptionId, isPaid: $isPaid, id: $id, user: $user, expirationDate: $expirationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriberImpl &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, subscriptionId, isPaid, id, user, expirationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriberImplCopyWith<_$SubscriberImpl> get copyWith =>
      __$$SubscriberImplCopyWithImpl<_$SubscriberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriberImplToJson(
      this,
    );
  }
}

abstract class _Subscriber implements Subscriber {
  const factory _Subscriber(
          {@JsonKey(name: "subscription_id") final String? subscriptionId,
          @JsonKey(name: "isPaid") final bool? isPaid,
          @JsonKey(name: "_id") final String? id,
          @JsonKey(name: "user") final String? user,
          @JsonKey(name: "expirationDate") final DateTime? expirationDate}) =
      _$SubscriberImpl;

  factory _Subscriber.fromJson(Map<String, dynamic> json) =
      _$SubscriberImpl.fromJson;

  @override
  @JsonKey(name: "subscription_id")
  String? get subscriptionId;
  @override
  @JsonKey(name: "isPaid")
  bool? get isPaid;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "user")
  String? get user;
  @override
  @JsonKey(name: "expirationDate")
  DateTime? get expirationDate;
  @override
  @JsonKey(ignore: true)
  _$$SubscriberImplCopyWith<_$SubscriberImpl> get copyWith =>
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

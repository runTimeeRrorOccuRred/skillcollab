// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_unsubscribe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupUnubscribeRequestModel _$GroupUnubscribeRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GroupUnubscribeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GroupUnubscribeRequestModel {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupUnubscribeRequestModelCopyWith<GroupUnubscribeRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupUnubscribeRequestModelCopyWith<$Res> {
  factory $GroupUnubscribeRequestModelCopyWith(
          GroupUnubscribeRequestModel value,
          $Res Function(GroupUnubscribeRequestModel) then) =
      _$GroupUnubscribeRequestModelCopyWithImpl<$Res,
          GroupUnubscribeRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class _$GroupUnubscribeRequestModelCopyWithImpl<$Res,
        $Val extends GroupUnubscribeRequestModel>
    implements $GroupUnubscribeRequestModelCopyWith<$Res> {
  _$GroupUnubscribeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupUnubscribeRequestModelImplCopyWith<$Res>
    implements $GroupUnubscribeRequestModelCopyWith<$Res> {
  factory _$$GroupUnubscribeRequestModelImplCopyWith(
          _$GroupUnubscribeRequestModelImpl value,
          $Res Function(_$GroupUnubscribeRequestModelImpl) then) =
      __$$GroupUnubscribeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class __$$GroupUnubscribeRequestModelImplCopyWithImpl<$Res>
    extends _$GroupUnubscribeRequestModelCopyWithImpl<$Res,
        _$GroupUnubscribeRequestModelImpl>
    implements _$$GroupUnubscribeRequestModelImplCopyWith<$Res> {
  __$$GroupUnubscribeRequestModelImplCopyWithImpl(
      _$GroupUnubscribeRequestModelImpl _value,
      $Res Function(_$GroupUnubscribeRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$GroupUnubscribeRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupUnubscribeRequestModelImpl
    implements _GroupUnubscribeRequestModel {
  const _$GroupUnubscribeRequestModelImpl(
      {@JsonKey(name: "groupId") this.groupId});

  factory _$GroupUnubscribeRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GroupUnubscribeRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;

  @override
  String toString() {
    return 'GroupUnubscribeRequestModel(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupUnubscribeRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupUnubscribeRequestModelImplCopyWith<_$GroupUnubscribeRequestModelImpl>
      get copyWith => __$$GroupUnubscribeRequestModelImplCopyWithImpl<
          _$GroupUnubscribeRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupUnubscribeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GroupUnubscribeRequestModel
    implements GroupUnubscribeRequestModel {
  const factory _GroupUnubscribeRequestModel(
          {@JsonKey(name: "groupId") final String? groupId}) =
      _$GroupUnubscribeRequestModelImpl;

  factory _GroupUnubscribeRequestModel.fromJson(Map<String, dynamic> json) =
      _$GroupUnubscribeRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$GroupUnubscribeRequestModelImplCopyWith<_$GroupUnubscribeRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GroupUnubscribeResponseModel _$GroupUnubscribeResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GroupUnubscribeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GroupUnubscribeResponseModel {
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
  $GroupUnubscribeResponseModelCopyWith<GroupUnubscribeResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupUnubscribeResponseModelCopyWith<$Res> {
  factory $GroupUnubscribeResponseModelCopyWith(
          GroupUnubscribeResponseModel value,
          $Res Function(GroupUnubscribeResponseModel) then) =
      _$GroupUnubscribeResponseModelCopyWithImpl<$Res,
          GroupUnubscribeResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GroupUnubscribeResponseModelCopyWithImpl<$Res,
        $Val extends GroupUnubscribeResponseModel>
    implements $GroupUnubscribeResponseModelCopyWith<$Res> {
  _$GroupUnubscribeResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GroupUnubscribeResponseModelImplCopyWith<$Res>
    implements $GroupUnubscribeResponseModelCopyWith<$Res> {
  factory _$$GroupUnubscribeResponseModelImplCopyWith(
          _$GroupUnubscribeResponseModelImpl value,
          $Res Function(_$GroupUnubscribeResponseModelImpl) then) =
      __$$GroupUnubscribeResponseModelImplCopyWithImpl<$Res>;
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
class __$$GroupUnubscribeResponseModelImplCopyWithImpl<$Res>
    extends _$GroupUnubscribeResponseModelCopyWithImpl<$Res,
        _$GroupUnubscribeResponseModelImpl>
    implements _$$GroupUnubscribeResponseModelImplCopyWith<$Res> {
  __$$GroupUnubscribeResponseModelImplCopyWithImpl(
      _$GroupUnubscribeResponseModelImpl _value,
      $Res Function(_$GroupUnubscribeResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GroupUnubscribeResponseModelImpl(
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
class _$GroupUnubscribeResponseModelImpl
    implements _GroupUnubscribeResponseModel {
  const _$GroupUnubscribeResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$GroupUnubscribeResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GroupUnubscribeResponseModelImplFromJson(json);

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
    return 'GroupUnubscribeResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupUnubscribeResponseModelImpl &&
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
  _$$GroupUnubscribeResponseModelImplCopyWith<
          _$GroupUnubscribeResponseModelImpl>
      get copyWith => __$$GroupUnubscribeResponseModelImplCopyWithImpl<
          _$GroupUnubscribeResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupUnubscribeResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GroupUnubscribeResponseModel
    implements GroupUnubscribeResponseModel {
  const factory _GroupUnubscribeResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$GroupUnubscribeResponseModelImpl;

  factory _GroupUnubscribeResponseModel.fromJson(Map<String, dynamic> json) =
      _$GroupUnubscribeResponseModelImpl.fromJson;

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
  _$$GroupUnubscribeResponseModelImplCopyWith<
          _$GroupUnubscribeResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
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
  int? get oneMonthSubscriptionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "six_month_subscription_price")
  int? get sixMonthSubscriptionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "twelve_month_subscription_price")
  int? get twelveMonthSubscriptionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "promoCode")
  String? get promoCode => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<Follower>? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewer")
  List<dynamic>? get reviewer => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "one_month_subscription_price")
      int? oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      int? sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      int? twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") String? promoCode,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "productId") String? productId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "reviewer") List<dynamic>? reviewer,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
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
    Object? followers = freezed,
    Object? userId = freezed,
    Object? interests = freezed,
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
              as int?,
      sixMonthSubscriptionPrice: freezed == sixMonthSubscriptionPrice
          ? _value.sixMonthSubscriptionPrice
          : sixMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      twelveMonthSubscriptionPrice: freezed == twelveMonthSubscriptionPrice
          ? _value.twelveMonthSubscriptionPrice
          : twelveMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "one_month_subscription_price")
      int? oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      int? sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      int? twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") String? promoCode,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "productId") String? productId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "reviewer") List<dynamic>? reviewer,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
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
    Object? followers = freezed,
    Object? userId = freezed,
    Object? interests = freezed,
    Object? subscribers = freezed,
    Object? reviewer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
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
              as int?,
      sixMonthSubscriptionPrice: freezed == sixMonthSubscriptionPrice
          ? _value.sixMonthSubscriptionPrice
          : sixMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      twelveMonthSubscriptionPrice: freezed == twelveMonthSubscriptionPrice
          ? _value.twelveMonthSubscriptionPrice
          : twelveMonthSubscriptionPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reviewer: freezed == reviewer
          ? _value._reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
class _$DataImpl implements _Data {
  const _$DataImpl(
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
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "reviewer") final List<dynamic>? reviewer,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt})
      : _followers = followers,
        _interests = interests,
        _subscribers = subscribers,
        _reviewer = reviewer;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

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
  final int? oneMonthSubscriptionPrice;
  @override
  @JsonKey(name: "six_month_subscription_price")
  final int? sixMonthSubscriptionPrice;
  @override
  @JsonKey(name: "twelve_month_subscription_price")
  final int? twelveMonthSubscriptionPrice;
  @override
  @JsonKey(name: "promoCode")
  final String? promoCode;
  @override
  @JsonKey(name: "discount")
  final int? discount;
  @override
  @JsonKey(name: "productId")
  final String? productId;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
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
  @JsonKey(name: "userId")
  final String? userId;
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

  final List<dynamic>? _reviewer;
  @override
  @JsonKey(name: "reviewer")
  List<dynamic>? get reviewer {
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
    return 'Data(groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, description: $description, location: $location, privacy: $privacy, oneMonthSubscriptionPrice: $oneMonthSubscriptionPrice, sixMonthSubscriptionPrice: $sixMonthSubscriptionPrice, twelveMonthSubscriptionPrice: $twelveMonthSubscriptionPrice, promoCode: $promoCode, discount: $discount, productId: $productId, id: $id, name: $name, followers: $followers, userId: $userId, interests: $interests, subscribers: $subscribers, reviewer: $reviewer, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.groupPhoto, groupPhoto) ||
                other.groupPhoto == groupPhoto) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
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
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
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
        oneMonthSubscriptionPrice,
        sixMonthSubscriptionPrice,
        twelveMonthSubscriptionPrice,
        promoCode,
        discount,
        productId,
        id,
        name,
        const DeepCollectionEquality().hash(_followers),
        userId,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_reviewer),
        createdAt,
        updatedAt
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
      {@JsonKey(name: "groupPhoto") final String? groupPhoto,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "privacy") final String? privacy,
      @JsonKey(name: "one_month_subscription_price")
      final int? oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      final int? sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      final int? twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") final String? promoCode,
      @JsonKey(name: "discount") final int? discount,
      @JsonKey(name: "productId") final String? productId,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "reviewer") final List<dynamic>? reviewer,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

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
  int? get oneMonthSubscriptionPrice;
  @override
  @JsonKey(name: "six_month_subscription_price")
  int? get sixMonthSubscriptionPrice;
  @override
  @JsonKey(name: "twelve_month_subscription_price")
  int? get twelveMonthSubscriptionPrice;
  @override
  @JsonKey(name: "promoCode")
  String? get promoCode;
  @override
  @JsonKey(name: "discount")
  int? get discount;
  @override
  @JsonKey(name: "productId")
  String? get productId;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "followers")
  List<Follower>? get followers;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
  @override
  @JsonKey(name: "reviewer")
  List<dynamic>? get reviewer;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
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

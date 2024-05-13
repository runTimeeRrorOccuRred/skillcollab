// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_groups_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyGroupsResponseModel _$MyGroupsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MyGroupsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MyGroupsResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Group>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyGroupsResponseModelCopyWith<MyGroupsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyGroupsResponseModelCopyWith<$Res> {
  factory $MyGroupsResponseModelCopyWith(MyGroupsResponseModel value,
          $Res Function(MyGroupsResponseModel) then) =
      _$MyGroupsResponseModelCopyWithImpl<$Res, MyGroupsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Group>? data});
}

/// @nodoc
class _$MyGroupsResponseModelCopyWithImpl<$Res,
        $Val extends MyGroupsResponseModel>
    implements $MyGroupsResponseModelCopyWith<$Res> {
  _$MyGroupsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<Group>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyGroupsResponseModelImplCopyWith<$Res>
    implements $MyGroupsResponseModelCopyWith<$Res> {
  factory _$$MyGroupsResponseModelImplCopyWith(
          _$MyGroupsResponseModelImpl value,
          $Res Function(_$MyGroupsResponseModelImpl) then) =
      __$$MyGroupsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Group>? data});
}

/// @nodoc
class __$$MyGroupsResponseModelImplCopyWithImpl<$Res>
    extends _$MyGroupsResponseModelCopyWithImpl<$Res,
        _$MyGroupsResponseModelImpl>
    implements _$$MyGroupsResponseModelImplCopyWith<$Res> {
  __$$MyGroupsResponseModelImplCopyWithImpl(_$MyGroupsResponseModelImpl _value,
      $Res Function(_$MyGroupsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MyGroupsResponseModelImpl(
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
              as List<Group>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyGroupsResponseModelImpl implements _MyGroupsResponseModel {
  const _$MyGroupsResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<Group>? data})
      : _data = data;

  factory _$MyGroupsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyGroupsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<Group>? _data;
  @override
  @JsonKey(name: "data")
  List<Group>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyGroupsResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyGroupsResponseModelImpl &&
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
  _$$MyGroupsResponseModelImplCopyWith<_$MyGroupsResponseModelImpl>
      get copyWith => __$$MyGroupsResponseModelImplCopyWithImpl<
          _$MyGroupsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyGroupsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MyGroupsResponseModel implements MyGroupsResponseModel {
  const factory _MyGroupsResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<Group>? data}) =
      _$MyGroupsResponseModelImpl;

  factory _MyGroupsResponseModel.fromJson(Map<String, dynamic> json) =
      _$MyGroupsResponseModelImpl.fromJson;

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
  List<Group>? get data;
  @override
  @JsonKey(ignore: true)
  _$$MyGroupsResponseModelImplCopyWith<_$MyGroupsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
mixin _$Group {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  String? get privacy => throw _privateConstructorUsedError;
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
  UserId? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "promoCode")
  String? get promoCode => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "pinData")
  List<PinDatum>? get pinData => throw _privateConstructorUsedError;
  @JsonKey(name: "one_month_subscription_price")
  dynamic get oneMonthSubscriptionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "six_month_subscription_price")
  dynamic get sixMonthSubscriptionPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "twelve_month_subscription_price")
  dynamic get twelveMonthSubscriptionPrice =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  dynamic get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "promoCode") String? promoCode,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "pinData") List<PinDatum>? pinData,
      @JsonKey(name: "one_month_subscription_price")
      dynamic oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      dynamic sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      dynamic twelveMonthSubscriptionPrice,
      @JsonKey(name: "productId") dynamic productId});

  $UserIdCopyWith<$Res>? get userId;
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

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
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? discount = freezed,
    Object? promoCode = freezed,
    Object? subscribers = freezed,
    Object? pinData = freezed,
    Object? oneMonthSubscriptionPrice = freezed,
    Object? sixMonthSubscriptionPrice = freezed,
    Object? twelveMonthSubscriptionPrice = freezed,
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as UserId?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pinData: freezed == pinData
          ? _value.pinData
          : pinData // ignore: cast_nullable_to_non_nullable
              as List<PinDatum>?,
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
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
}

/// @nodoc
abstract class _$$GroupImplCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$GroupImplCopyWith(
          _$GroupImpl value, $Res Function(_$GroupImpl) then) =
      __$$GroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "promoCode") String? promoCode,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "pinData") List<PinDatum>? pinData,
      @JsonKey(name: "one_month_subscription_price")
      dynamic oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      dynamic sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      dynamic twelveMonthSubscriptionPrice,
      @JsonKey(name: "productId") dynamic productId});

  @override
  $UserIdCopyWith<$Res>? get userId;
}

/// @nodoc
class __$$GroupImplCopyWithImpl<$Res>
    extends _$GroupCopyWithImpl<$Res, _$GroupImpl>
    implements _$$GroupImplCopyWith<$Res> {
  __$$GroupImplCopyWithImpl(
      _$GroupImpl _value, $Res Function(_$GroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? interests = freezed,
    Object? privacy = freezed,
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? discount = freezed,
    Object? promoCode = freezed,
    Object? subscribers = freezed,
    Object? pinData = freezed,
    Object? oneMonthSubscriptionPrice = freezed,
    Object? sixMonthSubscriptionPrice = freezed,
    Object? twelveMonthSubscriptionPrice = freezed,
    Object? productId = freezed,
  }) {
    return _then(_$GroupImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as UserId?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pinData: freezed == pinData
          ? _value._pinData
          : pinData // ignore: cast_nullable_to_non_nullable
              as List<PinDatum>?,
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
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupImpl implements _Group {
  const _$GroupImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "groupPhoto") this.groupPhoto,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "promoCode") this.promoCode,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "pinData") final List<PinDatum>? pinData,
      @JsonKey(name: "one_month_subscription_price")
      this.oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      this.sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      this.twelveMonthSubscriptionPrice,
      @JsonKey(name: "productId") this.productId})
      : _interests = interests,
        _subscribers = subscribers,
        _pinData = pinData;

  factory _$GroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
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
  @JsonKey(name: "privacy")
  final String? privacy;
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
  final UserId? userId;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "discount")
  final int? discount;
  @override
  @JsonKey(name: "promoCode")
  final String? promoCode;
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

  final List<PinDatum>? _pinData;
  @override
  @JsonKey(name: "pinData")
  List<PinDatum>? get pinData {
    final value = _pinData;
    if (value == null) return null;
    if (_pinData is EqualUnmodifiableListView) return _pinData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @JsonKey(name: "productId")
  final dynamic productId;

  @override
  String toString() {
    return 'Group(id: $id, interests: $interests, privacy: $privacy, groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, name: $name, description: $description, location: $location, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, discount: $discount, promoCode: $promoCode, subscribers: $subscribers, pinData: $pinData, oneMonthSubscriptionPrice: $oneMonthSubscriptionPrice, sixMonthSubscriptionPrice: $sixMonthSubscriptionPrice, twelveMonthSubscriptionPrice: $twelveMonthSubscriptionPrice, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            const DeepCollectionEquality().equals(other._pinData, _pinData) &&
            const DeepCollectionEquality().equals(
                other.oneMonthSubscriptionPrice, oneMonthSubscriptionPrice) &&
            const DeepCollectionEquality().equals(
                other.sixMonthSubscriptionPrice, sixMonthSubscriptionPrice) &&
            const DeepCollectionEquality().equals(
                other.twelveMonthSubscriptionPrice,
                twelveMonthSubscriptionPrice) &&
            const DeepCollectionEquality().equals(other.productId, productId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_interests),
        privacy,
        groupPhoto,
        coverPhoto,
        name,
        description,
        location,
        userId,
        createdAt,
        updatedAt,
        discount,
        promoCode,
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_pinData),
        const DeepCollectionEquality().hash(oneMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(sixMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(twelveMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(productId)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      __$$GroupImplCopyWithImpl<_$GroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupImplToJson(
      this,
    );
  }
}

abstract class _Group implements Group {
  const factory _Group(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "privacy") final String? privacy,
      @JsonKey(name: "groupPhoto") final String? groupPhoto,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "userId") final UserId? userId,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "discount") final int? discount,
      @JsonKey(name: "promoCode") final String? promoCode,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "pinData") final List<PinDatum>? pinData,
      @JsonKey(name: "one_month_subscription_price")
      final dynamic oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      final dynamic sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      final dynamic twelveMonthSubscriptionPrice,
      @JsonKey(name: "productId") final dynamic productId}) = _$GroupImpl;

  factory _Group.fromJson(Map<String, dynamic> json) = _$GroupImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  @JsonKey(name: "privacy")
  String? get privacy;
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
  UserId? get userId;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "discount")
  int? get discount;
  @override
  @JsonKey(name: "promoCode")
  String? get promoCode;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
  @override
  @JsonKey(name: "pinData")
  List<PinDatum>? get pinData;
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
  @JsonKey(name: "productId")
  dynamic get productId;
  @override
  @JsonKey(ignore: true)
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PinDatum _$PinDatumFromJson(Map<String, dynamic> json) {
  return _PinDatum.fromJson(json);
}

/// @nodoc
mixin _$PinDatum {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "isPinned")
  bool? get isPinned => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PinDatumCopyWith<PinDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinDatumCopyWith<$Res> {
  factory $PinDatumCopyWith(PinDatum value, $Res Function(PinDatum) then) =
      _$PinDatumCopyWithImpl<$Res, PinDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "isPinned") bool? isPinned,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class _$PinDatumCopyWithImpl<$Res, $Val extends PinDatum>
    implements $PinDatumCopyWith<$Res> {
  _$PinDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isPinned = freezed,
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isPinned: freezed == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PinDatumImplCopyWith<$Res>
    implements $PinDatumCopyWith<$Res> {
  factory _$$PinDatumImplCopyWith(
          _$PinDatumImpl value, $Res Function(_$PinDatumImpl) then) =
      __$$PinDatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "isPinned") bool? isPinned,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class __$$PinDatumImplCopyWithImpl<$Res>
    extends _$PinDatumCopyWithImpl<$Res, _$PinDatumImpl>
    implements _$$PinDatumImplCopyWith<$Res> {
  __$$PinDatumImplCopyWithImpl(
      _$PinDatumImpl _value, $Res Function(_$PinDatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isPinned = freezed,
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PinDatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isPinned: freezed == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$PinDatumImpl implements _PinDatum {
  const _$PinDatumImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "isPinned") this.isPinned,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$PinDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$PinDatumImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "isPinned")
  final bool? isPinned;
  @override
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'PinDatum(id: $id, isPinned: $isPinned, groupId: $groupId, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PinDatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, isPinned, groupId, userId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PinDatumImplCopyWith<_$PinDatumImpl> get copyWith =>
      __$$PinDatumImplCopyWithImpl<_$PinDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PinDatumImplToJson(
      this,
    );
  }
}

abstract class _PinDatum implements PinDatum {
  const factory _PinDatum(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "isPinned") final bool? isPinned,
      @JsonKey(name: "groupId") final String? groupId,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$PinDatumImpl;

  factory _PinDatum.fromJson(Map<String, dynamic> json) =
      _$PinDatumImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "isPinned")
  bool? get isPinned;
  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PinDatumImplCopyWith<_$PinDatumImpl> get copyWith =>
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
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
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
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;

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
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers});
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
    Object? phone = freezed,
    Object? password = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? coverPhoto = freezed,
    Object? description = freezed,
    Object? interests = freezed,
    Object? location = freezed,
    Object? profilePhoto = freezed,
    Object? subscribers = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers});
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
    Object? phone = freezed,
    Object? password = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? coverPhoto = freezed,
    Object? description = freezed,
    Object? interests = freezed,
    Object? location = freezed,
    Object? profilePhoto = freezed,
    Object? subscribers = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers})
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
  @JsonKey(name: "phone")
  final String? phone;
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
  @JsonKey(name: "coverPhoto")
  final String? coverPhoto;
  @override
  @JsonKey(name: "description")
  final String? description;
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
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "profilePhoto")
  final String? profilePhoto;
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
  String toString() {
    return 'UserId(id: $id, role: $role, isEmailVerified: $isEmailVerified, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, password: $password, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, otpExpiry: $otpExpiry, coverPhoto: $coverPhoto, description: $description, interests: $interests, location: $location, profilePhoto: $profilePhoto, subscribers: $subscribers)';
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
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality().equals(other.otpExpiry, otpExpiry) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers));
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
        phone,
        password,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(otp),
        const DeepCollectionEquality().hash(otpExpiry),
        coverPhoto,
        description,
        const DeepCollectionEquality().hash(_interests),
        location,
        profilePhoto,
        const DeepCollectionEquality().hash(_subscribers)
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
          @JsonKey(name: "phone") final String? phone,
          @JsonKey(name: "password") final String? password,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "otp") final dynamic otp,
          @JsonKey(name: "otpExpiry") final dynamic otpExpiry,
          @JsonKey(name: "coverPhoto") final String? coverPhoto,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "interests") final List<Interest>? interests,
          @JsonKey(name: "location") final String? location,
          @JsonKey(name: "profilePhoto") final String? profilePhoto,
          @JsonKey(name: "subscribers") final List<dynamic>? subscribers}) =
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
  @JsonKey(name: "phone")
  String? get phone;
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
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto;
  @override
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
  @override
  @JsonKey(ignore: true)
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

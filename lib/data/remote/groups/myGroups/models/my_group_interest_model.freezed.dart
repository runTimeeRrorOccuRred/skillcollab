// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_group_interest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyGroupInterestRequestModel _$MyGroupInterestRequestModelFromJson(
    Map<String, dynamic> json) {
  return _MyGroupInterestRequestModel.fromJson(json);
}

/// @nodoc
mixin _$MyGroupInterestRequestModel {
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyGroupInterestRequestModelCopyWith<MyGroupInterestRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyGroupInterestRequestModelCopyWith<$Res> {
  factory $MyGroupInterestRequestModelCopyWith(
          MyGroupInterestRequestModel value,
          $Res Function(MyGroupInterestRequestModel) then) =
      _$MyGroupInterestRequestModelCopyWithImpl<$Res,
          MyGroupInterestRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "interests") List<Interest>? interests});
}

/// @nodoc
class _$MyGroupInterestRequestModelCopyWithImpl<$Res,
        $Val extends MyGroupInterestRequestModel>
    implements $MyGroupInterestRequestModelCopyWith<$Res> {
  _$MyGroupInterestRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interests = freezed,
  }) {
    return _then(_value.copyWith(
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyGroupInterestRequestModelImplCopyWith<$Res>
    implements $MyGroupInterestRequestModelCopyWith<$Res> {
  factory _$$MyGroupInterestRequestModelImplCopyWith(
          _$MyGroupInterestRequestModelImpl value,
          $Res Function(_$MyGroupInterestRequestModelImpl) then) =
      __$$MyGroupInterestRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "interests") List<Interest>? interests});
}

/// @nodoc
class __$$MyGroupInterestRequestModelImplCopyWithImpl<$Res>
    extends _$MyGroupInterestRequestModelCopyWithImpl<$Res,
        _$MyGroupInterestRequestModelImpl>
    implements _$$MyGroupInterestRequestModelImplCopyWith<$Res> {
  __$$MyGroupInterestRequestModelImplCopyWithImpl(
      _$MyGroupInterestRequestModelImpl _value,
      $Res Function(_$MyGroupInterestRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interests = freezed,
  }) {
    return _then(_$MyGroupInterestRequestModelImpl(
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyGroupInterestRequestModelImpl
    implements _MyGroupInterestRequestModel {
  const _$MyGroupInterestRequestModelImpl(
      {@JsonKey(name: "interests") final List<Interest>? interests})
      : _interests = interests;

  factory _$MyGroupInterestRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MyGroupInterestRequestModelImplFromJson(json);

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
  String toString() {
    return 'MyGroupInterestRequestModel(interests: $interests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyGroupInterestRequestModelImpl &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_interests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyGroupInterestRequestModelImplCopyWith<_$MyGroupInterestRequestModelImpl>
      get copyWith => __$$MyGroupInterestRequestModelImplCopyWithImpl<
          _$MyGroupInterestRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyGroupInterestRequestModelImplToJson(
      this,
    );
  }
}

abstract class _MyGroupInterestRequestModel
    implements MyGroupInterestRequestModel {
  const factory _MyGroupInterestRequestModel(
          {@JsonKey(name: "interests") final List<Interest>? interests}) =
      _$MyGroupInterestRequestModelImpl;

  factory _MyGroupInterestRequestModel.fromJson(Map<String, dynamic> json) =
      _$MyGroupInterestRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  @JsonKey(ignore: true)
  _$$MyGroupInterestRequestModelImplCopyWith<_$MyGroupInterestRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyGroupInterestResponseModel _$MyGroupInterestResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MyGroupInterestResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MyGroupInterestResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyGroupInterestResponseModelCopyWith<MyGroupInterestResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyGroupInterestResponseModelCopyWith<$Res> {
  factory $MyGroupInterestResponseModelCopyWith(
          MyGroupInterestResponseModel value,
          $Res Function(MyGroupInterestResponseModel) then) =
      _$MyGroupInterestResponseModelCopyWithImpl<$Res,
          MyGroupInterestResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Datum>? data});
}

/// @nodoc
class _$MyGroupInterestResponseModelCopyWithImpl<$Res,
        $Val extends MyGroupInterestResponseModel>
    implements $MyGroupInterestResponseModelCopyWith<$Res> {
  _$MyGroupInterestResponseModelCopyWithImpl(this._value, this._then);

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
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyGroupInterestResponseModelImplCopyWith<$Res>
    implements $MyGroupInterestResponseModelCopyWith<$Res> {
  factory _$$MyGroupInterestResponseModelImplCopyWith(
          _$MyGroupInterestResponseModelImpl value,
          $Res Function(_$MyGroupInterestResponseModelImpl) then) =
      __$$MyGroupInterestResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Datum>? data});
}

/// @nodoc
class __$$MyGroupInterestResponseModelImplCopyWithImpl<$Res>
    extends _$MyGroupInterestResponseModelCopyWithImpl<$Res,
        _$MyGroupInterestResponseModelImpl>
    implements _$$MyGroupInterestResponseModelImplCopyWith<$Res> {
  __$$MyGroupInterestResponseModelImplCopyWithImpl(
      _$MyGroupInterestResponseModelImpl _value,
      $Res Function(_$MyGroupInterestResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MyGroupInterestResponseModelImpl(
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
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyGroupInterestResponseModelImpl
    implements _MyGroupInterestResponseModel {
  const _$MyGroupInterestResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<Datum>? data})
      : _data = data;

  factory _$MyGroupInterestResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MyGroupInterestResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<Datum>? _data;
  @override
  @JsonKey(name: "data")
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MyGroupInterestResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyGroupInterestResponseModelImpl &&
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
  _$$MyGroupInterestResponseModelImplCopyWith<
          _$MyGroupInterestResponseModelImpl>
      get copyWith => __$$MyGroupInterestResponseModelImplCopyWithImpl<
          _$MyGroupInterestResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyGroupInterestResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MyGroupInterestResponseModel
    implements MyGroupInterestResponseModel {
  const factory _MyGroupInterestResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<Datum>? data}) =
      _$MyGroupInterestResponseModelImpl;

  factory _MyGroupInterestResponseModel.fromJson(Map<String, dynamic> json) =
      _$MyGroupInterestResponseModelImpl.fromJson;

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
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$MyGroupInterestResponseModelImplCopyWith<
          _$MyGroupInterestResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "groupPhoto")
  String? get groupPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
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
  @JsonKey(name: "userId")
  UserId? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<Subscriber>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest>? interests,
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
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "subscribers") List<Subscriber>? subscribers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  $UserIdCopyWith<$Res>? get userId;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

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
    Object? interests = freezed,
    Object? privacy = freezed,
    Object? oneMonthSubscriptionPrice = freezed,
    Object? sixMonthSubscriptionPrice = freezed,
    Object? twelveMonthSubscriptionPrice = freezed,
    Object? promoCode = freezed,
    Object? discount = freezed,
    Object? productId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? subscribers = freezed,
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
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<Subscriber>?,
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
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest>? interests,
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
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "subscribers") List<Subscriber>? subscribers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  @override
  $UserIdCopyWith<$Res>? get userId;
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? privacy = freezed,
    Object? oneMonthSubscriptionPrice = freezed,
    Object? sixMonthSubscriptionPrice = freezed,
    Object? twelveMonthSubscriptionPrice = freezed,
    Object? promoCode = freezed,
    Object? discount = freezed,
    Object? productId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? subscribers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DatumImpl(
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
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<Subscriber>?,
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
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "groupPhoto") this.groupPhoto,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "interests") final List<Interest>? interests,
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
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "subscribers") final List<Subscriber>? subscribers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt})
      : _interests = interests,
        _subscribers = subscribers;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

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
  @override
  @JsonKey(name: "userId")
  final UserId? userId;
  final List<Subscriber>? _subscribers;
  @override
  @JsonKey(name: "subscribers")
  List<Subscriber>? get subscribers {
    final value = _subscribers;
    if (value == null) return null;
    if (_subscribers is EqualUnmodifiableListView) return _subscribers;
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
    return 'Datum(groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, description: $description, location: $location, interests: $interests, privacy: $privacy, oneMonthSubscriptionPrice: $oneMonthSubscriptionPrice, sixMonthSubscriptionPrice: $sixMonthSubscriptionPrice, twelveMonthSubscriptionPrice: $twelveMonthSubscriptionPrice, promoCode: $promoCode, discount: $discount, productId: $productId, id: $id, name: $name, userId: $userId, subscribers: $subscribers, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.groupPhoto, groupPhoto) ||
                other.groupPhoto == groupPhoto) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
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
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupPhoto,
      coverPhoto,
      description,
      location,
      const DeepCollectionEquality().hash(_interests),
      privacy,
      oneMonthSubscriptionPrice,
      sixMonthSubscriptionPrice,
      twelveMonthSubscriptionPrice,
      promoCode,
      discount,
      productId,
      id,
      name,
      userId,
      const DeepCollectionEquality().hash(_subscribers),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(name: "groupPhoto") final String? groupPhoto,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "interests") final List<Interest>? interests,
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
      @JsonKey(name: "userId") final UserId? userId,
      @JsonKey(name: "subscribers") final List<Subscriber>? subscribers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

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
  @JsonKey(name: "interests")
  List<Interest>? get interests;
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
  @JsonKey(name: "userId")
  UserId? get userId;
  @override
  @JsonKey(name: "subscribers")
  List<Subscriber>? get subscribers;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
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
  dynamic get expirationDate => throw _privateConstructorUsedError;

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
      @JsonKey(name: "expirationDate") dynamic expirationDate});
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
              as dynamic,
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
      @JsonKey(name: "expirationDate") dynamic expirationDate});
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
              as dynamic,
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
  final dynamic expirationDate;

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
            const DeepCollectionEquality()
                .equals(other.expirationDate, expirationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subscriptionId, isPaid, id, user,
      const DeepCollectionEquality().hash(expirationDate));

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
          @JsonKey(name: "expirationDate") final dynamic expirationDate}) =
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
  dynamic get expirationDate;
  @override
  @JsonKey(ignore: true)
  _$$SubscriberImplCopyWith<_$SubscriberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserId _$UserIdFromJson(Map<String, dynamic> json) {
  return _UserId.fromJson(json);
}

/// @nodoc
mixin _$UserId {
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  dynamic get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken => throw _privateConstructorUsedError;
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
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  int? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "otpExpiry")
  DateTime? get otpExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  String? get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "accountId")
  String? get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: "accountLink")
  String? get accountLink => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  String? get customerId => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") int? otp,
      @JsonKey(name: "otpExpiry") DateTime? otpExpiry,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "accountId") String? accountId,
      @JsonKey(name: "accountLink") String? accountLink,
      @JsonKey(name: "customerId") String? customerId});
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
    Object? type = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? interests = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? coverPhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? profilePhoto = freezed,
    Object? subscribers = freezed,
    Object? accountId = freezed,
    Object? accountLink = freezed,
    Object? customerId = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") int? otp,
      @JsonKey(name: "otpExpiry") DateTime? otpExpiry,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "accountId") String? accountId,
      @JsonKey(name: "accountLink") String? accountLink,
      @JsonKey(name: "customerId") String? customerId});
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
    Object? type = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? interests = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? coverPhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? profilePhoto = freezed,
    Object? subscribers = freezed,
    Object? accountId = freezed,
    Object? accountLink = freezed,
    Object? customerId = freezed,
  }) {
    return _then(_$UserIdImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deviceToken: freezed == deviceToken
          ? _value._deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
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
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdImpl implements _UserId {
  const _$UserIdImpl(
      {@JsonKey(name: "type") this.type,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "accountId") this.accountId,
      @JsonKey(name: "accountLink") this.accountLink,
      @JsonKey(name: "customerId") this.customerId})
      : _interests = interests,
        _deviceToken = deviceToken,
        _subscribers = subscribers;

  factory _$UserIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdImplFromJson(json);

  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "isEmailVerified")
  final bool? isEmailVerified;
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
  @JsonKey(name: "accountId")
  final String? accountId;
  @override
  @JsonKey(name: "accountLink")
  final String? accountLink;
  @override
  @JsonKey(name: "customerId")
  final String? customerId;

  @override
  String toString() {
    return 'UserId(type: $type, role: $role, isEmailVerified: $isEmailVerified, interests: $interests, productId: $productId, deviceToken: $deviceToken, id: $id, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, otpExpiry: $otpExpiry, coverPhoto: $coverPhoto, description: $description, location: $location, profilePhoto: $profilePhoto, subscribers: $subscribers, accountId: $accountId, accountLink: $accountLink, customerId: $customerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other._deviceToken, _deviceToken) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.otpExpiry, otpExpiry) ||
                other.otpExpiry == otpExpiry) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.profilePhoto, profilePhoto) ||
                other.profilePhoto == profilePhoto) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.accountLink, accountLink) ||
                other.accountLink == accountLink) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        type,
        role,
        isEmailVerified,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(productId),
        const DeepCollectionEquality().hash(_deviceToken),
        id,
        firstName,
        lastName,
        userName,
        email,
        phone,
        createdAt,
        updatedAt,
        otp,
        otpExpiry,
        coverPhoto,
        description,
        location,
        profilePhoto,
        const DeepCollectionEquality().hash(_subscribers),
        accountId,
        accountLink,
        customerId
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
      {@JsonKey(name: "type") final String? type,
      @JsonKey(name: "role") final String? role,
      @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "productId") final dynamic productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "firstName") final String? firstName,
      @JsonKey(name: "lastName") final String? lastName,
      @JsonKey(name: "userName") final String? userName,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "otp") final int? otp,
      @JsonKey(name: "otpExpiry") final DateTime? otpExpiry,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "profilePhoto") final String? profilePhoto,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "accountId") final String? accountId,
      @JsonKey(name: "accountLink") final String? accountLink,
      @JsonKey(name: "customerId") final String? customerId}) = _$UserIdImpl;

  factory _UserId.fromJson(Map<String, dynamic> json) = _$UserIdImpl.fromJson;

  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  @JsonKey(name: "productId")
  dynamic get productId;
  @override
  @JsonKey(name: "deviceToken")
  List<String?>? get deviceToken;
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
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
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
  @JsonKey(ignore: true)
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_groups_without_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllGroupsWithoutLoginRequestModel
    _$GetAllGroupsWithoutLoginRequestModelFromJson(Map<String, dynamic> json) {
  return _GetAllGroupsWithoutLoginRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllGroupsWithoutLoginRequestModel {
  String? get searchKey => throw _privateConstructorUsedError;
  String? get interests => throw _privateConstructorUsedError;
  String? get timeFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllGroupsWithoutLoginRequestModelCopyWith<
          GetAllGroupsWithoutLoginRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllGroupsWithoutLoginRequestModelCopyWith<$Res> {
  factory $GetAllGroupsWithoutLoginRequestModelCopyWith(
          GetAllGroupsWithoutLoginRequestModel value,
          $Res Function(GetAllGroupsWithoutLoginRequestModel) then) =
      _$GetAllGroupsWithoutLoginRequestModelCopyWithImpl<$Res,
          GetAllGroupsWithoutLoginRequestModel>;
  @useResult
  $Res call({String? searchKey, String? interests, String? timeFilter});
}

/// @nodoc
class _$GetAllGroupsWithoutLoginRequestModelCopyWithImpl<$Res,
        $Val extends GetAllGroupsWithoutLoginRequestModel>
    implements $GetAllGroupsWithoutLoginRequestModelCopyWith<$Res> {
  _$GetAllGroupsWithoutLoginRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetAllGroupsWithoutLoginRequestModelImplCopyWith<$Res>
    implements $GetAllGroupsWithoutLoginRequestModelCopyWith<$Res> {
  factory _$$GetAllGroupsWithoutLoginRequestModelImplCopyWith(
          _$GetAllGroupsWithoutLoginRequestModelImpl value,
          $Res Function(_$GetAllGroupsWithoutLoginRequestModelImpl) then) =
      __$$GetAllGroupsWithoutLoginRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? searchKey, String? interests, String? timeFilter});
}

/// @nodoc
class __$$GetAllGroupsWithoutLoginRequestModelImplCopyWithImpl<$Res>
    extends _$GetAllGroupsWithoutLoginRequestModelCopyWithImpl<$Res,
        _$GetAllGroupsWithoutLoginRequestModelImpl>
    implements _$$GetAllGroupsWithoutLoginRequestModelImplCopyWith<$Res> {
  __$$GetAllGroupsWithoutLoginRequestModelImplCopyWithImpl(
      _$GetAllGroupsWithoutLoginRequestModelImpl _value,
      $Res Function(_$GetAllGroupsWithoutLoginRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
    Object? interests = freezed,
    Object? timeFilter = freezed,
  }) {
    return _then(_$GetAllGroupsWithoutLoginRequestModelImpl(
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
class _$GetAllGroupsWithoutLoginRequestModelImpl
    implements _GetAllGroupsWithoutLoginRequestModel {
  const _$GetAllGroupsWithoutLoginRequestModelImpl(
      {this.searchKey, this.interests, this.timeFilter});

  factory _$GetAllGroupsWithoutLoginRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllGroupsWithoutLoginRequestModelImplFromJson(json);

  @override
  final String? searchKey;
  @override
  final String? interests;
  @override
  final String? timeFilter;

  @override
  String toString() {
    return 'GetAllGroupsWithoutLoginRequestModel(searchKey: $searchKey, interests: $interests, timeFilter: $timeFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllGroupsWithoutLoginRequestModelImpl &&
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
  _$$GetAllGroupsWithoutLoginRequestModelImplCopyWith<
          _$GetAllGroupsWithoutLoginRequestModelImpl>
      get copyWith => __$$GetAllGroupsWithoutLoginRequestModelImplCopyWithImpl<
          _$GetAllGroupsWithoutLoginRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllGroupsWithoutLoginRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllGroupsWithoutLoginRequestModel
    implements GetAllGroupsWithoutLoginRequestModel {
  const factory _GetAllGroupsWithoutLoginRequestModel(
      {final String? searchKey,
      final String? interests,
      final String? timeFilter}) = _$GetAllGroupsWithoutLoginRequestModelImpl;

  factory _GetAllGroupsWithoutLoginRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAllGroupsWithoutLoginRequestModelImpl.fromJson;

  @override
  String? get searchKey;
  @override
  String? get interests;
  @override
  String? get timeFilter;
  @override
  @JsonKey(ignore: true)
  _$$GetAllGroupsWithoutLoginRequestModelImplCopyWith<
          _$GetAllGroupsWithoutLoginRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetAllGroupsWithoutLoginResponseModel
    _$GetAllGroupsWithoutLoginResponseModelFromJson(Map<String, dynamic> json) {
  return _GetAllGroupsWithoutLoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllGroupsWithoutLoginResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<GroupDatum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllGroupsWithoutLoginResponseModelCopyWith<
          GetAllGroupsWithoutLoginResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllGroupsWithoutLoginResponseModelCopyWith<$Res> {
  factory $GetAllGroupsWithoutLoginResponseModelCopyWith(
          GetAllGroupsWithoutLoginResponseModel value,
          $Res Function(GetAllGroupsWithoutLoginResponseModel) then) =
      _$GetAllGroupsWithoutLoginResponseModelCopyWithImpl<$Res,
          GetAllGroupsWithoutLoginResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<GroupDatum>? data});
}

/// @nodoc
class _$GetAllGroupsWithoutLoginResponseModelCopyWithImpl<$Res,
        $Val extends GetAllGroupsWithoutLoginResponseModel>
    implements $GetAllGroupsWithoutLoginResponseModelCopyWith<$Res> {
  _$GetAllGroupsWithoutLoginResponseModelCopyWithImpl(this._value, this._then);

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
              as List<GroupDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllGroupsWithoutLoginResponseModelImplCopyWith<$Res>
    implements $GetAllGroupsWithoutLoginResponseModelCopyWith<$Res> {
  factory _$$GetAllGroupsWithoutLoginResponseModelImplCopyWith(
          _$GetAllGroupsWithoutLoginResponseModelImpl value,
          $Res Function(_$GetAllGroupsWithoutLoginResponseModelImpl) then) =
      __$$GetAllGroupsWithoutLoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<GroupDatum>? data});
}

/// @nodoc
class __$$GetAllGroupsWithoutLoginResponseModelImplCopyWithImpl<$Res>
    extends _$GetAllGroupsWithoutLoginResponseModelCopyWithImpl<$Res,
        _$GetAllGroupsWithoutLoginResponseModelImpl>
    implements _$$GetAllGroupsWithoutLoginResponseModelImplCopyWith<$Res> {
  __$$GetAllGroupsWithoutLoginResponseModelImplCopyWithImpl(
      _$GetAllGroupsWithoutLoginResponseModelImpl _value,
      $Res Function(_$GetAllGroupsWithoutLoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAllGroupsWithoutLoginResponseModelImpl(
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
              as List<GroupDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllGroupsWithoutLoginResponseModelImpl
    implements _GetAllGroupsWithoutLoginResponseModel {
  const _$GetAllGroupsWithoutLoginResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<GroupDatum>? data})
      : _data = data;

  factory _$GetAllGroupsWithoutLoginResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllGroupsWithoutLoginResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<GroupDatum>? _data;
  @override
  @JsonKey(name: "data")
  List<GroupDatum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllGroupsWithoutLoginResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllGroupsWithoutLoginResponseModelImpl &&
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
  _$$GetAllGroupsWithoutLoginResponseModelImplCopyWith<
          _$GetAllGroupsWithoutLoginResponseModelImpl>
      get copyWith => __$$GetAllGroupsWithoutLoginResponseModelImplCopyWithImpl<
          _$GetAllGroupsWithoutLoginResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllGroupsWithoutLoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllGroupsWithoutLoginResponseModel
    implements GetAllGroupsWithoutLoginResponseModel {
  const factory _GetAllGroupsWithoutLoginResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<GroupDatum>? data}) =
      _$GetAllGroupsWithoutLoginResponseModelImpl;

  factory _GetAllGroupsWithoutLoginResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAllGroupsWithoutLoginResponseModelImpl.fromJson;

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
  List<GroupDatum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAllGroupsWithoutLoginResponseModelImplCopyWith<
          _$GetAllGroupsWithoutLoginResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GroupDatum _$GroupDatumFromJson(Map<String, dynamic> json) {
  return _GroupDatum.fromJson(json);
}

/// @nodoc
mixin _$GroupDatum {
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
  @JsonKey(name: "rules")
  String? get rules => throw _privateConstructorUsedError;
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
  @JsonKey(name: "follower")
  int? get follower => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "averageRating")
  double? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  GroupId? get groupId => throw _privateConstructorUsedError;
  PeopleAndGroupPost? get peopleAndGroupPost =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupDatumCopyWith<GroupDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDatumCopyWith<$Res> {
  factory $GroupDatumCopyWith(
          GroupDatum value, $Res Function(GroupDatum) then) =
      _$GroupDatumCopyWithImpl<$Res, GroupDatum>;
  @useResult
  $Res call(
      {@JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest>? interests,
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
      @JsonKey(name: "rules") String? rules,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "subscribers") List<Subscriber>? subscribers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "follower") int? follower,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "averageRating") double? averageRating,
      @JsonKey(name: "groupId") GroupId? groupId,
      PeopleAndGroupPost? peopleAndGroupPost});

  $UserIdCopyWith<$Res>? get userId;
  $GroupIdCopyWith<$Res>? get groupId;
  $PeopleAndGroupPostCopyWith<$Res>? get peopleAndGroupPost;
}

/// @nodoc
class _$GroupDatumCopyWithImpl<$Res, $Val extends GroupDatum>
    implements $GroupDatumCopyWith<$Res> {
  _$GroupDatumCopyWithImpl(this._value, this._then);

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
    Object? rules = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? subscribers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? follower = freezed,
    Object? rating = freezed,
    Object? averageRating = freezed,
    Object? groupId = freezed,
    Object? peopleAndGroupPost = freezed,
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
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
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
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as GroupId?,
      peopleAndGroupPost: freezed == peopleAndGroupPost
          ? _value.peopleAndGroupPost
          : peopleAndGroupPost // ignore: cast_nullable_to_non_nullable
              as PeopleAndGroupPost?,
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
  $PeopleAndGroupPostCopyWith<$Res>? get peopleAndGroupPost {
    if (_value.peopleAndGroupPost == null) {
      return null;
    }

    return $PeopleAndGroupPostCopyWith<$Res>(_value.peopleAndGroupPost!,
        (value) {
      return _then(_value.copyWith(peopleAndGroupPost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GroupDatumImplCopyWith<$Res>
    implements $GroupDatumCopyWith<$Res> {
  factory _$$GroupDatumImplCopyWith(
          _$GroupDatumImpl value, $Res Function(_$GroupDatumImpl) then) =
      __$$GroupDatumImplCopyWithImpl<$Res>;
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
      dynamic oneMonthSubscriptionPrice,
      @JsonKey(name: "six_month_subscription_price")
      dynamic sixMonthSubscriptionPrice,
      @JsonKey(name: "twelve_month_subscription_price")
      dynamic twelveMonthSubscriptionPrice,
      @JsonKey(name: "promoCode") dynamic promoCode,
      @JsonKey(name: "discount") dynamic discount,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "rules") String? rules,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "subscribers") List<Subscriber>? subscribers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "follower") int? follower,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "averageRating") double? averageRating,
      @JsonKey(name: "groupId") GroupId? groupId,
      PeopleAndGroupPost? peopleAndGroupPost});

  @override
  $UserIdCopyWith<$Res>? get userId;
  @override
  $GroupIdCopyWith<$Res>? get groupId;
  @override
  $PeopleAndGroupPostCopyWith<$Res>? get peopleAndGroupPost;
}

/// @nodoc
class __$$GroupDatumImplCopyWithImpl<$Res>
    extends _$GroupDatumCopyWithImpl<$Res, _$GroupDatumImpl>
    implements _$$GroupDatumImplCopyWith<$Res> {
  __$$GroupDatumImplCopyWithImpl(
      _$GroupDatumImpl _value, $Res Function(_$GroupDatumImpl) _then)
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
    Object? rules = freezed,
    Object? name = freezed,
    Object? userId = freezed,
    Object? subscribers = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? follower = freezed,
    Object? rating = freezed,
    Object? averageRating = freezed,
    Object? groupId = freezed,
    Object? peopleAndGroupPost = freezed,
  }) {
    return _then(_$GroupDatumImpl(
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
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
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
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as GroupId?,
      peopleAndGroupPost: freezed == peopleAndGroupPost
          ? _value.peopleAndGroupPost
          : peopleAndGroupPost // ignore: cast_nullable_to_non_nullable
              as PeopleAndGroupPost?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupDatumImpl implements _GroupDatum {
  const _$GroupDatumImpl(
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
      @JsonKey(name: "rules") this.rules,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "subscribers") final List<Subscriber>? subscribers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "follower") this.follower,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "averageRating") this.averageRating,
      @JsonKey(name: "groupId") this.groupId,
      this.peopleAndGroupPost})
      : _interests = interests,
        _subscribers = subscribers;

  factory _$GroupDatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupDatumImplFromJson(json);

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
  @JsonKey(name: "rules")
  final String? rules;
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
  @JsonKey(name: "follower")
  final int? follower;
  @override
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "averageRating")
  final double? averageRating;
  @override
  @JsonKey(name: "groupId")
  final GroupId? groupId;
  @override
  final PeopleAndGroupPost? peopleAndGroupPost;

  @override
  String toString() {
    return 'GroupDatum(groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, description: $description, location: $location, interests: $interests, privacy: $privacy, oneMonthSubscriptionPrice: $oneMonthSubscriptionPrice, sixMonthSubscriptionPrice: $sixMonthSubscriptionPrice, twelveMonthSubscriptionPrice: $twelveMonthSubscriptionPrice, promoCode: $promoCode, discount: $discount, productId: $productId, id: $id, rules: $rules, name: $name, userId: $userId, subscribers: $subscribers, createdAt: $createdAt, updatedAt: $updatedAt, follower: $follower, rating: $rating, averageRating: $averageRating, groupId: $groupId, peopleAndGroupPost: $peopleAndGroupPost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupDatumImpl &&
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
            (identical(other.rules, rules) || other.rules == rules) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.follower, follower) ||
                other.follower == follower) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.peopleAndGroupPost, peopleAndGroupPost) ||
                other.peopleAndGroupPost == peopleAndGroupPost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        groupPhoto,
        coverPhoto,
        description,
        location,
        const DeepCollectionEquality().hash(_interests),
        privacy,
        const DeepCollectionEquality().hash(oneMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(sixMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(twelveMonthSubscriptionPrice),
        const DeepCollectionEquality().hash(promoCode),
        const DeepCollectionEquality().hash(discount),
        const DeepCollectionEquality().hash(productId),
        id,
        rules,
        name,
        userId,
        const DeepCollectionEquality().hash(_subscribers),
        createdAt,
        updatedAt,
        follower,
        rating,
        averageRating,
        groupId,
        peopleAndGroupPost
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupDatumImplCopyWith<_$GroupDatumImpl> get copyWith =>
      __$$GroupDatumImplCopyWithImpl<_$GroupDatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupDatumImplToJson(
      this,
    );
  }
}

abstract class _GroupDatum implements GroupDatum {
  const factory _GroupDatum(
      {@JsonKey(name: "groupPhoto") final String? groupPhoto,
      @JsonKey(name: "coverPhoto") final String? coverPhoto,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "interests") final List<Interest>? interests,
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
      @JsonKey(name: "rules") final String? rules,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "userId") final UserId? userId,
      @JsonKey(name: "subscribers") final List<Subscriber>? subscribers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "follower") final int? follower,
      @JsonKey(name: "rating") final int? rating,
      @JsonKey(name: "averageRating") final double? averageRating,
      @JsonKey(name: "groupId") final GroupId? groupId,
      final PeopleAndGroupPost? peopleAndGroupPost}) = _$GroupDatumImpl;

  factory _GroupDatum.fromJson(Map<String, dynamic> json) =
      _$GroupDatumImpl.fromJson;

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
  @JsonKey(name: "rules")
  String? get rules;
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
  @JsonKey(name: "follower")
  int? get follower;
  @override
  @JsonKey(name: "rating")
  int? get rating;
  @override
  @JsonKey(name: "averageRating")
  double? get averageRating;
  @override
  @JsonKey(name: "groupId")
  GroupId? get groupId;
  @override
  PeopleAndGroupPost? get peopleAndGroupPost;
  @override
  @JsonKey(ignore: true)
  _$$GroupDatumImplCopyWith<_$GroupDatumImpl> get copyWith =>
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
  @JsonKey(name: "accountId")
  String? get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: "accountLink")
  String? get accountLink => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<Subscriber>? get subscribers => throw _privateConstructorUsedError;
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
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "accountId") String? accountId,
      @JsonKey(name: "accountLink") String? accountLink,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<Subscriber>? subscribers,
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
    Object? phone = freezed,
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
              as List<Interest>?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<Subscriber>?,
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
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
      @JsonKey(name: "accountId") String? accountId,
      @JsonKey(name: "accountLink") String? accountLink,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "subscribers") List<Subscriber>? subscribers,
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
    Object? phone = freezed,
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
              as List<Interest>?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<Subscriber>?,
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
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry,
      @JsonKey(name: "accountId") this.accountId,
      @JsonKey(name: "accountLink") this.accountLink,
      @JsonKey(name: "customerId") this.customerId,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "subscribers") final List<Subscriber>? subscribers,
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
  @JsonKey(name: "accountId")
  final String? accountId;
  @override
  @JsonKey(name: "accountLink")
  final String? accountLink;
  @override
  @JsonKey(name: "customerId")
  final String? customerId;
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
    return 'UserId(id: $id, role: $role, isEmailVerified: $isEmailVerified, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, password: $password, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, otpExpiry: $otpExpiry, accountId: $accountId, accountLink: $accountLink, customerId: $customerId, interests: $interests, subscribers: $subscribers, coverPhoto: $coverPhoto, description: $description, location: $location, profilePhoto: $profilePhoto)';
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
        phone,
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
          @JsonKey(name: "phone") final String? phone,
          @JsonKey(name: "password") final String? password,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "otp") final dynamic otp,
          @JsonKey(name: "otpExpiry") final dynamic otpExpiry,
          @JsonKey(name: "accountId") final String? accountId,
          @JsonKey(name: "accountLink") final String? accountLink,
          @JsonKey(name: "customerId") final String? customerId,
          @JsonKey(name: "interests") final List<Interest>? interests,
          @JsonKey(name: "subscribers") final List<Subscriber>? subscribers,
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
  List<Interest>? get interests;
  @override
  @JsonKey(name: "subscribers")
  List<Subscriber>? get subscribers;
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

GroupId _$GroupIdFromJson(Map<String, dynamic> json) {
  return _GroupId.fromJson(json);
}

/// @nodoc
mixin _$GroupId {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<Subscriber>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<Follower?>? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewer")
  List<Reviewer>? get reviewer => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupPhoto") String? groupPhoto,
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
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "subscribers") List<Subscriber>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "reviewer") List<Reviewer>? reviewer,
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
    Object? id = freezed,
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
    Object? name = freezed,
    Object? interests = freezed,
    Object? userId = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? reviewer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<Subscriber>?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower?>?,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<Reviewer>?,
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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupPhoto") String? groupPhoto,
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
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "subscribers") List<Subscriber>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "reviewer") List<Reviewer>? reviewer,
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
    Object? id = freezed,
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
    Object? name = freezed,
    Object? interests = freezed,
    Object? userId = freezed,
    Object? subscribers = freezed,
    Object? followers = freezed,
    Object? reviewer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GroupIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<Subscriber>?,
      followers: freezed == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower?>?,
      reviewer: freezed == reviewer
          ? _value._reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<Reviewer>?,
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
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "groupPhoto") this.groupPhoto,
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
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "subscribers") final List<Subscriber>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "reviewer") final List<Reviewer>? reviewer,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt})
      : _interests = interests,
        _subscribers = subscribers,
        _followers = followers,
        _reviewer = reviewer;

  factory _$GroupIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupIdImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
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
  @JsonKey(name: "name")
  final String? name;
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
  @JsonKey(name: "userId")
  final String? userId;
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
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'GroupId(id: $id, groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, description: $description, location: $location, privacy: $privacy, oneMonthSubscriptionPrice: $oneMonthSubscriptionPrice, sixMonthSubscriptionPrice: $sixMonthSubscriptionPrice, twelveMonthSubscriptionPrice: $twelveMonthSubscriptionPrice, promoCode: $promoCode, discount: $discount, productId: $productId, name: $name, interests: $interests, userId: $userId, subscribers: $subscribers, followers: $followers, reviewer: $reviewer, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupIdImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
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
        id,
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
        name,
        const DeepCollectionEquality().hash(_interests),
        userId,
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_followers),
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
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "groupPhoto") final String? groupPhoto,
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
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "subscribers") final List<Subscriber>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "reviewer") final List<Reviewer>? reviewer,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$GroupIdImpl;

  factory _GroupId.fromJson(Map<String, dynamic> json) = _$GroupIdImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
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
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "subscribers")
  List<Subscriber>? get subscribers;
  @override
  @JsonKey(name: "followers")
  List<Follower?>? get followers;
  @override
  @JsonKey(name: "reviewer")
  List<Reviewer>? get reviewer;
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

Reviewer _$ReviewerFromJson(Map<String, dynamic> json) {
  return _Reviewer.fromJson(json);
}

/// @nodoc
mixin _$Reviewer {
  @JsonKey(name: "review")
  dynamic get review => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "review") dynamic review,
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
              as dynamic,
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
      {@JsonKey(name: "review") dynamic review,
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
              as dynamic,
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
  final dynamic review;
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
            const DeepCollectionEquality().equals(other.review, review) &&
            (identical(other.title, title) || other.title == title) &&
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
      title,
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
  dynamic get review;
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

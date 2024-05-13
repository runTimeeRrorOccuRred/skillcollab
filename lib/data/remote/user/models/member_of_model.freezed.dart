// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_of_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberOfResponseModel _$MemberOfResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MemberOfResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MemberOfResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Datum?>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberOfResponseModelCopyWith<MemberOfResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberOfResponseModelCopyWith<$Res> {
  factory $MemberOfResponseModelCopyWith(MemberOfResponseModel value,
          $Res Function(MemberOfResponseModel) then) =
      _$MemberOfResponseModelCopyWithImpl<$Res, MemberOfResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Datum?>? data});
}

/// @nodoc
class _$MemberOfResponseModelCopyWithImpl<$Res,
        $Val extends MemberOfResponseModel>
    implements $MemberOfResponseModelCopyWith<$Res> {
  _$MemberOfResponseModelCopyWithImpl(this._value, this._then);

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
              as List<Datum?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberOfResponseModelImplCopyWith<$Res>
    implements $MemberOfResponseModelCopyWith<$Res> {
  factory _$$MemberOfResponseModelImplCopyWith(
          _$MemberOfResponseModelImpl value,
          $Res Function(_$MemberOfResponseModelImpl) then) =
      __$$MemberOfResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Datum?>? data});
}

/// @nodoc
class __$$MemberOfResponseModelImplCopyWithImpl<$Res>
    extends _$MemberOfResponseModelCopyWithImpl<$Res,
        _$MemberOfResponseModelImpl>
    implements _$$MemberOfResponseModelImplCopyWith<$Res> {
  __$$MemberOfResponseModelImplCopyWithImpl(_$MemberOfResponseModelImpl _value,
      $Res Function(_$MemberOfResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MemberOfResponseModelImpl(
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
              as List<Datum?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberOfResponseModelImpl implements _MemberOfResponseModel {
  const _$MemberOfResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<Datum?>? data})
      : _data = data;

  factory _$MemberOfResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberOfResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<Datum?>? _data;
  @override
  @JsonKey(name: "data")
  List<Datum?>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MemberOfResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberOfResponseModelImpl &&
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
  _$$MemberOfResponseModelImplCopyWith<_$MemberOfResponseModelImpl>
      get copyWith => __$$MemberOfResponseModelImplCopyWithImpl<
          _$MemberOfResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberOfResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MemberOfResponseModel implements MemberOfResponseModel {
  const factory _MemberOfResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<Datum?>? data}) =
      _$MemberOfResponseModelImpl;

  factory _MemberOfResponseModel.fromJson(Map<String, dynamic> json) =
      _$MemberOfResponseModelImpl.fromJson;

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
  List<Datum?>? get data;
  @override
  @JsonKey(ignore: true)
  _$$MemberOfResponseModelImplCopyWith<_$MemberOfResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "groupId")
  GroupId? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "following")
  dynamic get following => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  UserId? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "pinData")
  List<PinDatum>? get pinData => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "groupId") GroupId? groupId,
      @JsonKey(name: "following") dynamic following,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "pinData") List<PinDatum>? pinData});

  $GroupIdCopyWith<$Res>? get groupId;
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
    Object? groupId = freezed,
    Object? following = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pinData = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as GroupId?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as UserId?,
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
      pinData: freezed == pinData
          ? _value.pinData
          : pinData // ignore: cast_nullable_to_non_nullable
              as List<PinDatum>?,
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
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") GroupId? groupId,
      @JsonKey(name: "following") dynamic following,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "pinData") List<PinDatum>? pinData});

  @override
  $GroupIdCopyWith<$Res>? get groupId;
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
    Object? groupId = freezed,
    Object? following = freezed,
    Object? status = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pinData = freezed,
  }) {
    return _then(_$DatumImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as GroupId?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as UserId?,
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
      pinData: freezed == pinData
          ? _value._pinData
          : pinData // ignore: cast_nullable_to_non_nullable
              as List<PinDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "following") this.following,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "pinData") final List<PinDatum>? pinData})
      : _pinData = pinData;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final GroupId? groupId;
  @override
  @JsonKey(name: "following")
  final dynamic following;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "userId")
  final UserId? userId;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
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
  String toString() {
    return 'Datum(groupId: $groupId, following: $following, status: $status, id: $id, userId: $userId, type: $type, createdAt: $createdAt, updatedAt: $updatedAt, pinData: $pinData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            const DeepCollectionEquality().equals(other.following, following) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._pinData, _pinData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupId,
      const DeepCollectionEquality().hash(following),
      status,
      id,
      userId,
      type,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_pinData));

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
      {@JsonKey(name: "groupId") final GroupId? groupId,
      @JsonKey(name: "following") final dynamic following,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userId") final UserId? userId,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "pinData") final List<PinDatum>? pinData}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  GroupId? get groupId;
  @override
  @JsonKey(name: "following")
  dynamic get following;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "userId")
  UserId? get userId;
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
  @JsonKey(name: "pinData")
  List<PinDatum>? get pinData;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<Subscriber?>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewer")
  List<Reviewer?>? get reviewer => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "follower")
  int? get follower => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "averageRating")
  int? get averageRating => throw _privateConstructorUsedError;

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
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "subscribers") List<Subscriber?>? subscribers,
      @JsonKey(name: "reviewer") List<Reviewer?>? reviewer,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "follower") int? follower,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "averageRating") int? averageRating});
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
    Object? userId = freezed,
    Object? subscribers = freezed,
    Object? reviewer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? follower = freezed,
    Object? rating = freezed,
    Object? averageRating = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<Subscriber?>?,
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
              as int?,
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
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "subscribers") List<Subscriber?>? subscribers,
      @JsonKey(name: "reviewer") List<Reviewer?>? reviewer,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "follower") int? follower,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "averageRating") int? averageRating});
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
    Object? userId = freezed,
    Object? subscribers = freezed,
    Object? reviewer = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? follower = freezed,
    Object? rating = freezed,
    Object? averageRating = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<Subscriber?>?,
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
              as int?,
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
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "subscribers") final List<Subscriber?>? subscribers,
      @JsonKey(name: "reviewer") final List<Reviewer?>? reviewer,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "follower") this.follower,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "averageRating") this.averageRating})
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
  @JsonKey(name: "userId")
  final String? userId;
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
  @JsonKey(name: "follower")
  final int? follower;
  @override
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "averageRating")
  final int? averageRating;

  @override
  String toString() {
    return 'GroupId(groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, description: $description, location: $location, privacy: $privacy, oneMonthSubscriptionPrice: $oneMonthSubscriptionPrice, sixMonthSubscriptionPrice: $sixMonthSubscriptionPrice, twelveMonthSubscriptionPrice: $twelveMonthSubscriptionPrice, promoCode: $promoCode, discount: $discount, productId: $productId, id: $id, name: $name, interests: $interests, followers: $followers, userId: $userId, subscribers: $subscribers, reviewer: $reviewer, createdAt: $createdAt, updatedAt: $updatedAt, follower: $follower, rating: $rating, averageRating: $averageRating)';
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
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
            const DeepCollectionEquality().equals(other._reviewer, _reviewer) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.follower, follower) ||
                other.follower == follower) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating));
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
        userId,
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_reviewer),
        createdAt,
        updatedAt,
        follower,
        rating,
        averageRating
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
          @JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "subscribers") final List<Subscriber?>? subscribers,
          @JsonKey(name: "reviewer") final List<Reviewer?>? reviewer,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "follower") final int? follower,
          @JsonKey(name: "rating") final int? rating,
          @JsonKey(name: "averageRating") final int? averageRating}) =
      _$GroupIdImpl;

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
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "subscribers")
  List<Subscriber?>? get subscribers;
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
  @JsonKey(name: "follower")
  int? get follower;
  @override
  @JsonKey(name: "rating")
  int? get rating;
  @override
  @JsonKey(name: "averageRating")
  int? get averageRating;
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

UserId _$UserIdFromJson(Map<String, dynamic> json) {
  return _UserId.fromJson(json);
}

/// @nodoc
mixin _$UserId {
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified => throw _privateConstructorUsedError;
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
  @JsonKey(name: "expertise")
  String? get expertise => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  dynamic get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "profilePhoto")
  dynamic get profilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest?>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  List<Follower?>? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  dynamic get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry => throw _privateConstructorUsedError;

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
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "coverPhoto") dynamic coverPhoto,
      @JsonKey(name: "profilePhoto") dynamic profilePhoto,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry});
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
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? expertise = freezed,
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
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "expertise") String? expertise,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "coverPhoto") dynamic coverPhoto,
      @JsonKey(name: "profilePhoto") dynamic profilePhoto,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "interests") List<Interest?>? interests,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "followers") List<Follower?>? followers,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry});
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
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? expertise = freezed,
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
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
      profilePhoto: freezed == profilePhoto
          ? _value.profilePhoto
          : profilePhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdImpl implements _UserId {
  const _$UserIdImpl(
      {@JsonKey(name: "role") this.role,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "expertise") this.expertise,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry})
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
  @JsonKey(name: "expertise")
  final String? expertise;
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
  final dynamic coverPhoto;
  @override
  @JsonKey(name: "profilePhoto")
  final dynamic profilePhoto;
  @override
  @JsonKey(name: "description")
  final dynamic description;
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
  final dynamic otp;
  @override
  @JsonKey(name: "otpExpiry")
  final dynamic otpExpiry;

  @override
  String toString() {
    return 'UserId(role: $role, isEmailVerified: $isEmailVerified, productId: $productId, deviceToken: $deviceToken, id: $id, firstName: $firstName, lastName: $lastName, userName: $userName, expertise: $expertise, email: $email, phone: $phone, password: $password, coverPhoto: $coverPhoto, profilePhoto: $profilePhoto, description: $description, location: $location, interests: $interests, subscribers: $subscribers, followers: $followers, createdAt: $createdAt, updatedAt: $updatedAt, otp: $otp, otpExpiry: $otpExpiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
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
            (identical(other.expertise, expertise) ||
                other.expertise == expertise) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality()
                .equals(other.coverPhoto, coverPhoto) &&
            const DeepCollectionEquality()
                .equals(other.profilePhoto, profilePhoto) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
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
            const DeepCollectionEquality().equals(other.otpExpiry, otpExpiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        role,
        isEmailVerified,
        const DeepCollectionEquality().hash(productId),
        const DeepCollectionEquality().hash(_deviceToken),
        id,
        firstName,
        lastName,
        userName,
        expertise,
        email,
        phone,
        password,
        const DeepCollectionEquality().hash(coverPhoto),
        const DeepCollectionEquality().hash(profilePhoto),
        const DeepCollectionEquality().hash(description),
        location,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(_subscribers),
        const DeepCollectionEquality().hash(_followers),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(otp),
        const DeepCollectionEquality().hash(otpExpiry)
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
      @JsonKey(name: "productId") final dynamic productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "firstName") final String? firstName,
      @JsonKey(name: "lastName") final String? lastName,
      @JsonKey(name: "userName") final String? userName,
      @JsonKey(name: "expertise") final String? expertise,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "phone") final String? phone,
      @JsonKey(name: "password") final String? password,
      @JsonKey(name: "coverPhoto") final dynamic coverPhoto,
      @JsonKey(name: "profilePhoto") final dynamic profilePhoto,
      @JsonKey(name: "description") final dynamic description,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "interests") final List<Interest?>? interests,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "followers") final List<Follower?>? followers,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "otp") final dynamic otp,
      @JsonKey(name: "otpExpiry") final dynamic otpExpiry}) = _$UserIdImpl;

  factory _UserId.fromJson(Map<String, dynamic> json) = _$UserIdImpl.fromJson;

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
  @JsonKey(name: "expertise")
  String? get expertise;
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
  dynamic get coverPhoto;
  @override
  @JsonKey(name: "profilePhoto")
  dynamic get profilePhoto;
  @override
  @JsonKey(name: "description")
  dynamic get description;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "interests")
  List<Interest?>? get interests;
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
  dynamic get otp;
  @override
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry;
  @override
  @JsonKey(ignore: true)
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

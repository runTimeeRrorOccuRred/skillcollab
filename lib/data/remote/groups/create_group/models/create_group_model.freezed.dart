// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateGroupRequestModel _$CreateGroupRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateGroupRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateGroupRequestModel {
  String? get groupPhoto => throw _privateConstructorUsedError;
  String? get coverPhoto => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<Interest>? get interests => throw _privateConstructorUsedError;
  String? get privacy => throw _privateConstructorUsedError;
  String? get rules => throw _privateConstructorUsedError;
  List<Follower>? get followers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateGroupRequestModelCopyWith<CreateGroupRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupRequestModelCopyWith<$Res> {
  factory $CreateGroupRequestModelCopyWith(CreateGroupRequestModel value,
          $Res Function(CreateGroupRequestModel) then) =
      _$CreateGroupRequestModelCopyWithImpl<$Res, CreateGroupRequestModel>;
  @useResult
  $Res call(
      {String? groupPhoto,
      String? coverPhoto,
      String? name,
      String? description,
      String? location,
      List<Interest>? interests,
      String? privacy,
      String? rules,
      List<Follower>? followers});
}

/// @nodoc
class _$CreateGroupRequestModelCopyWithImpl<$Res,
        $Val extends CreateGroupRequestModel>
    implements $CreateGroupRequestModelCopyWith<$Res> {
  _$CreateGroupRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? privacy = freezed,
    Object? rules = freezed,
    Object? followers = freezed,
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
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateGroupRequestModelImplCopyWith<$Res>
    implements $CreateGroupRequestModelCopyWith<$Res> {
  factory _$$CreateGroupRequestModelImplCopyWith(
          _$CreateGroupRequestModelImpl value,
          $Res Function(_$CreateGroupRequestModelImpl) then) =
      __$$CreateGroupRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? groupPhoto,
      String? coverPhoto,
      String? name,
      String? description,
      String? location,
      List<Interest>? interests,
      String? privacy,
      String? rules,
      List<Follower>? followers});
}

/// @nodoc
class __$$CreateGroupRequestModelImplCopyWithImpl<$Res>
    extends _$CreateGroupRequestModelCopyWithImpl<$Res,
        _$CreateGroupRequestModelImpl>
    implements _$$CreateGroupRequestModelImplCopyWith<$Res> {
  __$$CreateGroupRequestModelImplCopyWithImpl(
      _$CreateGroupRequestModelImpl _value,
      $Res Function(_$CreateGroupRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? privacy = freezed,
    Object? rules = freezed,
    Object? followers = freezed,
  }) {
    return _then(_$CreateGroupRequestModelImpl(
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
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateGroupRequestModelImpl implements _CreateGroupRequestModel {
  const _$CreateGroupRequestModelImpl(
      {this.groupPhoto,
      this.coverPhoto,
      this.name,
      this.description,
      this.location,
      final List<Interest>? interests,
      this.privacy,
      this.rules,
      final List<Follower>? followers})
      : _interests = interests,
        _followers = followers;

  factory _$CreateGroupRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateGroupRequestModelImplFromJson(json);

  @override
  final String? groupPhoto;
  @override
  final String? coverPhoto;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? location;
  final List<Interest>? _interests;
  @override
  List<Interest>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? privacy;
  @override
  final String? rules;
  final List<Follower>? _followers;
  @override
  List<Follower>? get followers {
    final value = _followers;
    if (value == null) return null;
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateGroupRequestModel(groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, name: $name, description: $description, location: $location, interests: $interests, privacy: $privacy, rules: $rules, followers: $followers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupRequestModelImpl &&
            (identical(other.groupPhoto, groupPhoto) ||
                other.groupPhoto == groupPhoto) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.rules, rules) || other.rules == rules) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupPhoto,
      coverPhoto,
      name,
      description,
      location,
      const DeepCollectionEquality().hash(_interests),
      privacy,
      rules,
      const DeepCollectionEquality().hash(_followers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateGroupRequestModelImplCopyWith<_$CreateGroupRequestModelImpl>
      get copyWith => __$$CreateGroupRequestModelImplCopyWithImpl<
          _$CreateGroupRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGroupRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateGroupRequestModel implements CreateGroupRequestModel {
  const factory _CreateGroupRequestModel(
      {final String? groupPhoto,
      final String? coverPhoto,
      final String? name,
      final String? description,
      final String? location,
      final List<Interest>? interests,
      final String? privacy,
      final String? rules,
      final List<Follower>? followers}) = _$CreateGroupRequestModelImpl;

  factory _CreateGroupRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateGroupRequestModelImpl.fromJson;

  @override
  String? get groupPhoto;
  @override
  String? get coverPhoto;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get location;
  @override
  List<Interest>? get interests;
  @override
  String? get privacy;
  @override
  String? get rules;
  @override
  List<Follower>? get followers;
  @override
  @JsonKey(ignore: true)
  _$$CreateGroupRequestModelImplCopyWith<_$CreateGroupRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreatePremiumGroupRequestModel _$CreatePremiumGroupRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreatePremiumGroupRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreatePremiumGroupRequestModel {
  String? get groupPhoto => throw _privateConstructorUsedError;
  String? get coverPhoto => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<Interest>? get interests => throw _privateConstructorUsedError;
  String? get privacy => throw _privateConstructorUsedError;
  String? get rules => throw _privateConstructorUsedError;
  int? get one_month_subscription_price => throw _privateConstructorUsedError;
  int? get six_month_subscription_price => throw _privateConstructorUsedError;
  int? get twelve_month_subscription_price =>
      throw _privateConstructorUsedError;
  String? get promoCode => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  List<Follower>? get followers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePremiumGroupRequestModelCopyWith<CreatePremiumGroupRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePremiumGroupRequestModelCopyWith<$Res> {
  factory $CreatePremiumGroupRequestModelCopyWith(
          CreatePremiumGroupRequestModel value,
          $Res Function(CreatePremiumGroupRequestModel) then) =
      _$CreatePremiumGroupRequestModelCopyWithImpl<$Res,
          CreatePremiumGroupRequestModel>;
  @useResult
  $Res call(
      {String? groupPhoto,
      String? coverPhoto,
      String? name,
      String? description,
      String? location,
      List<Interest>? interests,
      String? privacy,
      String? rules,
      int? one_month_subscription_price,
      int? six_month_subscription_price,
      int? twelve_month_subscription_price,
      String? promoCode,
      int? discount,
      List<Follower>? followers});
}

/// @nodoc
class _$CreatePremiumGroupRequestModelCopyWithImpl<$Res,
        $Val extends CreatePremiumGroupRequestModel>
    implements $CreatePremiumGroupRequestModelCopyWith<$Res> {
  _$CreatePremiumGroupRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? privacy = freezed,
    Object? rules = freezed,
    Object? one_month_subscription_price = freezed,
    Object? six_month_subscription_price = freezed,
    Object? twelve_month_subscription_price = freezed,
    Object? promoCode = freezed,
    Object? discount = freezed,
    Object? followers = freezed,
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
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      one_month_subscription_price: freezed == one_month_subscription_price
          ? _value.one_month_subscription_price
          : one_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      six_month_subscription_price: freezed == six_month_subscription_price
          ? _value.six_month_subscription_price
          : six_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      twelve_month_subscription_price: freezed ==
              twelve_month_subscription_price
          ? _value.twelve_month_subscription_price
          : twelve_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePremiumGroupRequestModelImplCopyWith<$Res>
    implements $CreatePremiumGroupRequestModelCopyWith<$Res> {
  factory _$$CreatePremiumGroupRequestModelImplCopyWith(
          _$CreatePremiumGroupRequestModelImpl value,
          $Res Function(_$CreatePremiumGroupRequestModelImpl) then) =
      __$$CreatePremiumGroupRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? groupPhoto,
      String? coverPhoto,
      String? name,
      String? description,
      String? location,
      List<Interest>? interests,
      String? privacy,
      String? rules,
      int? one_month_subscription_price,
      int? six_month_subscription_price,
      int? twelve_month_subscription_price,
      String? promoCode,
      int? discount,
      List<Follower>? followers});
}

/// @nodoc
class __$$CreatePremiumGroupRequestModelImplCopyWithImpl<$Res>
    extends _$CreatePremiumGroupRequestModelCopyWithImpl<$Res,
        _$CreatePremiumGroupRequestModelImpl>
    implements _$$CreatePremiumGroupRequestModelImplCopyWith<$Res> {
  __$$CreatePremiumGroupRequestModelImplCopyWithImpl(
      _$CreatePremiumGroupRequestModelImpl _value,
      $Res Function(_$CreatePremiumGroupRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? privacy = freezed,
    Object? rules = freezed,
    Object? one_month_subscription_price = freezed,
    Object? six_month_subscription_price = freezed,
    Object? twelve_month_subscription_price = freezed,
    Object? promoCode = freezed,
    Object? discount = freezed,
    Object? followers = freezed,
  }) {
    return _then(_$CreatePremiumGroupRequestModelImpl(
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
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      one_month_subscription_price: freezed == one_month_subscription_price
          ? _value.one_month_subscription_price
          : one_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      six_month_subscription_price: freezed == six_month_subscription_price
          ? _value.six_month_subscription_price
          : six_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      twelve_month_subscription_price: freezed ==
              twelve_month_subscription_price
          ? _value.twelve_month_subscription_price
          : twelve_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePremiumGroupRequestModelImpl
    implements _CreatePremiumGroupRequestModel {
  const _$CreatePremiumGroupRequestModelImpl(
      {this.groupPhoto,
      this.coverPhoto,
      this.name,
      this.description,
      this.location,
      final List<Interest>? interests,
      this.privacy,
      this.rules,
      this.one_month_subscription_price,
      this.six_month_subscription_price,
      this.twelve_month_subscription_price,
      this.promoCode,
      this.discount,
      final List<Follower>? followers})
      : _interests = interests,
        _followers = followers;

  factory _$CreatePremiumGroupRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreatePremiumGroupRequestModelImplFromJson(json);

  @override
  final String? groupPhoto;
  @override
  final String? coverPhoto;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? location;
  final List<Interest>? _interests;
  @override
  List<Interest>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? privacy;
  @override
  final String? rules;
  @override
  final int? one_month_subscription_price;
  @override
  final int? six_month_subscription_price;
  @override
  final int? twelve_month_subscription_price;
  @override
  final String? promoCode;
  @override
  final int? discount;
  final List<Follower>? _followers;
  @override
  List<Follower>? get followers {
    final value = _followers;
    if (value == null) return null;
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreatePremiumGroupRequestModel(groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, name: $name, description: $description, location: $location, interests: $interests, privacy: $privacy, rules: $rules, one_month_subscription_price: $one_month_subscription_price, six_month_subscription_price: $six_month_subscription_price, twelve_month_subscription_price: $twelve_month_subscription_price, promoCode: $promoCode, discount: $discount, followers: $followers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePremiumGroupRequestModelImpl &&
            (identical(other.groupPhoto, groupPhoto) ||
                other.groupPhoto == groupPhoto) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.rules, rules) || other.rules == rules) &&
            (identical(other.one_month_subscription_price,
                    one_month_subscription_price) ||
                other.one_month_subscription_price ==
                    one_month_subscription_price) &&
            (identical(other.six_month_subscription_price,
                    six_month_subscription_price) ||
                other.six_month_subscription_price ==
                    six_month_subscription_price) &&
            (identical(other.twelve_month_subscription_price,
                    twelve_month_subscription_price) ||
                other.twelve_month_subscription_price ==
                    twelve_month_subscription_price) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      groupPhoto,
      coverPhoto,
      name,
      description,
      location,
      const DeepCollectionEquality().hash(_interests),
      privacy,
      rules,
      one_month_subscription_price,
      six_month_subscription_price,
      twelve_month_subscription_price,
      promoCode,
      discount,
      const DeepCollectionEquality().hash(_followers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePremiumGroupRequestModelImplCopyWith<
          _$CreatePremiumGroupRequestModelImpl>
      get copyWith => __$$CreatePremiumGroupRequestModelImplCopyWithImpl<
          _$CreatePremiumGroupRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePremiumGroupRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreatePremiumGroupRequestModel
    implements CreatePremiumGroupRequestModel {
  const factory _CreatePremiumGroupRequestModel(
      {final String? groupPhoto,
      final String? coverPhoto,
      final String? name,
      final String? description,
      final String? location,
      final List<Interest>? interests,
      final String? privacy,
      final String? rules,
      final int? one_month_subscription_price,
      final int? six_month_subscription_price,
      final int? twelve_month_subscription_price,
      final String? promoCode,
      final int? discount,
      final List<Follower>? followers}) = _$CreatePremiumGroupRequestModelImpl;

  factory _CreatePremiumGroupRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreatePremiumGroupRequestModelImpl.fromJson;

  @override
  String? get groupPhoto;
  @override
  String? get coverPhoto;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get location;
  @override
  List<Interest>? get interests;
  @override
  String? get privacy;
  @override
  String? get rules;
  @override
  int? get one_month_subscription_price;
  @override
  int? get six_month_subscription_price;
  @override
  int? get twelve_month_subscription_price;
  @override
  String? get promoCode;
  @override
  int? get discount;
  @override
  List<Follower>? get followers;
  @override
  @JsonKey(ignore: true)
  _$$CreatePremiumGroupRequestModelImplCopyWith<
          _$CreatePremiumGroupRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateGroupResponseModel _$CreateGroupResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateGroupResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateGroupResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateGroupResponseModelCopyWith<CreateGroupResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupResponseModelCopyWith<$Res> {
  factory $CreateGroupResponseModelCopyWith(CreateGroupResponseModel value,
          $Res Function(CreateGroupResponseModel) then) =
      _$CreateGroupResponseModelCopyWithImpl<$Res, CreateGroupResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateGroupResponseModelCopyWithImpl<$Res,
        $Val extends CreateGroupResponseModel>
    implements $CreateGroupResponseModelCopyWith<$Res> {
  _$CreateGroupResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateGroupResponseModelImplCopyWith<$Res>
    implements $CreateGroupResponseModelCopyWith<$Res> {
  factory _$$CreateGroupResponseModelImplCopyWith(
          _$CreateGroupResponseModelImpl value,
          $Res Function(_$CreateGroupResponseModelImpl) then) =
      __$$CreateGroupResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateGroupResponseModelImplCopyWithImpl<$Res>
    extends _$CreateGroupResponseModelCopyWithImpl<$Res,
        _$CreateGroupResponseModelImpl>
    implements _$$CreateGroupResponseModelImplCopyWith<$Res> {
  __$$CreateGroupResponseModelImplCopyWithImpl(
      _$CreateGroupResponseModelImpl _value,
      $Res Function(_$CreateGroupResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateGroupResponseModelImpl(
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
class _$CreateGroupResponseModelImpl implements _CreateGroupResponseModel {
  const _$CreateGroupResponseModelImpl(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$CreateGroupResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateGroupResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  @override
  final Data? data;

  @override
  String toString() {
    return 'CreateGroupResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateGroupResponseModelImpl &&
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
  _$$CreateGroupResponseModelImplCopyWith<_$CreateGroupResponseModelImpl>
      get copyWith => __$$CreateGroupResponseModelImplCopyWithImpl<
          _$CreateGroupResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateGroupResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CreateGroupResponseModel implements CreateGroupResponseModel {
  const factory _CreateGroupResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$CreateGroupResponseModelImpl;

  factory _CreateGroupResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreateGroupResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateGroupResponseModelImplCopyWith<_$CreateGroupResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get privacy => throw _privateConstructorUsedError;
  String? get groupPhoto => throw _privateConstructorUsedError;
  String? get coverPhoto => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  List<Interest>? get interests => throw _privateConstructorUsedError;
  int? get one_month_subscription_price => throw _privateConstructorUsedError;
  int? get six_month_subscription_price => throw _privateConstructorUsedError;
  int? get twelve_month_subscription_price =>
      throw _privateConstructorUsedError;
  String? get promoCode => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get rules => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

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
      {String? privacy,
      String? groupPhoto,
      String? coverPhoto,
      String? name,
      String? description,
      String? location,
      List<Interest>? interests,
      int? one_month_subscription_price,
      int? six_month_subscription_price,
      int? twelve_month_subscription_price,
      String? promoCode,
      int? discount,
      String? userId,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? rules,
      @JsonKey(name: '_id') String? id});
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
    Object? privacy = freezed,
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? one_month_subscription_price = freezed,
    Object? six_month_subscription_price = freezed,
    Object? twelve_month_subscription_price = freezed,
    Object? promoCode = freezed,
    Object? discount = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rules = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
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
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      one_month_subscription_price: freezed == one_month_subscription_price
          ? _value.one_month_subscription_price
          : one_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      six_month_subscription_price: freezed == six_month_subscription_price
          ? _value.six_month_subscription_price
          : six_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      twelve_month_subscription_price: freezed ==
              twelve_month_subscription_price
          ? _value.twelve_month_subscription_price
          : twelve_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      {String? privacy,
      String? groupPhoto,
      String? coverPhoto,
      String? name,
      String? description,
      String? location,
      List<Interest>? interests,
      int? one_month_subscription_price,
      int? six_month_subscription_price,
      int? twelve_month_subscription_price,
      String? promoCode,
      int? discount,
      String? userId,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? rules,
      @JsonKey(name: '_id') String? id});
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
    Object? privacy = freezed,
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? interests = freezed,
    Object? one_month_subscription_price = freezed,
    Object? six_month_subscription_price = freezed,
    Object? twelve_month_subscription_price = freezed,
    Object? promoCode = freezed,
    Object? discount = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rules = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DataImpl(
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
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      one_month_subscription_price: freezed == one_month_subscription_price
          ? _value.one_month_subscription_price
          : one_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      six_month_subscription_price: freezed == six_month_subscription_price
          ? _value.six_month_subscription_price
          : six_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      twelve_month_subscription_price: freezed ==
              twelve_month_subscription_price
          ? _value.twelve_month_subscription_price
          : twelve_month_subscription_price // ignore: cast_nullable_to_non_nullable
              as int?,
      promoCode: freezed == promoCode
          ? _value.promoCode
          : promoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
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
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.privacy,
      this.groupPhoto,
      this.coverPhoto,
      this.name,
      this.description,
      this.location,
      final List<Interest>? interests,
      this.one_month_subscription_price,
      this.six_month_subscription_price,
      this.twelve_month_subscription_price,
      this.promoCode,
      this.discount,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.rules,
      @JsonKey(name: '_id') this.id})
      : _interests = interests;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? privacy;
  @override
  final String? groupPhoto;
  @override
  final String? coverPhoto;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? location;
  final List<Interest>? _interests;
  @override
  List<Interest>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? one_month_subscription_price;
  @override
  final int? six_month_subscription_price;
  @override
  final int? twelve_month_subscription_price;
  @override
  final String? promoCode;
  @override
  final int? discount;
  @override
  final String? userId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? rules;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'Data(privacy: $privacy, groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, name: $name, description: $description, location: $location, interests: $interests, one_month_subscription_price: $one_month_subscription_price, six_month_subscription_price: $six_month_subscription_price, twelve_month_subscription_price: $twelve_month_subscription_price, promoCode: $promoCode, discount: $discount, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, rules: $rules, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
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
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.one_month_subscription_price,
                    one_month_subscription_price) ||
                other.one_month_subscription_price ==
                    one_month_subscription_price) &&
            (identical(other.six_month_subscription_price,
                    six_month_subscription_price) ||
                other.six_month_subscription_price ==
                    six_month_subscription_price) &&
            (identical(other.twelve_month_subscription_price,
                    twelve_month_subscription_price) ||
                other.twelve_month_subscription_price ==
                    twelve_month_subscription_price) &&
            (identical(other.promoCode, promoCode) ||
                other.promoCode == promoCode) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.rules, rules) || other.rules == rules) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      privacy,
      groupPhoto,
      coverPhoto,
      name,
      description,
      location,
      const DeepCollectionEquality().hash(_interests),
      one_month_subscription_price,
      six_month_subscription_price,
      twelve_month_subscription_price,
      promoCode,
      discount,
      userId,
      createdAt,
      updatedAt,
      rules,
      id);

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
      {final String? privacy,
      final String? groupPhoto,
      final String? coverPhoto,
      final String? name,
      final String? description,
      final String? location,
      final List<Interest>? interests,
      final int? one_month_subscription_price,
      final int? six_month_subscription_price,
      final int? twelve_month_subscription_price,
      final String? promoCode,
      final int? discount,
      final String? userId,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? rules,
      @JsonKey(name: '_id') final String? id}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get privacy;
  @override
  String? get groupPhoto;
  @override
  String? get coverPhoto;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get location;
  @override
  List<Interest>? get interests;
  @override
  int? get one_month_subscription_price;
  @override
  int? get six_month_subscription_price;
  @override
  int? get twelve_month_subscription_price;
  @override
  String? get promoCode;
  @override
  int? get discount;
  @override
  String? get userId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get rules;
  @override
  @JsonKey(name: '_id')
  String? get id;
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
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "status") String? status});
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
    Object? userId = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "status") String? status});
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
    Object? userId = freezed,
    Object? status = freezed,
  }) {
    return _then(_$FollowerImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowerImpl implements _Follower {
  const _$FollowerImpl(
      {@JsonKey(name: "userId") this.userId,
      @JsonKey(name: "status") this.status});

  factory _$FollowerImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowerImplFromJson(json);

  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "status")
  final String? status;

  @override
  String toString() {
    return 'Follower(userId: $userId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowerImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, status);

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
      {@JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "status") final String? status}) = _$FollowerImpl;

  factory _Follower.fromJson(Map<String, dynamic> json) =
      _$FollowerImpl.fromJson;

  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$FollowerImplCopyWith<_$FollowerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

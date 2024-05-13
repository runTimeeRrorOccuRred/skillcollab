// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_group_rating_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddGroupRatingRequestModel _$AddGroupRatingRequestModelFromJson(
    Map<String, dynamic> json) {
  return _AddGroupRatingRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AddGroupRatingRequestModel {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "review")
  String? get review => throw _privateConstructorUsedError;
  @JsonKey(name: "isAnonymous")
  bool? get isAnonymous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddGroupRatingRequestModelCopyWith<AddGroupRatingRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGroupRatingRequestModelCopyWith<$Res> {
  factory $AddGroupRatingRequestModelCopyWith(AddGroupRatingRequestModel value,
          $Res Function(AddGroupRatingRequestModel) then) =
      _$AddGroupRatingRequestModelCopyWithImpl<$Res,
          AddGroupRatingRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "rating") double? rating,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "review") String? review,
      @JsonKey(name: "isAnonymous") bool? isAnonymous});
}

/// @nodoc
class _$AddGroupRatingRequestModelCopyWithImpl<$Res,
        $Val extends AddGroupRatingRequestModel>
    implements $AddGroupRatingRequestModelCopyWith<$Res> {
  _$AddGroupRatingRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? rating = freezed,
    Object? title = freezed,
    Object? review = freezed,
    Object? isAnonymous = freezed,
  }) {
    return _then(_value.copyWith(
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
              as double?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddGroupRatingRequestModelImplCopyWith<$Res>
    implements $AddGroupRatingRequestModelCopyWith<$Res> {
  factory _$$AddGroupRatingRequestModelImplCopyWith(
          _$AddGroupRatingRequestModelImpl value,
          $Res Function(_$AddGroupRatingRequestModelImpl) then) =
      __$$AddGroupRatingRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "rating") double? rating,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "review") String? review,
      @JsonKey(name: "isAnonymous") bool? isAnonymous});
}

/// @nodoc
class __$$AddGroupRatingRequestModelImplCopyWithImpl<$Res>
    extends _$AddGroupRatingRequestModelCopyWithImpl<$Res,
        _$AddGroupRatingRequestModelImpl>
    implements _$$AddGroupRatingRequestModelImplCopyWith<$Res> {
  __$$AddGroupRatingRequestModelImplCopyWithImpl(
      _$AddGroupRatingRequestModelImpl _value,
      $Res Function(_$AddGroupRatingRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? rating = freezed,
    Object? title = freezed,
    Object? review = freezed,
    Object? isAnonymous = freezed,
  }) {
    return _then(_$AddGroupRatingRequestModelImpl(
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
              as double?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddGroupRatingRequestModelImpl implements _AddGroupRatingRequestModel {
  const _$AddGroupRatingRequestModelImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "review") this.review,
      @JsonKey(name: "isAnonymous") this.isAnonymous});

  factory _$AddGroupRatingRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddGroupRatingRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "rating")
  final double? rating;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "review")
  final String? review;
  @override
  @JsonKey(name: "isAnonymous")
  final bool? isAnonymous;

  @override
  String toString() {
    return 'AddGroupRatingRequestModel(name: $name, email: $email, rating: $rating, title: $title, review: $review, isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGroupRatingRequestModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, rating, title, review, isAnonymous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGroupRatingRequestModelImplCopyWith<_$AddGroupRatingRequestModelImpl>
      get copyWith => __$$AddGroupRatingRequestModelImplCopyWithImpl<
          _$AddGroupRatingRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddGroupRatingRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AddGroupRatingRequestModel
    implements AddGroupRatingRequestModel {
  const factory _AddGroupRatingRequestModel(
          {@JsonKey(name: "name") final String? name,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "rating") final double? rating,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "review") final String? review,
          @JsonKey(name: "isAnonymous") final bool? isAnonymous}) =
      _$AddGroupRatingRequestModelImpl;

  factory _AddGroupRatingRequestModel.fromJson(Map<String, dynamic> json) =
      _$AddGroupRatingRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "rating")
  double? get rating;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "review")
  String? get review;
  @override
  @JsonKey(name: "isAnonymous")
  bool? get isAnonymous;
  @override
  @JsonKey(ignore: true)
  _$$AddGroupRatingRequestModelImplCopyWith<_$AddGroupRatingRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

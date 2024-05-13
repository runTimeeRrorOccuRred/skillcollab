// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_rating_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupRatingResponseModel _$GroupRatingResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GroupRatingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GroupRatingResponseModel {
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
  $GroupRatingResponseModelCopyWith<GroupRatingResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupRatingResponseModelCopyWith<$Res> {
  factory $GroupRatingResponseModelCopyWith(GroupRatingResponseModel value,
          $Res Function(GroupRatingResponseModel) then) =
      _$GroupRatingResponseModelCopyWithImpl<$Res, GroupRatingResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Datum>? data});
}

/// @nodoc
class _$GroupRatingResponseModelCopyWithImpl<$Res,
        $Val extends GroupRatingResponseModel>
    implements $GroupRatingResponseModelCopyWith<$Res> {
  _$GroupRatingResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GroupRatingResponseModelImplCopyWith<$Res>
    implements $GroupRatingResponseModelCopyWith<$Res> {
  factory _$$GroupRatingResponseModelImplCopyWith(
          _$GroupRatingResponseModelImpl value,
          $Res Function(_$GroupRatingResponseModelImpl) then) =
      __$$GroupRatingResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Datum>? data});
}

/// @nodoc
class __$$GroupRatingResponseModelImplCopyWithImpl<$Res>
    extends _$GroupRatingResponseModelCopyWithImpl<$Res,
        _$GroupRatingResponseModelImpl>
    implements _$$GroupRatingResponseModelImplCopyWith<$Res> {
  __$$GroupRatingResponseModelImplCopyWithImpl(
      _$GroupRatingResponseModelImpl _value,
      $Res Function(_$GroupRatingResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GroupRatingResponseModelImpl(
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
class _$GroupRatingResponseModelImpl implements _GroupRatingResponseModel {
  const _$GroupRatingResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<Datum>? data})
      : _data = data;

  factory _$GroupRatingResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupRatingResponseModelImplFromJson(json);

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
    return 'GroupRatingResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupRatingResponseModelImpl &&
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
  _$$GroupRatingResponseModelImplCopyWith<_$GroupRatingResponseModelImpl>
      get copyWith => __$$GroupRatingResponseModelImplCopyWithImpl<
          _$GroupRatingResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupRatingResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GroupRatingResponseModel implements GroupRatingResponseModel {
  const factory _GroupRatingResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<Datum>? data}) =
      _$GroupRatingResponseModelImpl;

  factory _GroupRatingResponseModel.fromJson(Map<String, dynamic> json) =
      _$GroupRatingResponseModelImpl.fromJson;

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
  _$$GroupRatingResponseModelImplCopyWith<_$GroupRatingResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "groupName")
  String? get groupName => throw _privateConstructorUsedError;
  @JsonKey(name: "groupDescription")
  String? get groupDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "average_rating")
  double? get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews")
  List<Review>? get reviews => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupName") String? groupName,
      @JsonKey(name: "groupDescription") String? groupDescription,
      @JsonKey(name: "average_rating") double? averageRating,
      @JsonKey(name: "reviews") List<Review>? reviews});
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
    Object? id = freezed,
    Object? groupName = freezed,
    Object? groupDescription = freezed,
    Object? averageRating = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupDescription: freezed == groupDescription
          ? _value.groupDescription
          : groupDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ) as $Val);
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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupName") String? groupName,
      @JsonKey(name: "groupDescription") String? groupDescription,
      @JsonKey(name: "average_rating") double? averageRating,
      @JsonKey(name: "reviews") List<Review>? reviews});
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
    Object? id = freezed,
    Object? groupName = freezed,
    Object? groupDescription = freezed,
    Object? averageRating = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      groupDescription: freezed == groupDescription
          ? _value.groupDescription
          : groupDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "groupName") this.groupName,
      @JsonKey(name: "groupDescription") this.groupDescription,
      @JsonKey(name: "average_rating") this.averageRating,
      @JsonKey(name: "reviews") final List<Review>? reviews})
      : _reviews = reviews;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "groupName")
  final String? groupName;
  @override
  @JsonKey(name: "groupDescription")
  final String? groupDescription;
  @override
  @JsonKey(name: "average_rating")
  final double? averageRating;
  final List<Review>? _reviews;
  @override
  @JsonKey(name: "reviews")
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Datum(id: $id, groupName: $groupName, groupDescription: $groupDescription, averageRating: $averageRating, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupDescription, groupDescription) ||
                other.groupDescription == groupDescription) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, groupName, groupDescription,
      averageRating, const DeepCollectionEquality().hash(_reviews));

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
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "groupName") final String? groupName,
      @JsonKey(name: "groupDescription") final String? groupDescription,
      @JsonKey(name: "average_rating") final double? averageRating,
      @JsonKey(name: "reviews") final List<Review>? reviews}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "groupName")
  String? get groupName;
  @override
  @JsonKey(name: "groupDescription")
  String? get groupDescription;
  @override
  @JsonKey(name: "average_rating")
  double? get averageRating;
  @override
  @JsonKey(name: "reviews")
  List<Review>? get reviews;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  @JsonKey(name: "review")
  String? get review => throw _privateConstructorUsedError;
  @JsonKey(name: "isAnonymous")
  bool? get isAnonymous => throw _privateConstructorUsedError;
  @JsonKey(name: "review_date")
  DateTime? get reviewDate => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_first_name")
  String? get userFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: "user_last_name")
  String? get userLastName => throw _privateConstructorUsedError;
  @JsonKey(name: "user_profile_photo")
  dynamic get userProfilePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "review_id")
  String? get reviewId => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {@JsonKey(name: "review") String? review,
      @JsonKey(name: "isAnonymous") bool? isAnonymous,
      @JsonKey(name: "review_date") DateTime? reviewDate,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "user_first_name") String? userFirstName,
      @JsonKey(name: "user_last_name") String? userLastName,
      @JsonKey(name: "user_profile_photo") dynamic userProfilePhoto,
      @JsonKey(name: "review_id") String? reviewId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "rating") int? rating});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? review = freezed,
    Object? isAnonymous = freezed,
    Object? reviewDate = freezed,
    Object? userId = freezed,
    Object? userFirstName = freezed,
    Object? userLastName = freezed,
    Object? userProfilePhoto = freezed,
    Object? reviewId = freezed,
    Object? title = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool?,
      reviewDate: freezed == reviewDate
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userFirstName: freezed == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLastName: freezed == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userProfilePhoto: freezed == userProfilePhoto
          ? _value.userProfilePhoto
          : userProfilePhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "review") String? review,
      @JsonKey(name: "isAnonymous") bool? isAnonymous,
      @JsonKey(name: "review_date") DateTime? reviewDate,
      @JsonKey(name: "user_id") String? userId,
      @JsonKey(name: "user_first_name") String? userFirstName,
      @JsonKey(name: "user_last_name") String? userLastName,
      @JsonKey(name: "user_profile_photo") dynamic userProfilePhoto,
      @JsonKey(name: "review_id") String? reviewId,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "rating") int? rating});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? review = freezed,
    Object? isAnonymous = freezed,
    Object? reviewDate = freezed,
    Object? userId = freezed,
    Object? userFirstName = freezed,
    Object? userLastName = freezed,
    Object? userProfilePhoto = freezed,
    Object? reviewId = freezed,
    Object? title = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$ReviewImpl(
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool?,
      reviewDate: freezed == reviewDate
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userFirstName: freezed == userFirstName
          ? _value.userFirstName
          : userFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLastName: freezed == userLastName
          ? _value.userLastName
          : userLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      userProfilePhoto: freezed == userProfilePhoto
          ? _value.userProfilePhoto
          : userProfilePhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewId: freezed == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {@JsonKey(name: "review") this.review,
      @JsonKey(name: "isAnonymous") this.isAnonymous,
      @JsonKey(name: "review_date") this.reviewDate,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "user_first_name") this.userFirstName,
      @JsonKey(name: "user_last_name") this.userLastName,
      @JsonKey(name: "user_profile_photo") this.userProfilePhoto,
      @JsonKey(name: "review_id") this.reviewId,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "rating") this.rating});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  @JsonKey(name: "review")
  final String? review;
  @override
  @JsonKey(name: "isAnonymous")
  final bool? isAnonymous;
  @override
  @JsonKey(name: "review_date")
  final DateTime? reviewDate;
  @override
  @JsonKey(name: "user_id")
  final String? userId;
  @override
  @JsonKey(name: "user_first_name")
  final String? userFirstName;
  @override
  @JsonKey(name: "user_last_name")
  final String? userLastName;
  @override
  @JsonKey(name: "user_profile_photo")
  final dynamic userProfilePhoto;
  @override
  @JsonKey(name: "review_id")
  final String? reviewId;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "rating")
  final int? rating;

  @override
  String toString() {
    return 'Review(review: $review, isAnonymous: $isAnonymous, reviewDate: $reviewDate, userId: $userId, userFirstName: $userFirstName, userLastName: $userLastName, userProfilePhoto: $userProfilePhoto, reviewId: $reviewId, title: $title, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.reviewDate, reviewDate) ||
                other.reviewDate == reviewDate) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userFirstName, userFirstName) ||
                other.userFirstName == userFirstName) &&
            (identical(other.userLastName, userLastName) ||
                other.userLastName == userLastName) &&
            const DeepCollectionEquality()
                .equals(other.userProfilePhoto, userProfilePhoto) &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      review,
      isAnonymous,
      reviewDate,
      userId,
      userFirstName,
      userLastName,
      const DeepCollectionEquality().hash(userProfilePhoto),
      reviewId,
      title,
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {@JsonKey(name: "review") final String? review,
      @JsonKey(name: "isAnonymous") final bool? isAnonymous,
      @JsonKey(name: "review_date") final DateTime? reviewDate,
      @JsonKey(name: "user_id") final String? userId,
      @JsonKey(name: "user_first_name") final String? userFirstName,
      @JsonKey(name: "user_last_name") final String? userLastName,
      @JsonKey(name: "user_profile_photo") final dynamic userProfilePhoto,
      @JsonKey(name: "review_id") final String? reviewId,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "rating") final int? rating}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  @JsonKey(name: "review")
  String? get review;
  @override
  @JsonKey(name: "isAnonymous")
  bool? get isAnonymous;
  @override
  @JsonKey(name: "review_date")
  DateTime? get reviewDate;
  @override
  @JsonKey(name: "user_id")
  String? get userId;
  @override
  @JsonKey(name: "user_first_name")
  String? get userFirstName;
  @override
  @JsonKey(name: "user_last_name")
  String? get userLastName;
  @override
  @JsonKey(name: "user_profile_photo")
  dynamic get userProfilePhoto;
  @override
  @JsonKey(name: "review_id")
  String? get reviewId;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "rating")
  int? get rating;
  @override
  @JsonKey(ignore: true)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

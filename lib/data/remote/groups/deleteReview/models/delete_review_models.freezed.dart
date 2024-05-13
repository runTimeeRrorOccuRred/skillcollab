// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_review_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteReviewResponseModel _$DeleteReviewResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteReviewResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteReviewResponseModel {
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
  $DeleteReviewResponseModelCopyWith<DeleteReviewResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteReviewResponseModelCopyWith<$Res> {
  factory $DeleteReviewResponseModelCopyWith(DeleteReviewResponseModel value,
          $Res Function(DeleteReviewResponseModel) then) =
      _$DeleteReviewResponseModelCopyWithImpl<$Res, DeleteReviewResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeleteReviewResponseModelCopyWithImpl<$Res,
        $Val extends DeleteReviewResponseModel>
    implements $DeleteReviewResponseModelCopyWith<$Res> {
  _$DeleteReviewResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteReviewResponseModelImplCopyWith<$Res>
    implements $DeleteReviewResponseModelCopyWith<$Res> {
  factory _$$DeleteReviewResponseModelImplCopyWith(
          _$DeleteReviewResponseModelImpl value,
          $Res Function(_$DeleteReviewResponseModelImpl) then) =
      __$$DeleteReviewResponseModelImplCopyWithImpl<$Res>;
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
class __$$DeleteReviewResponseModelImplCopyWithImpl<$Res>
    extends _$DeleteReviewResponseModelCopyWithImpl<$Res,
        _$DeleteReviewResponseModelImpl>
    implements _$$DeleteReviewResponseModelImplCopyWith<$Res> {
  __$$DeleteReviewResponseModelImplCopyWithImpl(
      _$DeleteReviewResponseModelImpl _value,
      $Res Function(_$DeleteReviewResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DeleteReviewResponseModelImpl(
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
class _$DeleteReviewResponseModelImpl implements _DeleteReviewResponseModel {
  const _$DeleteReviewResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$DeleteReviewResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteReviewResponseModelImplFromJson(json);

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
    return 'DeleteReviewResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteReviewResponseModelImpl &&
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
  _$$DeleteReviewResponseModelImplCopyWith<_$DeleteReviewResponseModelImpl>
      get copyWith => __$$DeleteReviewResponseModelImplCopyWithImpl<
          _$DeleteReviewResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteReviewResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteReviewResponseModel implements DeleteReviewResponseModel {
  const factory _DeleteReviewResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$DeleteReviewResponseModelImpl;

  factory _DeleteReviewResponseModel.fromJson(Map<String, dynamic> json) =
      _$DeleteReviewResponseModelImpl.fromJson;

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
  _$$DeleteReviewResponseModelImplCopyWith<_$DeleteReviewResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "review")
  String? get review => throw _privateConstructorUsedError;
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
  @JsonKey(name: "isAnonymous")
  bool? get isAnonymous => throw _privateConstructorUsedError;
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
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "review") String? review,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "isAnonymous") bool? isAnonymous,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "userId") String? userId,
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
    Object? review = freezed,
    Object? title = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? rating = freezed,
    Object? isAnonymous = freezed,
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "review") String? review,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "rating") int? rating,
      @JsonKey(name: "isAnonymous") bool? isAnonymous,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "userId") String? userId,
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
    Object? review = freezed,
    Object? title = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? rating = freezed,
    Object? isAnonymous = freezed,
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
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
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
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
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "review") this.review,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "rating") this.rating,
      @JsonKey(name: "isAnonymous") this.isAnonymous,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "review")
  final String? review;
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
  @JsonKey(name: "isAnonymous")
  final bool? isAnonymous;
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
    return 'Data(review: $review, title: $title, id: $id, name: $name, email: $email, rating: $rating, isAnonymous: $isAnonymous, groupId: $groupId, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, review, title, id, name, email,
      rating, isAnonymous, groupId, userId, createdAt, updatedAt);

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
      {@JsonKey(name: "review") final String? review,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "rating") final int? rating,
      @JsonKey(name: "isAnonymous") final bool? isAnonymous,
      @JsonKey(name: "groupId") final String? groupId,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "review")
  String? get review;
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
  @JsonKey(name: "isAnonymous")
  bool? get isAnonymous;
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
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeleteReviewRequestModel _$DeleteReviewRequestModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteReviewRequestModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteReviewRequestModel {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteReviewRequestModelCopyWith<DeleteReviewRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteReviewRequestModelCopyWith<$Res> {
  factory $DeleteReviewRequestModelCopyWith(DeleteReviewRequestModel value,
          $Res Function(DeleteReviewRequestModel) then) =
      _$DeleteReviewRequestModelCopyWithImpl<$Res, DeleteReviewRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class _$DeleteReviewRequestModelCopyWithImpl<$Res,
        $Val extends DeleteReviewRequestModel>
    implements $DeleteReviewRequestModelCopyWith<$Res> {
  _$DeleteReviewRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteReviewRequestModelImplCopyWith<$Res>
    implements $DeleteReviewRequestModelCopyWith<$Res> {
  factory _$$DeleteReviewRequestModelImplCopyWith(
          _$DeleteReviewRequestModelImpl value,
          $Res Function(_$DeleteReviewRequestModelImpl) then) =
      __$$DeleteReviewRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "groupId") String? groupId});
}

/// @nodoc
class __$$DeleteReviewRequestModelImplCopyWithImpl<$Res>
    extends _$DeleteReviewRequestModelCopyWithImpl<$Res,
        _$DeleteReviewRequestModelImpl>
    implements _$$DeleteReviewRequestModelImplCopyWith<$Res> {
  __$$DeleteReviewRequestModelImplCopyWithImpl(
      _$DeleteReviewRequestModelImpl _value,
      $Res Function(_$DeleteReviewRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
  }) {
    return _then(_$DeleteReviewRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteReviewRequestModelImpl implements _DeleteReviewRequestModel {
  const _$DeleteReviewRequestModelImpl(
      {@JsonKey(name: "groupId") this.groupId});

  factory _$DeleteReviewRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteReviewRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;

  @override
  String toString() {
    return 'DeleteReviewRequestModel(groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteReviewRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteReviewRequestModelImplCopyWith<_$DeleteReviewRequestModelImpl>
      get copyWith => __$$DeleteReviewRequestModelImplCopyWithImpl<
          _$DeleteReviewRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteReviewRequestModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteReviewRequestModel implements DeleteReviewRequestModel {
  const factory _DeleteReviewRequestModel(
          {@JsonKey(name: "groupId") final String? groupId}) =
      _$DeleteReviewRequestModelImpl;

  factory _DeleteReviewRequestModel.fromJson(Map<String, dynamic> json) =
      _$DeleteReviewRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteReviewRequestModelImplCopyWith<_$DeleteReviewRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_dislike_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LikeDislikeTutorialRequestModel _$LikeDislikeTutorialRequestModelFromJson(
    Map<String, dynamic> json) {
  return _LikeDislikeTutorialRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LikeDislikeTutorialRequestModel {
  bool? get isLike => throw _privateConstructorUsedError;
  bool? get isDislike => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get tutorialId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeDislikeTutorialRequestModelCopyWith<LikeDislikeTutorialRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeDislikeTutorialRequestModelCopyWith<$Res> {
  factory $LikeDislikeTutorialRequestModelCopyWith(
          LikeDislikeTutorialRequestModel value,
          $Res Function(LikeDislikeTutorialRequestModel) then) =
      _$LikeDislikeTutorialRequestModelCopyWithImpl<$Res,
          LikeDislikeTutorialRequestModel>;
  @useResult
  $Res call({bool? isLike, bool? isDislike, String? type, String? tutorialId});
}

/// @nodoc
class _$LikeDislikeTutorialRequestModelCopyWithImpl<$Res,
        $Val extends LikeDislikeTutorialRequestModel>
    implements $LikeDislikeTutorialRequestModelCopyWith<$Res> {
  _$LikeDislikeTutorialRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? type = freezed,
    Object? tutorialId = freezed,
  }) {
    return _then(_value.copyWith(
      isLike: freezed == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDislike: freezed == isDislike
          ? _value.isDislike
          : isDislike // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikeDislikeTutorialRequestModelImplCopyWith<$Res>
    implements $LikeDislikeTutorialRequestModelCopyWith<$Res> {
  factory _$$LikeDislikeTutorialRequestModelImplCopyWith(
          _$LikeDislikeTutorialRequestModelImpl value,
          $Res Function(_$LikeDislikeTutorialRequestModelImpl) then) =
      __$$LikeDislikeTutorialRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isLike, bool? isDislike, String? type, String? tutorialId});
}

/// @nodoc
class __$$LikeDislikeTutorialRequestModelImplCopyWithImpl<$Res>
    extends _$LikeDislikeTutorialRequestModelCopyWithImpl<$Res,
        _$LikeDislikeTutorialRequestModelImpl>
    implements _$$LikeDislikeTutorialRequestModelImplCopyWith<$Res> {
  __$$LikeDislikeTutorialRequestModelImplCopyWithImpl(
      _$LikeDislikeTutorialRequestModelImpl _value,
      $Res Function(_$LikeDislikeTutorialRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? type = freezed,
    Object? tutorialId = freezed,
  }) {
    return _then(_$LikeDislikeTutorialRequestModelImpl(
      isLike: freezed == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDislike: freezed == isDislike
          ? _value.isDislike
          : isDislike // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikeDislikeTutorialRequestModelImpl
    implements _LikeDislikeTutorialRequestModel {
  const _$LikeDislikeTutorialRequestModelImpl(
      {this.isLike, this.isDislike, this.type, this.tutorialId});

  factory _$LikeDislikeTutorialRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LikeDislikeTutorialRequestModelImplFromJson(json);

  @override
  final bool? isLike;
  @override
  final bool? isDislike;
  @override
  final String? type;
  @override
  final String? tutorialId;

  @override
  String toString() {
    return 'LikeDislikeTutorialRequestModel(isLike: $isLike, isDislike: $isDislike, type: $type, tutorialId: $tutorialId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeDislikeTutorialRequestModelImpl &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.isDislike, isDislike) ||
                other.isDislike == isDislike) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.tutorialId, tutorialId) ||
                other.tutorialId == tutorialId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isLike, isDislike, type, tutorialId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeDislikeTutorialRequestModelImplCopyWith<
          _$LikeDislikeTutorialRequestModelImpl>
      get copyWith => __$$LikeDislikeTutorialRequestModelImplCopyWithImpl<
          _$LikeDislikeTutorialRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeDislikeTutorialRequestModelImplToJson(
      this,
    );
  }
}

abstract class _LikeDislikeTutorialRequestModel
    implements LikeDislikeTutorialRequestModel {
  const factory _LikeDislikeTutorialRequestModel(
      {final bool? isLike,
      final bool? isDislike,
      final String? type,
      final String? tutorialId}) = _$LikeDislikeTutorialRequestModelImpl;

  factory _LikeDislikeTutorialRequestModel.fromJson(Map<String, dynamic> json) =
      _$LikeDislikeTutorialRequestModelImpl.fromJson;

  @override
  bool? get isLike;
  @override
  bool? get isDislike;
  @override
  String? get type;
  @override
  String? get tutorialId;
  @override
  @JsonKey(ignore: true)
  _$$LikeDislikeTutorialRequestModelImplCopyWith<
          _$LikeDislikeTutorialRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LikeDislikeTutorialResponseModel _$LikeDislikeTutorialResponseModelFromJson(
    Map<String, dynamic> json) {
  return _LikeDislikeTutorialResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LikeDislikeTutorialResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeDislikeTutorialResponseModelCopyWith<LikeDislikeTutorialResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeDislikeTutorialResponseModelCopyWith<$Res> {
  factory $LikeDislikeTutorialResponseModelCopyWith(
          LikeDislikeTutorialResponseModel value,
          $Res Function(LikeDislikeTutorialResponseModel) then) =
      _$LikeDislikeTutorialResponseModelCopyWithImpl<$Res,
          LikeDislikeTutorialResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LikeDislikeTutorialResponseModelCopyWithImpl<$Res,
        $Val extends LikeDislikeTutorialResponseModel>
    implements $LikeDislikeTutorialResponseModelCopyWith<$Res> {
  _$LikeDislikeTutorialResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$LikeDislikeTutorialResponseModelImplCopyWith<$Res>
    implements $LikeDislikeTutorialResponseModelCopyWith<$Res> {
  factory _$$LikeDislikeTutorialResponseModelImplCopyWith(
          _$LikeDislikeTutorialResponseModelImpl value,
          $Res Function(_$LikeDislikeTutorialResponseModelImpl) then) =
      __$$LikeDislikeTutorialResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LikeDislikeTutorialResponseModelImplCopyWithImpl<$Res>
    extends _$LikeDislikeTutorialResponseModelCopyWithImpl<$Res,
        _$LikeDislikeTutorialResponseModelImpl>
    implements _$$LikeDislikeTutorialResponseModelImplCopyWith<$Res> {
  __$$LikeDislikeTutorialResponseModelImplCopyWithImpl(
      _$LikeDislikeTutorialResponseModelImpl _value,
      $Res Function(_$LikeDislikeTutorialResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LikeDislikeTutorialResponseModelImpl(
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
class _$LikeDislikeTutorialResponseModelImpl
    implements _LikeDislikeTutorialResponseModel {
  const _$LikeDislikeTutorialResponseModelImpl(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$LikeDislikeTutorialResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LikeDislikeTutorialResponseModelImplFromJson(json);

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
    return 'LikeDislikeTutorialResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeDislikeTutorialResponseModelImpl &&
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
  _$$LikeDislikeTutorialResponseModelImplCopyWith<
          _$LikeDislikeTutorialResponseModelImpl>
      get copyWith => __$$LikeDislikeTutorialResponseModelImplCopyWithImpl<
          _$LikeDislikeTutorialResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeDislikeTutorialResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LikeDislikeTutorialResponseModel
    implements LikeDislikeTutorialResponseModel {
  const factory _LikeDislikeTutorialResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$LikeDislikeTutorialResponseModelImpl;

  factory _LikeDislikeTutorialResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$LikeDislikeTutorialResponseModelImpl.fromJson;

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
  _$$LikeDislikeTutorialResponseModelImplCopyWith<
          _$LikeDislikeTutorialResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  dynamic get postId => throw _privateConstructorUsedError;
  String? get tutorialId => throw _privateConstructorUsedError;
  dynamic get questionId => throw _privateConstructorUsedError;
  bool? get isLike => throw _privateConstructorUsedError;
  bool? get isDislike => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
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
      {dynamic postId,
      String? tutorialId,
      dynamic questionId,
      bool? isLike,
      bool? isDislike,
      @JsonKey(name: "_id") String? id,
      String? userId,
      String? type,
      DateTime? createdAt,
      DateTime? updatedAt});
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
    Object? postId = freezed,
    Object? tutorialId = freezed,
    Object? questionId = freezed,
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLike: freezed == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDislike: freezed == isDislike
          ? _value.isDislike
          : isDislike // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic postId,
      String? tutorialId,
      dynamic questionId,
      bool? isLike,
      bool? isDislike,
      @JsonKey(name: "_id") String? id,
      String? userId,
      String? type,
      DateTime? createdAt,
      DateTime? updatedAt});
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
    Object? postId = freezed,
    Object? tutorialId = freezed,
    Object? questionId = freezed,
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLike: freezed == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDislike: freezed == isDislike
          ? _value.isDislike
          : isDislike // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.postId,
      this.tutorialId,
      this.questionId,
      this.isLike,
      this.isDislike,
      @JsonKey(name: "_id") this.id,
      this.userId,
      this.type,
      this.createdAt,
      this.updatedAt});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final dynamic postId;
  @override
  final String? tutorialId;
  @override
  final dynamic questionId;
  @override
  final bool? isLike;
  @override
  final bool? isDislike;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? userId;
  @override
  final String? type;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Data(postId: $postId, tutorialId: $tutorialId, questionId: $questionId, isLike: $isLike, isDislike: $isDislike, id: $id, userId: $userId, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            (identical(other.tutorialId, tutorialId) ||
                other.tutorialId == tutorialId) &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId) &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.isDislike, isDislike) ||
                other.isDislike == isDislike) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
      const DeepCollectionEquality().hash(postId),
      tutorialId,
      const DeepCollectionEquality().hash(questionId),
      isLike,
      isDislike,
      id,
      userId,
      type,
      createdAt,
      updatedAt);

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
      {final dynamic postId,
      final String? tutorialId,
      final dynamic questionId,
      final bool? isLike,
      final bool? isDislike,
      @JsonKey(name: "_id") final String? id,
      final String? userId,
      final String? type,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  dynamic get postId;
  @override
  String? get tutorialId;
  @override
  dynamic get questionId;
  @override
  bool? get isLike;
  @override
  bool? get isDislike;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get userId;
  @override
  String? get type;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

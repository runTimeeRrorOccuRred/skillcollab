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

LikeDislikeRequestModel _$LikeDislikeRequestModelFromJson(
    Map<String, dynamic> json) {
  return _LikeDislikeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LikeDislikeRequestModel {
  @JsonKey(name: "isLike")
  bool? get isLike => throw _privateConstructorUsedError;
  @JsonKey(name: "isDislike")
  bool? get isDislike => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "questionId")
  String? get questionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeDislikeRequestModelCopyWith<LikeDislikeRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeDislikeRequestModelCopyWith<$Res> {
  factory $LikeDislikeRequestModelCopyWith(LikeDislikeRequestModel value,
          $Res Function(LikeDislikeRequestModel) then) =
      _$LikeDislikeRequestModelCopyWithImpl<$Res, LikeDislikeRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "isLike") bool? isLike,
      @JsonKey(name: "isDislike") bool? isDislike,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "questionId") String? questionId});
}

/// @nodoc
class _$LikeDislikeRequestModelCopyWithImpl<$Res,
        $Val extends LikeDislikeRequestModel>
    implements $LikeDislikeRequestModelCopyWith<$Res> {
  _$LikeDislikeRequestModelCopyWithImpl(this._value, this._then);

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
    Object? questionId = freezed,
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
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikeDislikeRequestModelImplCopyWith<$Res>
    implements $LikeDislikeRequestModelCopyWith<$Res> {
  factory _$$LikeDislikeRequestModelImplCopyWith(
          _$LikeDislikeRequestModelImpl value,
          $Res Function(_$LikeDislikeRequestModelImpl) then) =
      __$$LikeDislikeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isLike") bool? isLike,
      @JsonKey(name: "isDislike") bool? isDislike,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "questionId") String? questionId});
}

/// @nodoc
class __$$LikeDislikeRequestModelImplCopyWithImpl<$Res>
    extends _$LikeDislikeRequestModelCopyWithImpl<$Res,
        _$LikeDislikeRequestModelImpl>
    implements _$$LikeDislikeRequestModelImplCopyWith<$Res> {
  __$$LikeDislikeRequestModelImplCopyWithImpl(
      _$LikeDislikeRequestModelImpl _value,
      $Res Function(_$LikeDislikeRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? type = freezed,
    Object? questionId = freezed,
  }) {
    return _then(_$LikeDislikeRequestModelImpl(
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
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikeDislikeRequestModelImpl implements _LikeDislikeRequestModel {
  const _$LikeDislikeRequestModelImpl(
      {@JsonKey(name: "isLike") this.isLike,
      @JsonKey(name: "isDislike") this.isDislike,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "questionId") this.questionId});

  factory _$LikeDislikeRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeDislikeRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "isLike")
  final bool? isLike;
  @override
  @JsonKey(name: "isDislike")
  final bool? isDislike;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "questionId")
  final String? questionId;

  @override
  String toString() {
    return 'LikeDislikeRequestModel(isLike: $isLike, isDislike: $isDislike, type: $type, questionId: $questionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeDislikeRequestModelImpl &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.isDislike, isDislike) ||
                other.isDislike == isDislike) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isLike, isDislike, type, questionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeDislikeRequestModelImplCopyWith<_$LikeDislikeRequestModelImpl>
      get copyWith => __$$LikeDislikeRequestModelImplCopyWithImpl<
          _$LikeDislikeRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeDislikeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _LikeDislikeRequestModel implements LikeDislikeRequestModel {
  const factory _LikeDislikeRequestModel(
          {@JsonKey(name: "isLike") final bool? isLike,
          @JsonKey(name: "isDislike") final bool? isDislike,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "questionId") final String? questionId}) =
      _$LikeDislikeRequestModelImpl;

  factory _LikeDislikeRequestModel.fromJson(Map<String, dynamic> json) =
      _$LikeDislikeRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "isLike")
  bool? get isLike;
  @override
  @JsonKey(name: "isDislike")
  bool? get isDislike;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "questionId")
  String? get questionId;
  @override
  @JsonKey(ignore: true)
  _$$LikeDislikeRequestModelImplCopyWith<_$LikeDislikeRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LikeDislikeResponseModel _$LikeDislikeResponseModelFromJson(
    Map<String, dynamic> json) {
  return _LikeDislikeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LikeDislikeResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikeDislikeResponseModelCopyWith<LikeDislikeResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeDislikeResponseModelCopyWith<$Res> {
  factory $LikeDislikeResponseModelCopyWith(LikeDislikeResponseModel value,
          $Res Function(LikeDislikeResponseModel) then) =
      _$LikeDislikeResponseModelCopyWithImpl<$Res, LikeDislikeResponseModel>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LikeDislikeResponseModelCopyWithImpl<$Res,
        $Val extends LikeDislikeResponseModel>
    implements $LikeDislikeResponseModelCopyWith<$Res> {
  _$LikeDislikeResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$LikeDislikeResponseModelImplCopyWith<$Res>
    implements $LikeDislikeResponseModelCopyWith<$Res> {
  factory _$$LikeDislikeResponseModelImplCopyWith(
          _$LikeDislikeResponseModelImpl value,
          $Res Function(_$LikeDislikeResponseModelImpl) then) =
      __$$LikeDislikeResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LikeDislikeResponseModelImplCopyWithImpl<$Res>
    extends _$LikeDislikeResponseModelCopyWithImpl<$Res,
        _$LikeDislikeResponseModelImpl>
    implements _$$LikeDislikeResponseModelImplCopyWith<$Res> {
  __$$LikeDislikeResponseModelImplCopyWithImpl(
      _$LikeDislikeResponseModelImpl _value,
      $Res Function(_$LikeDislikeResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LikeDislikeResponseModelImpl(
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
class _$LikeDislikeResponseModelImpl implements _LikeDislikeResponseModel {
  const _$LikeDislikeResponseModelImpl(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$LikeDislikeResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeDislikeResponseModelImplFromJson(json);

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
    return 'LikeDislikeResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeDislikeResponseModelImpl &&
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
  _$$LikeDislikeResponseModelImplCopyWith<_$LikeDislikeResponseModelImpl>
      get copyWith => __$$LikeDislikeResponseModelImplCopyWithImpl<
          _$LikeDislikeResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeDislikeResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LikeDislikeResponseModel implements LikeDislikeResponseModel {
  const factory _LikeDislikeResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$LikeDislikeResponseModelImpl;

  factory _LikeDislikeResponseModel.fromJson(Map<String, dynamic> json) =
      _$LikeDislikeResponseModelImpl.fromJson;

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
  _$$LikeDislikeResponseModelImplCopyWith<_$LikeDislikeResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get postId => throw _privateConstructorUsedError;
  String? get tutorialId => throw _privateConstructorUsedError;
  String? get questionId => throw _privateConstructorUsedError;
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
      {String? postId,
      String? tutorialId,
      String? questionId,
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
              as String?,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? postId,
      String? tutorialId,
      String? questionId,
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
              as String?,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as String?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
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
  final String? postId;
  @override
  final String? tutorialId;
  @override
  final String? questionId;
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
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.tutorialId, tutorialId) ||
                other.tutorialId == tutorialId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
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
  int get hashCode => Object.hash(runtimeType, postId, tutorialId, questionId,
      isLike, isDislike, id, userId, type, createdAt, updatedAt);

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
      {final String? postId,
      final String? tutorialId,
      final String? questionId,
      final bool? isLike,
      final bool? isDislike,
      @JsonKey(name: "_id") final String? id,
      final String? userId,
      final String? type,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get postId;
  @override
  String? get tutorialId;
  @override
  String? get questionId;
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

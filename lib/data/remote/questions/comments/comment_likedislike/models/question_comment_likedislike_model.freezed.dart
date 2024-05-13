// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_comment_likedislike_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionCommentLikeDislikeRequestModel
    _$QuestionCommentLikeDislikeRequestModelFromJson(
        Map<String, dynamic> json) {
  return _QuestionCommentLikeDislikeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionCommentLikeDislikeRequestModel {
  @JsonKey(name: "isLike")
  bool? get isLike => throw _privateConstructorUsedError;
  @JsonKey(name: "isDislike")
  bool? get isDislike => throw _privateConstructorUsedError;
  @JsonKey(name: "commentId")
  String? get commentId => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCommentLikeDislikeRequestModelCopyWith<
          QuestionCommentLikeDislikeRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCommentLikeDislikeRequestModelCopyWith<$Res> {
  factory $QuestionCommentLikeDislikeRequestModelCopyWith(
          QuestionCommentLikeDislikeRequestModel value,
          $Res Function(QuestionCommentLikeDislikeRequestModel) then) =
      _$QuestionCommentLikeDislikeRequestModelCopyWithImpl<$Res,
          QuestionCommentLikeDislikeRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "isLike") bool? isLike,
      @JsonKey(name: "isDislike") bool? isDislike,
      @JsonKey(name: "commentId") String? commentId,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$QuestionCommentLikeDislikeRequestModelCopyWithImpl<$Res,
        $Val extends QuestionCommentLikeDislikeRequestModel>
    implements $QuestionCommentLikeDislikeRequestModelCopyWith<$Res> {
  _$QuestionCommentLikeDislikeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? commentId = freezed,
    Object? type = freezed,
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
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionCommentLikeDislikeRequestModelImplCopyWith<$Res>
    implements $QuestionCommentLikeDislikeRequestModelCopyWith<$Res> {
  factory _$$QuestionCommentLikeDislikeRequestModelImplCopyWith(
          _$QuestionCommentLikeDislikeRequestModelImpl value,
          $Res Function(_$QuestionCommentLikeDislikeRequestModelImpl) then) =
      __$$QuestionCommentLikeDislikeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isLike") bool? isLike,
      @JsonKey(name: "isDislike") bool? isDislike,
      @JsonKey(name: "commentId") String? commentId,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$QuestionCommentLikeDislikeRequestModelImplCopyWithImpl<$Res>
    extends _$QuestionCommentLikeDislikeRequestModelCopyWithImpl<$Res,
        _$QuestionCommentLikeDislikeRequestModelImpl>
    implements _$$QuestionCommentLikeDislikeRequestModelImplCopyWith<$Res> {
  __$$QuestionCommentLikeDislikeRequestModelImplCopyWithImpl(
      _$QuestionCommentLikeDislikeRequestModelImpl _value,
      $Res Function(_$QuestionCommentLikeDislikeRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLike = freezed,
    Object? isDislike = freezed,
    Object? commentId = freezed,
    Object? type = freezed,
  }) {
    return _then(_$QuestionCommentLikeDislikeRequestModelImpl(
      isLike: freezed == isLike
          ? _value.isLike
          : isLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDislike: freezed == isDislike
          ? _value.isDislike
          : isDislike // ignore: cast_nullable_to_non_nullable
              as bool?,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionCommentLikeDislikeRequestModelImpl
    implements _QuestionCommentLikeDislikeRequestModel {
  const _$QuestionCommentLikeDislikeRequestModelImpl(
      {@JsonKey(name: "isLike") this.isLike,
      @JsonKey(name: "isDislike") this.isDislike,
      @JsonKey(name: "commentId") this.commentId,
      @JsonKey(name: "type") this.type});

  factory _$QuestionCommentLikeDislikeRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuestionCommentLikeDislikeRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "isLike")
  final bool? isLike;
  @override
  @JsonKey(name: "isDislike")
  final bool? isDislike;
  @override
  @JsonKey(name: "commentId")
  final String? commentId;
  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'QuestionCommentLikeDislikeRequestModel(isLike: $isLike, isDislike: $isDislike, commentId: $commentId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionCommentLikeDislikeRequestModelImpl &&
            (identical(other.isLike, isLike) || other.isLike == isLike) &&
            (identical(other.isDislike, isDislike) ||
                other.isDislike == isDislike) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isLike, isDislike, commentId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionCommentLikeDislikeRequestModelImplCopyWith<
          _$QuestionCommentLikeDislikeRequestModelImpl>
      get copyWith =>
          __$$QuestionCommentLikeDislikeRequestModelImplCopyWithImpl<
              _$QuestionCommentLikeDislikeRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionCommentLikeDislikeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionCommentLikeDislikeRequestModel
    implements QuestionCommentLikeDislikeRequestModel {
  const factory _QuestionCommentLikeDislikeRequestModel(
          {@JsonKey(name: "isLike") final bool? isLike,
          @JsonKey(name: "isDislike") final bool? isDislike,
          @JsonKey(name: "commentId") final String? commentId,
          @JsonKey(name: "type") final String? type}) =
      _$QuestionCommentLikeDislikeRequestModelImpl;

  factory _QuestionCommentLikeDislikeRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$QuestionCommentLikeDislikeRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "isLike")
  bool? get isLike;
  @override
  @JsonKey(name: "isDislike")
  bool? get isDislike;
  @override
  @JsonKey(name: "commentId")
  String? get commentId;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$QuestionCommentLikeDislikeRequestModelImplCopyWith<
          _$QuestionCommentLikeDislikeRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuestionCommentLikeDislikeResponseModel
    _$QuestionCommentLikeDislikeResponseModelFromJson(
        Map<String, dynamic> json) {
  return _QuestionCommentLikeDislikeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionCommentLikeDislikeResponseModel {
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
  $QuestionCommentLikeDislikeResponseModelCopyWith<
          QuestionCommentLikeDislikeResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCommentLikeDislikeResponseModelCopyWith<$Res> {
  factory $QuestionCommentLikeDislikeResponseModelCopyWith(
          QuestionCommentLikeDislikeResponseModel value,
          $Res Function(QuestionCommentLikeDislikeResponseModel) then) =
      _$QuestionCommentLikeDislikeResponseModelCopyWithImpl<$Res,
          QuestionCommentLikeDislikeResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$QuestionCommentLikeDislikeResponseModelCopyWithImpl<$Res,
        $Val extends QuestionCommentLikeDislikeResponseModel>
    implements $QuestionCommentLikeDislikeResponseModelCopyWith<$Res> {
  _$QuestionCommentLikeDislikeResponseModelCopyWithImpl(
      this._value, this._then);

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
abstract class _$$QuestionCommentLikeDislikeResponseModelImplCopyWith<$Res>
    implements $QuestionCommentLikeDislikeResponseModelCopyWith<$Res> {
  factory _$$QuestionCommentLikeDislikeResponseModelImplCopyWith(
          _$QuestionCommentLikeDislikeResponseModelImpl value,
          $Res Function(_$QuestionCommentLikeDislikeResponseModelImpl) then) =
      __$$QuestionCommentLikeDislikeResponseModelImplCopyWithImpl<$Res>;
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
class __$$QuestionCommentLikeDislikeResponseModelImplCopyWithImpl<$Res>
    extends _$QuestionCommentLikeDislikeResponseModelCopyWithImpl<$Res,
        _$QuestionCommentLikeDislikeResponseModelImpl>
    implements _$$QuestionCommentLikeDislikeResponseModelImplCopyWith<$Res> {
  __$$QuestionCommentLikeDislikeResponseModelImplCopyWithImpl(
      _$QuestionCommentLikeDislikeResponseModelImpl _value,
      $Res Function(_$QuestionCommentLikeDislikeResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$QuestionCommentLikeDislikeResponseModelImpl(
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
class _$QuestionCommentLikeDislikeResponseModelImpl
    implements _QuestionCommentLikeDislikeResponseModel {
  const _$QuestionCommentLikeDislikeResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$QuestionCommentLikeDislikeResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuestionCommentLikeDislikeResponseModelImplFromJson(json);

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
    return 'QuestionCommentLikeDislikeResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionCommentLikeDislikeResponseModelImpl &&
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
  _$$QuestionCommentLikeDislikeResponseModelImplCopyWith<
          _$QuestionCommentLikeDislikeResponseModelImpl>
      get copyWith =>
          __$$QuestionCommentLikeDislikeResponseModelImplCopyWithImpl<
              _$QuestionCommentLikeDislikeResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionCommentLikeDislikeResponseModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionCommentLikeDislikeResponseModel
    implements QuestionCommentLikeDislikeResponseModel {
  const factory _QuestionCommentLikeDislikeResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$QuestionCommentLikeDislikeResponseModelImpl;

  factory _QuestionCommentLikeDislikeResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$QuestionCommentLikeDislikeResponseModelImpl.fromJson;

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
  _$$QuestionCommentLikeDislikeResponseModelImplCopyWith<
          _$QuestionCommentLikeDislikeResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "postId")
  dynamic get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "tutorialId")
  dynamic get tutorialId => throw _privateConstructorUsedError;
  @JsonKey(name: "commentId")
  String? get commentId => throw _privateConstructorUsedError;
  @JsonKey(name: "questionId")
  dynamic get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: "isLike")
  bool? get isLike => throw _privateConstructorUsedError;
  @JsonKey(name: "isDislike")
  bool? get isDislike => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "postId") dynamic postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
      @JsonKey(name: "commentId") String? commentId,
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "isLike") bool? isLike,
      @JsonKey(name: "isDislike") bool? isDislike,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "type") String? type,
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
    Object? postId = freezed,
    Object? tutorialId = freezed,
    Object? commentId = freezed,
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
              as dynamic,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "postId") dynamic postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
      @JsonKey(name: "commentId") String? commentId,
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "isLike") bool? isLike,
      @JsonKey(name: "isDislike") bool? isDislike,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "type") String? type,
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
    Object? postId = freezed,
    Object? tutorialId = freezed,
    Object? commentId = freezed,
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
              as dynamic,
      commentId: freezed == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "postId") this.postId,
      @JsonKey(name: "tutorialId") this.tutorialId,
      @JsonKey(name: "commentId") this.commentId,
      @JsonKey(name: "questionId") this.questionId,
      @JsonKey(name: "isLike") this.isLike,
      @JsonKey(name: "isDislike") this.isDislike,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "postId")
  final dynamic postId;
  @override
  @JsonKey(name: "tutorialId")
  final dynamic tutorialId;
  @override
  @JsonKey(name: "commentId")
  final String? commentId;
  @override
  @JsonKey(name: "questionId")
  final dynamic questionId;
  @override
  @JsonKey(name: "isLike")
  final bool? isLike;
  @override
  @JsonKey(name: "isDislike")
  final bool? isDislike;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Data(postId: $postId, tutorialId: $tutorialId, commentId: $commentId, questionId: $questionId, isLike: $isLike, isDislike: $isDislike, id: $id, userId: $userId, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality()
                .equals(other.tutorialId, tutorialId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
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
      const DeepCollectionEquality().hash(tutorialId),
      commentId,
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
      {@JsonKey(name: "postId") final dynamic postId,
      @JsonKey(name: "tutorialId") final dynamic tutorialId,
      @JsonKey(name: "commentId") final String? commentId,
      @JsonKey(name: "questionId") final dynamic questionId,
      @JsonKey(name: "isLike") final bool? isLike,
      @JsonKey(name: "isDislike") final bool? isDislike,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "postId")
  dynamic get postId;
  @override
  @JsonKey(name: "tutorialId")
  dynamic get tutorialId;
  @override
  @JsonKey(name: "commentId")
  String? get commentId;
  @override
  @JsonKey(name: "questionId")
  dynamic get questionId;
  @override
  @JsonKey(name: "isLike")
  bool? get isLike;
  @override
  @JsonKey(name: "isDislike")
  bool? get isDislike;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "userId")
  String? get userId;
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
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

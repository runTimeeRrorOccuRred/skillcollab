// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_post_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPostCommentModel _$GetPostCommentModelFromJson(Map<String, dynamic> json) {
  return _GetPostCommentModel.fromJson(json);
}

/// @nodoc
mixin _$GetPostCommentModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Comment>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPostCommentModelCopyWith<GetPostCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostCommentModelCopyWith<$Res> {
  factory $GetPostCommentModelCopyWith(
          GetPostCommentModel value, $Res Function(GetPostCommentModel) then) =
      _$GetPostCommentModelCopyWithImpl<$Res, GetPostCommentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Comment>? data});
}

/// @nodoc
class _$GetPostCommentModelCopyWithImpl<$Res, $Val extends GetPostCommentModel>
    implements $GetPostCommentModelCopyWith<$Res> {
  _$GetPostCommentModelCopyWithImpl(this._value, this._then);

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
              as List<Comment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPostCommentModelImplCopyWith<$Res>
    implements $GetPostCommentModelCopyWith<$Res> {
  factory _$$GetPostCommentModelImplCopyWith(_$GetPostCommentModelImpl value,
          $Res Function(_$GetPostCommentModelImpl) then) =
      __$$GetPostCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<Comment>? data});
}

/// @nodoc
class __$$GetPostCommentModelImplCopyWithImpl<$Res>
    extends _$GetPostCommentModelCopyWithImpl<$Res, _$GetPostCommentModelImpl>
    implements _$$GetPostCommentModelImplCopyWith<$Res> {
  __$$GetPostCommentModelImplCopyWithImpl(_$GetPostCommentModelImpl _value,
      $Res Function(_$GetPostCommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetPostCommentModelImpl(
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
              as List<Comment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPostCommentModelImpl implements _GetPostCommentModel {
  const _$GetPostCommentModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<Comment>? data})
      : _data = data;

  factory _$GetPostCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPostCommentModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<Comment>? _data;
  @override
  @JsonKey(name: "data")
  List<Comment>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetPostCommentModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostCommentModelImpl &&
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
  _$$GetPostCommentModelImplCopyWith<_$GetPostCommentModelImpl> get copyWith =>
      __$$GetPostCommentModelImplCopyWithImpl<_$GetPostCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPostCommentModelImplToJson(
      this,
    );
  }
}

abstract class _GetPostCommentModel implements GetPostCommentModel {
  const factory _GetPostCommentModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<Comment>? data}) =
      _$GetPostCommentModelImpl;

  factory _GetPostCommentModel.fromJson(Map<String, dynamic> json) =
      _$GetPostCommentModelImpl.fromJson;

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
  List<Comment>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPostCommentModelImplCopyWith<_$GetPostCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  @JsonKey(name: "postId")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "tutorialId")
  dynamic get tutorialId => throw _privateConstructorUsedError;
  @JsonKey(name: "questionId")
  dynamic get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: "parentId")
  dynamic get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  UserId? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "userLikeDislike")
  UserLikeDislike? get userLikeDislike => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: "likeCounts")
  int? get likeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "disLikeCounts")
  int? get dislikeCounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "parentId") dynamic parentId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "comment") String? comment,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "userLikeDislike") UserLikeDislike? userLikeDislike,
      @JsonKey(name: "count") int? count,
      @JsonKey(name: "likeCounts") int? likeCounts,
      @JsonKey(name: "disLikeCounts") int? dislikeCounts});

  $UserIdCopyWith<$Res>? get userId;
  $UserLikeDislikeCopyWith<$Res>? get userLikeDislike;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

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
    Object? parentId = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userLikeDislike = freezed,
    Object? count = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
      userLikeDislike: freezed == userLikeDislike
          ? _value.userLikeDislike
          : userLikeDislike // ignore: cast_nullable_to_non_nullable
              as UserLikeDislike?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $UserLikeDislikeCopyWith<$Res>? get userLikeDislike {
    if (_value.userLikeDislike == null) {
      return null;
    }

    return $UserLikeDislikeCopyWith<$Res>(_value.userLikeDislike!, (value) {
      return _then(_value.copyWith(userLikeDislike: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "parentId") dynamic parentId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "comment") String? comment,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "userLikeDislike") UserLikeDislike? userLikeDislike,
      @JsonKey(name: "count") int? count,
      @JsonKey(name: "likeCounts") int? likeCounts,
      @JsonKey(name: "disLikeCounts") int? dislikeCounts});

  @override
  $UserIdCopyWith<$Res>? get userId;
  @override
  $UserLikeDislikeCopyWith<$Res>? get userLikeDislike;
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? tutorialId = freezed,
    Object? questionId = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? userLikeDislike = freezed,
    Object? count = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
  }) {
    return _then(_$CommentImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
      userLikeDislike: freezed == userLikeDislike
          ? _value.userLikeDislike
          : userLikeDislike // ignore: cast_nullable_to_non_nullable
              as UserLikeDislike?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl(
      {@JsonKey(name: "postId") this.postId,
      @JsonKey(name: "tutorialId") this.tutorialId,
      @JsonKey(name: "questionId") this.questionId,
      @JsonKey(name: "parentId") this.parentId,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "comment") this.comment,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "userLikeDislike") this.userLikeDislike,
      @JsonKey(name: "count") this.count,
      @JsonKey(name: "likeCounts") this.likeCounts,
      @JsonKey(name: "disLikeCounts") this.dislikeCounts});

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  @JsonKey(name: "postId")
  final String? postId;
  @override
  @JsonKey(name: "tutorialId")
  final dynamic tutorialId;
  @override
  @JsonKey(name: "questionId")
  final dynamic questionId;
  @override
  @JsonKey(name: "parentId")
  final dynamic parentId;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "userId")
  final UserId? userId;
  @override
  @JsonKey(name: "comment")
  final String? comment;
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
  @JsonKey(name: "userLikeDislike")
  final UserLikeDislike? userLikeDislike;
  @override
  @JsonKey(name: "count")
  final int? count;
  @override
  @JsonKey(name: "likeCounts")
  final int? likeCounts;
  @override
  @JsonKey(name: "disLikeCounts")
  final int? dislikeCounts;

  @override
  String toString() {
    return 'Comment(postId: $postId, tutorialId: $tutorialId, questionId: $questionId, parentId: $parentId, id: $id, userId: $userId, comment: $comment, type: $type, createdAt: $createdAt, updatedAt: $updatedAt, userLikeDislike: $userLikeDislike, count: $count, likeCounts: $likeCounts, dislikeCounts: $dislikeCounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            const DeepCollectionEquality()
                .equals(other.tutorialId, tutorialId) &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userLikeDislike, userLikeDislike) ||
                other.userLikeDislike == userLikeDislike) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.likeCounts, likeCounts) ||
                other.likeCounts == likeCounts) &&
            (identical(other.dislikeCounts, dislikeCounts) ||
                other.dislikeCounts == dislikeCounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postId,
      const DeepCollectionEquality().hash(tutorialId),
      const DeepCollectionEquality().hash(questionId),
      const DeepCollectionEquality().hash(parentId),
      id,
      userId,
      comment,
      type,
      createdAt,
      updatedAt,
      userLikeDislike,
      count,
      likeCounts,
      dislikeCounts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {@JsonKey(name: "postId") final String? postId,
      @JsonKey(name: "tutorialId") final dynamic tutorialId,
      @JsonKey(name: "questionId") final dynamic questionId,
      @JsonKey(name: "parentId") final dynamic parentId,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userId") final UserId? userId,
      @JsonKey(name: "comment") final String? comment,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "userLikeDislike") final UserLikeDislike? userLikeDislike,
      @JsonKey(name: "count") final int? count,
      @JsonKey(name: "likeCounts") final int? likeCounts,
      @JsonKey(name: "disLikeCounts")
      final int? dislikeCounts}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  @JsonKey(name: "postId")
  String? get postId;
  @override
  @JsonKey(name: "tutorialId")
  dynamic get tutorialId;
  @override
  @JsonKey(name: "questionId")
  dynamic get questionId;
  @override
  @JsonKey(name: "parentId")
  dynamic get parentId;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "userId")
  UserId? get userId;
  @override
  @JsonKey(name: "comment")
  String? get comment;
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
  @JsonKey(name: "userLikeDislike")
  UserLikeDislike? get userLikeDislike;
  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(name: "likeCounts")
  int? get likeCounts;
  @override
  @JsonKey(name: "disLikeCounts")
  int? get dislikeCounts;
  @override
  @JsonKey(ignore: true)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
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
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers => throw _privateConstructorUsedError;
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
  @JsonKey(name: "customerId")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "accountId")
  String? get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "accountLink")
  String? get accountLink => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  dynamic get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "accountId") String? accountId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "accountLink") String? accountLink,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
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
    Object? type = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? interests = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? id = freezed,
    Object? subscribers = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? customerId = freezed,
    Object? accountId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? accountLink = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? coverPhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? profilePhoto = freezed,
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
      subscribers: freezed == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      accountLink: freezed == accountLink
          ? _value.accountLink
          : accountLink // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@JsonKey(name: "type") String? type,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "productId") dynamic productId,
      @JsonKey(name: "deviceToken") List<String?>? deviceToken,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "subscribers") List<dynamic>? subscribers,
      @JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "userName") String? userName,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "accountId") String? accountId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "accountLink") String? accountLink,
      @JsonKey(name: "otp") dynamic otp,
      @JsonKey(name: "otpExpiry") dynamic otpExpiry,
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
    Object? type = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? interests = freezed,
    Object? productId = freezed,
    Object? deviceToken = freezed,
    Object? id = freezed,
    Object? subscribers = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? customerId = freezed,
    Object? accountId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? accountLink = freezed,
    Object? otp = freezed,
    Object? otpExpiry = freezed,
    Object? coverPhoto = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? profilePhoto = freezed,
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
      subscribers: freezed == subscribers
          ? _value._subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      accountLink: freezed == accountLink
          ? _value.accountLink
          : accountLink // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      otpExpiry: freezed == otpExpiry
          ? _value.otpExpiry
          : otpExpiry // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@JsonKey(name: "type") this.type,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
      @JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "userName") this.userName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "customerId") this.customerId,
      @JsonKey(name: "accountId") this.accountId,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "accountLink") this.accountLink,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpiry") this.otpExpiry,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "profilePhoto") this.profilePhoto})
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
  @JsonKey(name: "customerId")
  final String? customerId;
  @override
  @JsonKey(name: "accountId")
  final String? accountId;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "accountLink")
  final String? accountLink;
  @override
  @JsonKey(name: "otp")
  final dynamic otp;
  @override
  @JsonKey(name: "otpExpiry")
  final dynamic otpExpiry;
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
    return 'UserId(type: $type, role: $role, isEmailVerified: $isEmailVerified, interests: $interests, productId: $productId, deviceToken: $deviceToken, id: $id, subscribers: $subscribers, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, password: $password, customerId: $customerId, accountId: $accountId, createdAt: $createdAt, updatedAt: $updatedAt, accountLink: $accountLink, otp: $otp, otpExpiry: $otpExpiry, coverPhoto: $coverPhoto, description: $description, location: $location, profilePhoto: $profilePhoto)';
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
            const DeepCollectionEquality()
                .equals(other._subscribers, _subscribers) &&
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
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.accountLink, accountLink) ||
                other.accountLink == accountLink) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality().equals(other.otpExpiry, otpExpiry) &&
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
        type,
        role,
        isEmailVerified,
        const DeepCollectionEquality().hash(_interests),
        const DeepCollectionEquality().hash(productId),
        const DeepCollectionEquality().hash(_deviceToken),
        id,
        const DeepCollectionEquality().hash(_subscribers),
        firstName,
        lastName,
        userName,
        email,
        phone,
        password,
        customerId,
        accountId,
        createdAt,
        updatedAt,
        accountLink,
        const DeepCollectionEquality().hash(otp),
        const DeepCollectionEquality().hash(otpExpiry),
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
          {@JsonKey(name: "type") final String? type,
          @JsonKey(name: "role") final String? role,
          @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
          @JsonKey(name: "interests") final List<Interest>? interests,
          @JsonKey(name: "productId") final dynamic productId,
          @JsonKey(name: "deviceToken") final List<String?>? deviceToken,
          @JsonKey(name: "_id") final String? id,
          @JsonKey(name: "subscribers") final List<dynamic>? subscribers,
          @JsonKey(name: "firstName") final String? firstName,
          @JsonKey(name: "lastName") final String? lastName,
          @JsonKey(name: "userName") final String? userName,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "phone") final String? phone,
          @JsonKey(name: "password") final String? password,
          @JsonKey(name: "customerId") final String? customerId,
          @JsonKey(name: "accountId") final String? accountId,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt,
          @JsonKey(name: "accountLink") final String? accountLink,
          @JsonKey(name: "otp") final dynamic otp,
          @JsonKey(name: "otpExpiry") final dynamic otpExpiry,
          @JsonKey(name: "coverPhoto") final String? coverPhoto,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "location") final String? location,
          @JsonKey(name: "profilePhoto") final String? profilePhoto}) =
      _$UserIdImpl;

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
  @JsonKey(name: "subscribers")
  List<dynamic>? get subscribers;
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
  @JsonKey(name: "customerId")
  String? get customerId;
  @override
  @JsonKey(name: "accountId")
  String? get accountId;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "accountLink")
  String? get accountLink;
  @override
  @JsonKey(name: "otp")
  dynamic get otp;
  @override
  @JsonKey(name: "otpExpiry")
  dynamic get otpExpiry;
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

UserLikeDislike _$UserLikeDislikeFromJson(Map<String, dynamic> json) {
  return _UserLikeDislike.fromJson(json);
}

/// @nodoc
mixin _$UserLikeDislike {
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
  $UserLikeDislikeCopyWith<UserLikeDislike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLikeDislikeCopyWith<$Res> {
  factory $UserLikeDislikeCopyWith(
          UserLikeDislike value, $Res Function(UserLikeDislike) then) =
      _$UserLikeDislikeCopyWithImpl<$Res, UserLikeDislike>;
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
class _$UserLikeDislikeCopyWithImpl<$Res, $Val extends UserLikeDislike>
    implements $UserLikeDislikeCopyWith<$Res> {
  _$UserLikeDislikeCopyWithImpl(this._value, this._then);

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
abstract class _$$UserLikeDislikeImplCopyWith<$Res>
    implements $UserLikeDislikeCopyWith<$Res> {
  factory _$$UserLikeDislikeImplCopyWith(_$UserLikeDislikeImpl value,
          $Res Function(_$UserLikeDislikeImpl) then) =
      __$$UserLikeDislikeImplCopyWithImpl<$Res>;
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
class __$$UserLikeDislikeImplCopyWithImpl<$Res>
    extends _$UserLikeDislikeCopyWithImpl<$Res, _$UserLikeDislikeImpl>
    implements _$$UserLikeDislikeImplCopyWith<$Res> {
  __$$UserLikeDislikeImplCopyWithImpl(
      _$UserLikeDislikeImpl _value, $Res Function(_$UserLikeDislikeImpl) _then)
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
    return _then(_$UserLikeDislikeImpl(
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
class _$UserLikeDislikeImpl implements _UserLikeDislike {
  const _$UserLikeDislikeImpl(
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

  factory _$UserLikeDislikeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLikeDislikeImplFromJson(json);

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
    return 'UserLikeDislike(postId: $postId, tutorialId: $tutorialId, commentId: $commentId, questionId: $questionId, isLike: $isLike, isDislike: $isDislike, id: $id, userId: $userId, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLikeDislikeImpl &&
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
  _$$UserLikeDislikeImplCopyWith<_$UserLikeDislikeImpl> get copyWith =>
      __$$UserLikeDislikeImplCopyWithImpl<_$UserLikeDislikeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLikeDislikeImplToJson(
      this,
    );
  }
}

abstract class _UserLikeDislike implements UserLikeDislike {
  const factory _UserLikeDislike(
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
          @JsonKey(name: "updatedAt") final DateTime? updatedAt}) =
      _$UserLikeDislikeImpl;

  factory _UserLikeDislike.fromJson(Map<String, dynamic> json) =
      _$UserLikeDislikeImpl.fromJson;

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
  _$$UserLikeDislikeImplCopyWith<_$UserLikeDislikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

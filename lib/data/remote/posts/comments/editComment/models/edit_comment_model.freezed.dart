// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditCommentRequestModel _$EditCommentRequestModelFromJson(
    Map<String, dynamic> json) {
  return _EditCommentRequestModel.fromJson(json);
}

/// @nodoc
mixin _$EditCommentRequestModel {
  @JsonKey(name: "comment")
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditCommentRequestModelCopyWith<EditCommentRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCommentRequestModelCopyWith<$Res> {
  factory $EditCommentRequestModelCopyWith(EditCommentRequestModel value,
          $Res Function(EditCommentRequestModel) then) =
      _$EditCommentRequestModelCopyWithImpl<$Res, EditCommentRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "comment") String? comment,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$EditCommentRequestModelCopyWithImpl<$Res,
        $Val extends EditCommentRequestModel>
    implements $EditCommentRequestModelCopyWith<$Res> {
  _$EditCommentRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditCommentRequestModelImplCopyWith<$Res>
    implements $EditCommentRequestModelCopyWith<$Res> {
  factory _$$EditCommentRequestModelImplCopyWith(
          _$EditCommentRequestModelImpl value,
          $Res Function(_$EditCommentRequestModelImpl) then) =
      __$$EditCommentRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "comment") String? comment,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$EditCommentRequestModelImplCopyWithImpl<$Res>
    extends _$EditCommentRequestModelCopyWithImpl<$Res,
        _$EditCommentRequestModelImpl>
    implements _$$EditCommentRequestModelImplCopyWith<$Res> {
  __$$EditCommentRequestModelImplCopyWithImpl(
      _$EditCommentRequestModelImpl _value,
      $Res Function(_$EditCommentRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = freezed,
    Object? type = freezed,
  }) {
    return _then(_$EditCommentRequestModelImpl(
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
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
class _$EditCommentRequestModelImpl implements _EditCommentRequestModel {
  const _$EditCommentRequestModelImpl(
      {@JsonKey(name: "comment") this.comment,
      @JsonKey(name: "type") this.type});

  factory _$EditCommentRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditCommentRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "comment")
  final String? comment;
  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'EditCommentRequestModel(comment: $comment, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCommentRequestModelImpl &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comment, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCommentRequestModelImplCopyWith<_$EditCommentRequestModelImpl>
      get copyWith => __$$EditCommentRequestModelImplCopyWithImpl<
          _$EditCommentRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditCommentRequestModelImplToJson(
      this,
    );
  }
}

abstract class _EditCommentRequestModel implements EditCommentRequestModel {
  const factory _EditCommentRequestModel(
          {@JsonKey(name: "comment") final String? comment,
          @JsonKey(name: "type") final String? type}) =
      _$EditCommentRequestModelImpl;

  factory _EditCommentRequestModel.fromJson(Map<String, dynamic> json) =
      _$EditCommentRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "comment")
  String? get comment;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$EditCommentRequestModelImplCopyWith<_$EditCommentRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EditCommentResponseModel _$EditCommentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _EditCommentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$EditCommentResponseModel {
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
  $EditCommentResponseModelCopyWith<EditCommentResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCommentResponseModelCopyWith<$Res> {
  factory $EditCommentResponseModelCopyWith(EditCommentResponseModel value,
          $Res Function(EditCommentResponseModel) then) =
      _$EditCommentResponseModelCopyWithImpl<$Res, EditCommentResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$EditCommentResponseModelCopyWithImpl<$Res,
        $Val extends EditCommentResponseModel>
    implements $EditCommentResponseModelCopyWith<$Res> {
  _$EditCommentResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$EditCommentResponseModelImplCopyWith<$Res>
    implements $EditCommentResponseModelCopyWith<$Res> {
  factory _$$EditCommentResponseModelImplCopyWith(
          _$EditCommentResponseModelImpl value,
          $Res Function(_$EditCommentResponseModelImpl) then) =
      __$$EditCommentResponseModelImplCopyWithImpl<$Res>;
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
class __$$EditCommentResponseModelImplCopyWithImpl<$Res>
    extends _$EditCommentResponseModelCopyWithImpl<$Res,
        _$EditCommentResponseModelImpl>
    implements _$$EditCommentResponseModelImplCopyWith<$Res> {
  __$$EditCommentResponseModelImplCopyWithImpl(
      _$EditCommentResponseModelImpl _value,
      $Res Function(_$EditCommentResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$EditCommentResponseModelImpl(
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
class _$EditCommentResponseModelImpl implements _EditCommentResponseModel {
  const _$EditCommentResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$EditCommentResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditCommentResponseModelImplFromJson(json);

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
    return 'EditCommentResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCommentResponseModelImpl &&
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
  _$$EditCommentResponseModelImplCopyWith<_$EditCommentResponseModelImpl>
      get copyWith => __$$EditCommentResponseModelImplCopyWithImpl<
          _$EditCommentResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditCommentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _EditCommentResponseModel implements EditCommentResponseModel {
  const factory _EditCommentResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$EditCommentResponseModelImpl;

  factory _EditCommentResponseModel.fromJson(Map<String, dynamic> json) =
      _$EditCommentResponseModelImpl.fromJson;

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
  _$$EditCommentResponseModelImplCopyWith<_$EditCommentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
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
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  String? get comment => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "parentId") dynamic parentId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "comment") String? comment,
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
    Object? questionId = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
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
              as String?,
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
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "tutorialId") dynamic tutorialId,
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "parentId") dynamic parentId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "comment") String? comment,
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
    Object? questionId = freezed,
    Object? parentId = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? comment = freezed,
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
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "postId") this.postId,
      @JsonKey(name: "tutorialId") this.tutorialId,
      @JsonKey(name: "questionId") this.questionId,
      @JsonKey(name: "parentId") this.parentId,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "comment") this.comment,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

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
  final String? userId;
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
  String toString() {
    return 'Data(postId: $postId, tutorialId: $tutorialId, questionId: $questionId, parentId: $parentId, id: $id, userId: $userId, comment: $comment, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
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
                other.updatedAt == updatedAt));
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
      {@JsonKey(name: "postId") final String? postId,
      @JsonKey(name: "tutorialId") final dynamic tutorialId,
      @JsonKey(name: "questionId") final dynamic questionId,
      @JsonKey(name: "parentId") final dynamic parentId,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "userId") final String? userId,
      @JsonKey(name: "comment") final String? comment,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

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
  String? get userId;
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
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

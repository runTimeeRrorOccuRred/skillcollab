// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteCommentRequestModel _$DeleteCommentRequestModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteCommentRequestModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteCommentRequestModel {
  @JsonKey(name: "postId")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteCommentRequestModelCopyWith<DeleteCommentRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommentRequestModelCopyWith<$Res> {
  factory $DeleteCommentRequestModelCopyWith(DeleteCommentRequestModel value,
          $Res Function(DeleteCommentRequestModel) then) =
      _$DeleteCommentRequestModelCopyWithImpl<$Res, DeleteCommentRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$DeleteCommentRequestModelCopyWithImpl<$Res,
        $Val extends DeleteCommentRequestModel>
    implements $DeleteCommentRequestModelCopyWith<$Res> {
  _$DeleteCommentRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteCommentRequestModelImplCopyWith<$Res>
    implements $DeleteCommentRequestModelCopyWith<$Res> {
  factory _$$DeleteCommentRequestModelImplCopyWith(
          _$DeleteCommentRequestModelImpl value,
          $Res Function(_$DeleteCommentRequestModelImpl) then) =
      __$$DeleteCommentRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$DeleteCommentRequestModelImplCopyWithImpl<$Res>
    extends _$DeleteCommentRequestModelCopyWithImpl<$Res,
        _$DeleteCommentRequestModelImpl>
    implements _$$DeleteCommentRequestModelImplCopyWith<$Res> {
  __$$DeleteCommentRequestModelImplCopyWithImpl(
      _$DeleteCommentRequestModelImpl _value,
      $Res Function(_$DeleteCommentRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? type = freezed,
  }) {
    return _then(_$DeleteCommentRequestModelImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
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
class _$DeleteCommentRequestModelImpl implements _DeleteCommentRequestModel {
  const _$DeleteCommentRequestModelImpl(
      {@JsonKey(name: "postId") this.postId, @JsonKey(name: "type") this.type});

  factory _$DeleteCommentRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteCommentRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "postId")
  final String? postId;
  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'DeleteCommentRequestModel(postId: $postId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentRequestModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentRequestModelImplCopyWith<_$DeleteCommentRequestModelImpl>
      get copyWith => __$$DeleteCommentRequestModelImplCopyWithImpl<
          _$DeleteCommentRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteCommentRequestModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteCommentRequestModel implements DeleteCommentRequestModel {
  const factory _DeleteCommentRequestModel(
          {@JsonKey(name: "postId") final String? postId,
          @JsonKey(name: "type") final String? type}) =
      _$DeleteCommentRequestModelImpl;

  factory _DeleteCommentRequestModel.fromJson(Map<String, dynamic> json) =
      _$DeleteCommentRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "postId")
  String? get postId;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCommentRequestModelImplCopyWith<_$DeleteCommentRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeleteCommentQuestionRequestModel _$DeleteCommentQuestionRequestModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteCommentQuestionRequestModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteCommentQuestionRequestModel {
  @JsonKey(name: "questionId")
  String? get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteCommentQuestionRequestModelCopyWith<DeleteCommentQuestionRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommentQuestionRequestModelCopyWith<$Res> {
  factory $DeleteCommentQuestionRequestModelCopyWith(
          DeleteCommentQuestionRequestModel value,
          $Res Function(DeleteCommentQuestionRequestModel) then) =
      _$DeleteCommentQuestionRequestModelCopyWithImpl<$Res,
          DeleteCommentQuestionRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "questionId") String? questionId,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$DeleteCommentQuestionRequestModelCopyWithImpl<$Res,
        $Val extends DeleteCommentQuestionRequestModel>
    implements $DeleteCommentQuestionRequestModelCopyWith<$Res> {
  _$DeleteCommentQuestionRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteCommentQuestionRequestModelImplCopyWith<$Res>
    implements $DeleteCommentQuestionRequestModelCopyWith<$Res> {
  factory _$$DeleteCommentQuestionRequestModelImplCopyWith(
          _$DeleteCommentQuestionRequestModelImpl value,
          $Res Function(_$DeleteCommentQuestionRequestModelImpl) then) =
      __$$DeleteCommentQuestionRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "questionId") String? questionId,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$DeleteCommentQuestionRequestModelImplCopyWithImpl<$Res>
    extends _$DeleteCommentQuestionRequestModelCopyWithImpl<$Res,
        _$DeleteCommentQuestionRequestModelImpl>
    implements _$$DeleteCommentQuestionRequestModelImplCopyWith<$Res> {
  __$$DeleteCommentQuestionRequestModelImplCopyWithImpl(
      _$DeleteCommentQuestionRequestModelImpl _value,
      $Res Function(_$DeleteCommentQuestionRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = freezed,
    Object? type = freezed,
  }) {
    return _then(_$DeleteCommentQuestionRequestModelImpl(
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
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
class _$DeleteCommentQuestionRequestModelImpl
    implements _DeleteCommentQuestionRequestModel {
  const _$DeleteCommentQuestionRequestModelImpl(
      {@JsonKey(name: "questionId") this.questionId,
      @JsonKey(name: "type") this.type});

  factory _$DeleteCommentQuestionRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteCommentQuestionRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "questionId")
  final String? questionId;
  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'DeleteCommentQuestionRequestModel(questionId: $questionId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentQuestionRequestModelImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentQuestionRequestModelImplCopyWith<
          _$DeleteCommentQuestionRequestModelImpl>
      get copyWith => __$$DeleteCommentQuestionRequestModelImplCopyWithImpl<
          _$DeleteCommentQuestionRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteCommentQuestionRequestModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteCommentQuestionRequestModel
    implements DeleteCommentQuestionRequestModel {
  const factory _DeleteCommentQuestionRequestModel(
          {@JsonKey(name: "questionId") final String? questionId,
          @JsonKey(name: "type") final String? type}) =
      _$DeleteCommentQuestionRequestModelImpl;

  factory _DeleteCommentQuestionRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$DeleteCommentQuestionRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "questionId")
  String? get questionId;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCommentQuestionRequestModelImplCopyWith<
          _$DeleteCommentQuestionRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeleteCommentTutorialRequestModel _$DeleteCommentTutorialRequestModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteCommentTutorialRequestModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteCommentTutorialRequestModel {
  @JsonKey(name: "tutorialId")
  String? get tutorialId => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteCommentTutorialRequestModelCopyWith<DeleteCommentTutorialRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommentTutorialRequestModelCopyWith<$Res> {
  factory $DeleteCommentTutorialRequestModelCopyWith(
          DeleteCommentTutorialRequestModel value,
          $Res Function(DeleteCommentTutorialRequestModel) then) =
      _$DeleteCommentTutorialRequestModelCopyWithImpl<$Res,
          DeleteCommentTutorialRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "tutorialId") String? tutorialId,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$DeleteCommentTutorialRequestModelCopyWithImpl<$Res,
        $Val extends DeleteCommentTutorialRequestModel>
    implements $DeleteCommentTutorialRequestModelCopyWith<$Res> {
  _$DeleteCommentTutorialRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorialId = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteCommentTutorialRequestModelImplCopyWith<$Res>
    implements $DeleteCommentTutorialRequestModelCopyWith<$Res> {
  factory _$$DeleteCommentTutorialRequestModelImplCopyWith(
          _$DeleteCommentTutorialRequestModelImpl value,
          $Res Function(_$DeleteCommentTutorialRequestModelImpl) then) =
      __$$DeleteCommentTutorialRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "tutorialId") String? tutorialId,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$DeleteCommentTutorialRequestModelImplCopyWithImpl<$Res>
    extends _$DeleteCommentTutorialRequestModelCopyWithImpl<$Res,
        _$DeleteCommentTutorialRequestModelImpl>
    implements _$$DeleteCommentTutorialRequestModelImplCopyWith<$Res> {
  __$$DeleteCommentTutorialRequestModelImplCopyWithImpl(
      _$DeleteCommentTutorialRequestModelImpl _value,
      $Res Function(_$DeleteCommentTutorialRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorialId = freezed,
    Object? type = freezed,
  }) {
    return _then(_$DeleteCommentTutorialRequestModelImpl(
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
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
class _$DeleteCommentTutorialRequestModelImpl
    implements _DeleteCommentTutorialRequestModel {
  const _$DeleteCommentTutorialRequestModelImpl(
      {@JsonKey(name: "tutorialId") this.tutorialId,
      @JsonKey(name: "type") this.type});

  factory _$DeleteCommentTutorialRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteCommentTutorialRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "tutorialId")
  final String? tutorialId;
  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'DeleteCommentTutorialRequestModel(tutorialId: $tutorialId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentTutorialRequestModelImpl &&
            (identical(other.tutorialId, tutorialId) ||
                other.tutorialId == tutorialId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tutorialId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentTutorialRequestModelImplCopyWith<
          _$DeleteCommentTutorialRequestModelImpl>
      get copyWith => __$$DeleteCommentTutorialRequestModelImplCopyWithImpl<
          _$DeleteCommentTutorialRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteCommentTutorialRequestModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteCommentTutorialRequestModel
    implements DeleteCommentTutorialRequestModel {
  const factory _DeleteCommentTutorialRequestModel(
          {@JsonKey(name: "tutorialId") final String? tutorialId,
          @JsonKey(name: "type") final String? type}) =
      _$DeleteCommentTutorialRequestModelImpl;

  factory _DeleteCommentTutorialRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$DeleteCommentTutorialRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "tutorialId")
  String? get tutorialId;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCommentTutorialRequestModelImplCopyWith<
          _$DeleteCommentTutorialRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeleteCommentResponseModel _$DeleteCommentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteCommentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteCommentResponseModel {
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
  $DeleteCommentResponseModelCopyWith<DeleteCommentResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCommentResponseModelCopyWith<$Res> {
  factory $DeleteCommentResponseModelCopyWith(DeleteCommentResponseModel value,
          $Res Function(DeleteCommentResponseModel) then) =
      _$DeleteCommentResponseModelCopyWithImpl<$Res,
          DeleteCommentResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeleteCommentResponseModelCopyWithImpl<$Res,
        $Val extends DeleteCommentResponseModel>
    implements $DeleteCommentResponseModelCopyWith<$Res> {
  _$DeleteCommentResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteCommentResponseModelImplCopyWith<$Res>
    implements $DeleteCommentResponseModelCopyWith<$Res> {
  factory _$$DeleteCommentResponseModelImplCopyWith(
          _$DeleteCommentResponseModelImpl value,
          $Res Function(_$DeleteCommentResponseModelImpl) then) =
      __$$DeleteCommentResponseModelImplCopyWithImpl<$Res>;
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
class __$$DeleteCommentResponseModelImplCopyWithImpl<$Res>
    extends _$DeleteCommentResponseModelCopyWithImpl<$Res,
        _$DeleteCommentResponseModelImpl>
    implements _$$DeleteCommentResponseModelImplCopyWith<$Res> {
  __$$DeleteCommentResponseModelImplCopyWithImpl(
      _$DeleteCommentResponseModelImpl _value,
      $Res Function(_$DeleteCommentResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DeleteCommentResponseModelImpl(
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
class _$DeleteCommentResponseModelImpl implements _DeleteCommentResponseModel {
  const _$DeleteCommentResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$DeleteCommentResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteCommentResponseModelImplFromJson(json);

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
    return 'DeleteCommentResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentResponseModelImpl &&
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
  _$$DeleteCommentResponseModelImplCopyWith<_$DeleteCommentResponseModelImpl>
      get copyWith => __$$DeleteCommentResponseModelImplCopyWithImpl<
          _$DeleteCommentResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteCommentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteCommentResponseModel
    implements DeleteCommentResponseModel {
  const factory _DeleteCommentResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$DeleteCommentResponseModelImpl;

  factory _DeleteCommentResponseModel.fromJson(Map<String, dynamic> json) =
      _$DeleteCommentResponseModelImpl.fromJson;

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
  _$$DeleteCommentResponseModelImplCopyWith<_$DeleteCommentResponseModelImpl>
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

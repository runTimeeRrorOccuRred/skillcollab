// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportRequestModel _$ReportRequestModelFromJson(Map<String, dynamic> json) {
  return _ReportRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ReportRequestModel {
  @JsonKey(name: "postId")
  String? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportRequestModelCopyWith<ReportRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportRequestModelCopyWith<$Res> {
  factory $ReportRequestModelCopyWith(
          ReportRequestModel value, $Res Function(ReportRequestModel) then) =
      _$ReportRequestModelCopyWithImpl<$Res, ReportRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$ReportRequestModelCopyWithImpl<$Res, $Val extends ReportRequestModel>
    implements $ReportRequestModelCopyWith<$Res> {
  _$ReportRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? content = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportRequestModelImplCopyWith<$Res>
    implements $ReportRequestModelCopyWith<$Res> {
  factory _$$ReportRequestModelImplCopyWith(_$ReportRequestModelImpl value,
          $Res Function(_$ReportRequestModelImpl) then) =
      __$$ReportRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "postId") String? postId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$ReportRequestModelImplCopyWithImpl<$Res>
    extends _$ReportRequestModelCopyWithImpl<$Res, _$ReportRequestModelImpl>
    implements _$$ReportRequestModelImplCopyWith<$Res> {
  __$$ReportRequestModelImplCopyWithImpl(_$ReportRequestModelImpl _value,
      $Res Function(_$ReportRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? content = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ReportRequestModelImpl(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$ReportRequestModelImpl implements _ReportRequestModel {
  const _$ReportRequestModelImpl(
      {@JsonKey(name: "postId") this.postId,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "type") this.type});

  factory _$ReportRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "postId")
  final String? postId;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'ReportRequestModel(postId: $postId, content: $content, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportRequestModelImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId, content, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportRequestModelImplCopyWith<_$ReportRequestModelImpl> get copyWith =>
      __$$ReportRequestModelImplCopyWithImpl<_$ReportRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ReportRequestModel implements ReportRequestModel {
  const factory _ReportRequestModel(
      {@JsonKey(name: "postId") final String? postId,
      @JsonKey(name: "content") final String? content,
      @JsonKey(name: "type") final String? type}) = _$ReportRequestModelImpl;

  factory _ReportRequestModel.fromJson(Map<String, dynamic> json) =
      _$ReportRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "postId")
  String? get postId;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$ReportRequestModelImplCopyWith<_$ReportRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionReportRequestModel _$QuestionReportRequestModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionReportRequestModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionReportRequestModel {
  @JsonKey(name: "questionId")
  String? get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionReportRequestModelCopyWith<QuestionReportRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionReportRequestModelCopyWith<$Res> {
  factory $QuestionReportRequestModelCopyWith(QuestionReportRequestModel value,
          $Res Function(QuestionReportRequestModel) then) =
      _$QuestionReportRequestModelCopyWithImpl<$Res,
          QuestionReportRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "questionId") String? questionId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$QuestionReportRequestModelCopyWithImpl<$Res,
        $Val extends QuestionReportRequestModel>
    implements $QuestionReportRequestModelCopyWith<$Res> {
  _$QuestionReportRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = freezed,
    Object? content = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionReportRequestModelImplCopyWith<$Res>
    implements $QuestionReportRequestModelCopyWith<$Res> {
  factory _$$QuestionReportRequestModelImplCopyWith(
          _$QuestionReportRequestModelImpl value,
          $Res Function(_$QuestionReportRequestModelImpl) then) =
      __$$QuestionReportRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "questionId") String? questionId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$QuestionReportRequestModelImplCopyWithImpl<$Res>
    extends _$QuestionReportRequestModelCopyWithImpl<$Res,
        _$QuestionReportRequestModelImpl>
    implements _$$QuestionReportRequestModelImplCopyWith<$Res> {
  __$$QuestionReportRequestModelImplCopyWithImpl(
      _$QuestionReportRequestModelImpl _value,
      $Res Function(_$QuestionReportRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = freezed,
    Object? content = freezed,
    Object? type = freezed,
  }) {
    return _then(_$QuestionReportRequestModelImpl(
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$QuestionReportRequestModelImpl implements _QuestionReportRequestModel {
  const _$QuestionReportRequestModelImpl(
      {@JsonKey(name: "questionId") this.questionId,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "type") this.type});

  factory _$QuestionReportRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuestionReportRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "questionId")
  final String? questionId;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'QuestionReportRequestModel(questionId: $questionId, content: $content, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionReportRequestModelImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, content, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionReportRequestModelImplCopyWith<_$QuestionReportRequestModelImpl>
      get copyWith => __$$QuestionReportRequestModelImplCopyWithImpl<
          _$QuestionReportRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionReportRequestModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionReportRequestModel
    implements QuestionReportRequestModel {
  const factory _QuestionReportRequestModel(
          {@JsonKey(name: "questionId") final String? questionId,
          @JsonKey(name: "content") final String? content,
          @JsonKey(name: "type") final String? type}) =
      _$QuestionReportRequestModelImpl;

  factory _QuestionReportRequestModel.fromJson(Map<String, dynamic> json) =
      _$QuestionReportRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "questionId")
  String? get questionId;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$QuestionReportRequestModelImplCopyWith<_$QuestionReportRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TutorialReportRequestModel _$TutorialReportRequestModelFromJson(
    Map<String, dynamic> json) {
  return _TutorialReportRequestModel.fromJson(json);
}

/// @nodoc
mixin _$TutorialReportRequestModel {
  @JsonKey(name: "tutorialId")
  String? get tutorialId => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialReportRequestModelCopyWith<TutorialReportRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialReportRequestModelCopyWith<$Res> {
  factory $TutorialReportRequestModelCopyWith(TutorialReportRequestModel value,
          $Res Function(TutorialReportRequestModel) then) =
      _$TutorialReportRequestModelCopyWithImpl<$Res,
          TutorialReportRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "tutorialId") String? tutorialId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class _$TutorialReportRequestModelCopyWithImpl<$Res,
        $Val extends TutorialReportRequestModel>
    implements $TutorialReportRequestModelCopyWith<$Res> {
  _$TutorialReportRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorialId = freezed,
    Object? content = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TutorialReportRequestModelImplCopyWith<$Res>
    implements $TutorialReportRequestModelCopyWith<$Res> {
  factory _$$TutorialReportRequestModelImplCopyWith(
          _$TutorialReportRequestModelImpl value,
          $Res Function(_$TutorialReportRequestModelImpl) then) =
      __$$TutorialReportRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "tutorialId") String? tutorialId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "type") String? type});
}

/// @nodoc
class __$$TutorialReportRequestModelImplCopyWithImpl<$Res>
    extends _$TutorialReportRequestModelCopyWithImpl<$Res,
        _$TutorialReportRequestModelImpl>
    implements _$$TutorialReportRequestModelImplCopyWith<$Res> {
  __$$TutorialReportRequestModelImplCopyWithImpl(
      _$TutorialReportRequestModelImpl _value,
      $Res Function(_$TutorialReportRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorialId = freezed,
    Object? content = freezed,
    Object? type = freezed,
  }) {
    return _then(_$TutorialReportRequestModelImpl(
      tutorialId: freezed == tutorialId
          ? _value.tutorialId
          : tutorialId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$TutorialReportRequestModelImpl implements _TutorialReportRequestModel {
  const _$TutorialReportRequestModelImpl(
      {@JsonKey(name: "tutorialId") this.tutorialId,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "type") this.type});

  factory _$TutorialReportRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TutorialReportRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "tutorialId")
  final String? tutorialId;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "type")
  final String? type;

  @override
  String toString() {
    return 'TutorialReportRequestModel(tutorialId: $tutorialId, content: $content, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialReportRequestModelImpl &&
            (identical(other.tutorialId, tutorialId) ||
                other.tutorialId == tutorialId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tutorialId, content, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialReportRequestModelImplCopyWith<_$TutorialReportRequestModelImpl>
      get copyWith => __$$TutorialReportRequestModelImplCopyWithImpl<
          _$TutorialReportRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialReportRequestModelImplToJson(
      this,
    );
  }
}

abstract class _TutorialReportRequestModel
    implements TutorialReportRequestModel {
  const factory _TutorialReportRequestModel(
          {@JsonKey(name: "tutorialId") final String? tutorialId,
          @JsonKey(name: "content") final String? content,
          @JsonKey(name: "type") final String? type}) =
      _$TutorialReportRequestModelImpl;

  factory _TutorialReportRequestModel.fromJson(Map<String, dynamic> json) =
      _$TutorialReportRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "tutorialId")
  String? get tutorialId;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$TutorialReportRequestModelImplCopyWith<_$TutorialReportRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReportResponseModel _$ReportResponseModelFromJson(Map<String, dynamic> json) {
  return _ReportResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ReportResponseModel {
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
  $ReportResponseModelCopyWith<ReportResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportResponseModelCopyWith<$Res> {
  factory $ReportResponseModelCopyWith(
          ReportResponseModel value, $Res Function(ReportResponseModel) then) =
      _$ReportResponseModelCopyWithImpl<$Res, ReportResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ReportResponseModelCopyWithImpl<$Res, $Val extends ReportResponseModel>
    implements $ReportResponseModelCopyWith<$Res> {
  _$ReportResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ReportResponseModelImplCopyWith<$Res>
    implements $ReportResponseModelCopyWith<$Res> {
  factory _$$ReportResponseModelImplCopyWith(_$ReportResponseModelImpl value,
          $Res Function(_$ReportResponseModelImpl) then) =
      __$$ReportResponseModelImplCopyWithImpl<$Res>;
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
class __$$ReportResponseModelImplCopyWithImpl<$Res>
    extends _$ReportResponseModelCopyWithImpl<$Res, _$ReportResponseModelImpl>
    implements _$$ReportResponseModelImplCopyWith<$Res> {
  __$$ReportResponseModelImplCopyWithImpl(_$ReportResponseModelImpl _value,
      $Res Function(_$ReportResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ReportResponseModelImpl(
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
class _$ReportResponseModelImpl implements _ReportResponseModel {
  const _$ReportResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$ReportResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportResponseModelImplFromJson(json);

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
    return 'ReportResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportResponseModelImpl &&
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
  _$$ReportResponseModelImplCopyWith<_$ReportResponseModelImpl> get copyWith =>
      __$$ReportResponseModelImplCopyWithImpl<_$ReportResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ReportResponseModel implements ReportResponseModel {
  const factory _ReportResponseModel(
      {@JsonKey(name: "code") final int? code,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "isSuccess") final bool? isSuccess,
      @JsonKey(name: "data") final Data? data}) = _$ReportResponseModelImpl;

  factory _ReportResponseModel.fromJson(Map<String, dynamic> json) =
      _$ReportResponseModelImpl.fromJson;

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
  _$$ReportResponseModelImplCopyWith<_$ReportResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  @JsonKey(name: "questionId")
  dynamic get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "toUserId")
  String? get toUserId => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "fromUserId")
  String? get fromUserId => throw _privateConstructorUsedError;
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
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "toUserId") String? toUserId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "fromUserId") String? fromUserId,
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
    Object? id = freezed,
    Object? toUserId = freezed,
    Object? content = freezed,
    Object? type = freezed,
    Object? fromUserId = freezed,
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
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      toUserId: freezed == toUserId
          ? _value.toUserId
          : toUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUserId: freezed == fromUserId
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "questionId") dynamic questionId,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "toUserId") String? toUserId,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "fromUserId") String? fromUserId,
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
    Object? id = freezed,
    Object? toUserId = freezed,
    Object? content = freezed,
    Object? type = freezed,
    Object? fromUserId = freezed,
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
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      toUserId: freezed == toUserId
          ? _value.toUserId
          : toUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUserId: freezed == fromUserId
          ? _value.fromUserId
          : fromUserId // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "toUserId") this.toUserId,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "fromUserId") this.fromUserId,
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
  @JsonKey(name: "questionId")
  final dynamic questionId;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "toUserId")
  final String? toUserId;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "fromUserId")
  final String? fromUserId;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Data(postId: $postId, tutorialId: $tutorialId, questionId: $questionId, id: $id, toUserId: $toUserId, content: $content, type: $type, fromUserId: $fromUserId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality()
                .equals(other.tutorialId, tutorialId) &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.toUserId, toUserId) ||
                other.toUserId == toUserId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
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
      const DeepCollectionEquality().hash(questionId),
      id,
      toUserId,
      content,
      type,
      fromUserId,
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
      @JsonKey(name: "questionId") final dynamic questionId,
      @JsonKey(name: "_id") final String? id,
      @JsonKey(name: "toUserId") final String? toUserId,
      @JsonKey(name: "content") final String? content,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "fromUserId") final String? fromUserId,
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
  @JsonKey(name: "questionId")
  dynamic get questionId;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "toUserId")
  String? get toUserId;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "fromUserId")
  String? get fromUserId;
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

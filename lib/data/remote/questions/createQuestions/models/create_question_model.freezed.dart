// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateQuestionRequestModel _$CreateQuestionRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateQuestionRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateQuestionRequestModel {
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "gif")
  String? get gif => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  String? get privacy => throw _privateConstructorUsedError;
  @JsonKey(name: "bgColor")
  String? get bgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "videoUrl")
  String? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "questionImage")
  String? get questionImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateQuestionRequestModelCopyWith<CreateQuestionRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuestionRequestModelCopyWith<$Res> {
  factory $CreateQuestionRequestModelCopyWith(CreateQuestionRequestModel value,
          $Res Function(CreateQuestionRequestModel) then) =
      _$CreateQuestionRequestModelCopyWithImpl<$Res,
          CreateQuestionRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "questionImage") String? questionImage});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateQuestionRequestModelCopyWithImpl<$Res,
        $Val extends CreateQuestionRequestModel>
    implements $CreateQuestionRequestModelCopyWith<$Res> {
  _$CreateQuestionRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? data = freezed,
    Object? gif = freezed,
    Object? privacy = freezed,
    Object? bgColor = freezed,
    Object? videoUrl = freezed,
    Object? questionImage = freezed,
  }) {
    return _then(_value.copyWith(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      questionImage: freezed == questionImage
          ? _value.questionImage
          : questionImage // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$CreateQuestionRequestModelImplCopyWith<$Res>
    implements $CreateQuestionRequestModelCopyWith<$Res> {
  factory _$$CreateQuestionRequestModelImplCopyWith(
          _$CreateQuestionRequestModelImpl value,
          $Res Function(_$CreateQuestionRequestModelImpl) then) =
      __$$CreateQuestionRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "gif") String? gif,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "questionImage") String? questionImage});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateQuestionRequestModelImplCopyWithImpl<$Res>
    extends _$CreateQuestionRequestModelCopyWithImpl<$Res,
        _$CreateQuestionRequestModelImpl>
    implements _$$CreateQuestionRequestModelImplCopyWith<$Res> {
  __$$CreateQuestionRequestModelImplCopyWithImpl(
      _$CreateQuestionRequestModelImpl _value,
      $Res Function(_$CreateQuestionRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = freezed,
    Object? data = freezed,
    Object? gif = freezed,
    Object? privacy = freezed,
    Object? bgColor = freezed,
    Object? videoUrl = freezed,
    Object? questionImage = freezed,
  }) {
    return _then(_$CreateQuestionRequestModelImpl(
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      questionImage: freezed == questionImage
          ? _value.questionImage
          : questionImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateQuestionRequestModelImpl implements _CreateQuestionRequestModel {
  const _$CreateQuestionRequestModelImpl(
      {@JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "questionImage") this.questionImage});

  factory _$CreateQuestionRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateQuestionRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "data")
  final Data? data;
  @override
  @JsonKey(name: "gif")
  final String? gif;
  @override
  @JsonKey(name: "privacy")
  final String? privacy;
  @override
  @JsonKey(name: "bgColor")
  final String? bgColor;
  @override
  @JsonKey(name: "videoUrl")
  final String? videoUrl;
  @override
  @JsonKey(name: "questionImage")
  final String? questionImage;

  @override
  String toString() {
    return 'CreateQuestionRequestModel(groupId: $groupId, data: $data, gif: $gif, privacy: $privacy, bgColor: $bgColor, videoUrl: $videoUrl, questionImage: $questionImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuestionRequestModelImpl &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.gif, gif) || other.gif == gif) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.questionImage, questionImage) ||
                other.questionImage == questionImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, data, gif, privacy,
      bgColor, videoUrl, questionImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuestionRequestModelImplCopyWith<_$CreateQuestionRequestModelImpl>
      get copyWith => __$$CreateQuestionRequestModelImplCopyWithImpl<
          _$CreateQuestionRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateQuestionRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateQuestionRequestModel
    implements CreateQuestionRequestModel {
  const factory _CreateQuestionRequestModel(
          {@JsonKey(name: "groupId") final String? groupId,
          @JsonKey(name: "data") final Data? data,
          @JsonKey(name: "gif") final String? gif,
          @JsonKey(name: "privacy") final String? privacy,
          @JsonKey(name: "bgColor") final String? bgColor,
          @JsonKey(name: "videoUrl") final String? videoUrl,
          @JsonKey(name: "questionImage") final String? questionImage}) =
      _$CreateQuestionRequestModelImpl;

  factory _CreateQuestionRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateQuestionRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(name: "gif")
  String? get gif;
  @override
  @JsonKey(name: "privacy")
  String? get privacy;
  @override
  @JsonKey(name: "bgColor")
  String? get bgColor;
  @override
  @JsonKey(name: "videoUrl")
  String? get videoUrl;
  @override
  @JsonKey(name: "questionImage")
  String? get questionImage;
  @override
  @JsonKey(ignore: true)
  _$$CreateQuestionRequestModelImplCopyWith<_$CreateQuestionRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "question")
  String? get question => throw _privateConstructorUsedError;
  @JsonKey(name: "answer")
  String? get answer => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "question") String? question,
      @JsonKey(name: "answer") String? answer});
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
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "question") String? question,
      @JsonKey(name: "answer") String? answer});
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
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$DataImpl(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "question") this.question,
      @JsonKey(name: "answer") this.answer});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "question")
  final String? question;
  @override
  @JsonKey(name: "answer")
  final String? answer;

  @override
  String toString() {
    return 'Data(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

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
      {@JsonKey(name: "question") final String? question,
      @JsonKey(name: "answer") final String? answer}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "question")
  String? get question;
  @override
  @JsonKey(name: "answer")
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateQuestionResponseModel _$CreateQuestionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateQuestionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateQuestionResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  CreateQuestionResponseModelData? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateQuestionResponseModelCopyWith<CreateQuestionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuestionResponseModelCopyWith<$Res> {
  factory $CreateQuestionResponseModelCopyWith(
          CreateQuestionResponseModel value,
          $Res Function(CreateQuestionResponseModel) then) =
      _$CreateQuestionResponseModelCopyWithImpl<$Res,
          CreateQuestionResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") CreateQuestionResponseModelData? data});

  $CreateQuestionResponseModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateQuestionResponseModelCopyWithImpl<$Res,
        $Val extends CreateQuestionResponseModel>
    implements $CreateQuestionResponseModelCopyWith<$Res> {
  _$CreateQuestionResponseModelCopyWithImpl(this._value, this._then);

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
              as CreateQuestionResponseModelData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateQuestionResponseModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CreateQuestionResponseModelDataCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateQuestionResponseModelImplCopyWith<$Res>
    implements $CreateQuestionResponseModelCopyWith<$Res> {
  factory _$$CreateQuestionResponseModelImplCopyWith(
          _$CreateQuestionResponseModelImpl value,
          $Res Function(_$CreateQuestionResponseModelImpl) then) =
      __$$CreateQuestionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") CreateQuestionResponseModelData? data});

  @override
  $CreateQuestionResponseModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateQuestionResponseModelImplCopyWithImpl<$Res>
    extends _$CreateQuestionResponseModelCopyWithImpl<$Res,
        _$CreateQuestionResponseModelImpl>
    implements _$$CreateQuestionResponseModelImplCopyWith<$Res> {
  __$$CreateQuestionResponseModelImplCopyWithImpl(
      _$CreateQuestionResponseModelImpl _value,
      $Res Function(_$CreateQuestionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateQuestionResponseModelImpl(
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
              as CreateQuestionResponseModelData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateQuestionResponseModelImpl
    implements _CreateQuestionResponseModel {
  const _$CreateQuestionResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$CreateQuestionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateQuestionResponseModelImplFromJson(json);

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
  final CreateQuestionResponseModelData? data;

  @override
  String toString() {
    return 'CreateQuestionResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuestionResponseModelImpl &&
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
  _$$CreateQuestionResponseModelImplCopyWith<_$CreateQuestionResponseModelImpl>
      get copyWith => __$$CreateQuestionResponseModelImplCopyWithImpl<
          _$CreateQuestionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateQuestionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CreateQuestionResponseModel
    implements CreateQuestionResponseModel {
  const factory _CreateQuestionResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final CreateQuestionResponseModelData? data}) =
      _$CreateQuestionResponseModelImpl;

  factory _CreateQuestionResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreateQuestionResponseModelImpl.fromJson;

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
  CreateQuestionResponseModelData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateQuestionResponseModelImplCopyWith<_$CreateQuestionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateQuestionResponseModelData _$CreateQuestionResponseModelDataFromJson(
    Map<String, dynamic> json) {
  return _CreateQuestionResponseModelData.fromJson(json);
}

/// @nodoc
mixin _$CreateQuestionResponseModelData {
  @JsonKey(name: "gif")
  String? get gif => throw _privateConstructorUsedError;
  @JsonKey(name: "videoUrl")
  String? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "bgColor")
  String? get bgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "questionImage")
  String? get questionImage => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateQuestionResponseModelDataCopyWith<CreateQuestionResponseModelData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuestionResponseModelDataCopyWith<$Res> {
  factory $CreateQuestionResponseModelDataCopyWith(
          CreateQuestionResponseModelData value,
          $Res Function(CreateQuestionResponseModelData) then) =
      _$CreateQuestionResponseModelDataCopyWithImpl<$Res,
          CreateQuestionResponseModelData>;
  @useResult
  $Res call(
      {@JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "data") DataData? data,
      @JsonKey(name: "questionImage") String? questionImage,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateQuestionResponseModelDataCopyWithImpl<$Res,
        $Val extends CreateQuestionResponseModelData>
    implements $CreateQuestionResponseModelDataCopyWith<$Res> {
  _$CreateQuestionResponseModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? id = freezed,
    Object? groupId = freezed,
    Object? data = freezed,
    Object? questionImage = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
      questionImage: freezed == questionImage
          ? _value.questionImage
          : questionImage // ignore: cast_nullable_to_non_nullable
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

  @override
  @pragma('vm:prefer-inline')
  $DataDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateQuestionResponseModelDataImplCopyWith<$Res>
    implements $CreateQuestionResponseModelDataCopyWith<$Res> {
  factory _$$CreateQuestionResponseModelDataImplCopyWith(
          _$CreateQuestionResponseModelDataImpl value,
          $Res Function(_$CreateQuestionResponseModelDataImpl) then) =
      __$$CreateQuestionResponseModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "gif") String? gif,
      @JsonKey(name: "videoUrl") String? videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "data") DataData? data,
      @JsonKey(name: "questionImage") String? questionImage,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  @override
  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateQuestionResponseModelDataImplCopyWithImpl<$Res>
    extends _$CreateQuestionResponseModelDataCopyWithImpl<$Res,
        _$CreateQuestionResponseModelDataImpl>
    implements _$$CreateQuestionResponseModelDataImplCopyWith<$Res> {
  __$$CreateQuestionResponseModelDataImplCopyWithImpl(
      _$CreateQuestionResponseModelDataImpl _value,
      $Res Function(_$CreateQuestionResponseModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? id = freezed,
    Object? groupId = freezed,
    Object? data = freezed,
    Object? questionImage = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CreateQuestionResponseModelDataImpl(
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
      questionImage: freezed == questionImage
          ? _value.questionImage
          : questionImage // ignore: cast_nullable_to_non_nullable
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
class _$CreateQuestionResponseModelDataImpl
    implements _CreateQuestionResponseModelData {
  const _$CreateQuestionResponseModelDataImpl(
      {@JsonKey(name: "gif") this.gif,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "questionImage") this.questionImage,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$CreateQuestionResponseModelDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateQuestionResponseModelDataImplFromJson(json);

  @override
  @JsonKey(name: "gif")
  final String? gif;
  @override
  @JsonKey(name: "videoUrl")
  final String? videoUrl;
  @override
  @JsonKey(name: "bgColor")
  final String? bgColor;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "data")
  final DataData? data;
  @override
  @JsonKey(name: "questionImage")
  final String? questionImage;
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
    return 'CreateQuestionResponseModelData(gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, id: $id, groupId: $groupId, data: $data, questionImage: $questionImage, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuestionResponseModelDataImpl &&
            (identical(other.gif, gif) || other.gif == gif) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.questionImage, questionImage) ||
                other.questionImage == questionImage) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gif, videoUrl, bgColor, id,
      groupId, data, questionImage, userId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuestionResponseModelDataImplCopyWith<
          _$CreateQuestionResponseModelDataImpl>
      get copyWith => __$$CreateQuestionResponseModelDataImplCopyWithImpl<
          _$CreateQuestionResponseModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateQuestionResponseModelDataImplToJson(
      this,
    );
  }
}

abstract class _CreateQuestionResponseModelData
    implements CreateQuestionResponseModelData {
  const factory _CreateQuestionResponseModelData(
          {@JsonKey(name: "gif") final String? gif,
          @JsonKey(name: "videoUrl") final String? videoUrl,
          @JsonKey(name: "bgColor") final String? bgColor,
          @JsonKey(name: "_id") final String? id,
          @JsonKey(name: "groupId") final String? groupId,
          @JsonKey(name: "data") final DataData? data,
          @JsonKey(name: "questionImage") final String? questionImage,
          @JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt}) =
      _$CreateQuestionResponseModelDataImpl;

  factory _CreateQuestionResponseModelData.fromJson(Map<String, dynamic> json) =
      _$CreateQuestionResponseModelDataImpl.fromJson;

  @override
  @JsonKey(name: "gif")
  String? get gif;
  @override
  @JsonKey(name: "videoUrl")
  String? get videoUrl;
  @override
  @JsonKey(name: "bgColor")
  String? get bgColor;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "data")
  DataData? get data;
  @override
  @JsonKey(name: "questionImage")
  String? get questionImage;
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
  _$$CreateQuestionResponseModelDataImplCopyWith<
          _$CreateQuestionResponseModelDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataData _$DataDataFromJson(Map<String, dynamic> json) {
  return _DataData.fromJson(json);
}

/// @nodoc
mixin _$DataData {
  @JsonKey(name: "question")
  String? get question => throw _privateConstructorUsedError;
  @JsonKey(name: "answer")
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDataCopyWith<DataData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDataCopyWith<$Res> {
  factory $DataDataCopyWith(DataData value, $Res Function(DataData) then) =
      _$DataDataCopyWithImpl<$Res, DataData>;
  @useResult
  $Res call(
      {@JsonKey(name: "question") String? question,
      @JsonKey(name: "answer") String? answer});
}

/// @nodoc
class _$DataDataCopyWithImpl<$Res, $Val extends DataData>
    implements $DataDataCopyWith<$Res> {
  _$DataDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDataImplCopyWith<$Res>
    implements $DataDataCopyWith<$Res> {
  factory _$$DataDataImplCopyWith(
          _$DataDataImpl value, $Res Function(_$DataDataImpl) then) =
      __$$DataDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "question") String? question,
      @JsonKey(name: "answer") String? answer});
}

/// @nodoc
class __$$DataDataImplCopyWithImpl<$Res>
    extends _$DataDataCopyWithImpl<$Res, _$DataDataImpl>
    implements _$$DataDataImplCopyWith<$Res> {
  __$$DataDataImplCopyWithImpl(
      _$DataDataImpl _value, $Res Function(_$DataDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$DataDataImpl(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDataImpl implements _DataData {
  const _$DataDataImpl(
      {@JsonKey(name: "question") this.question,
      @JsonKey(name: "answer") this.answer});

  factory _$DataDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDataImplFromJson(json);

  @override
  @JsonKey(name: "question")
  final String? question;
  @override
  @JsonKey(name: "answer")
  final String? answer;

  @override
  String toString() {
    return 'DataData(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDataImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDataImplCopyWith<_$DataDataImpl> get copyWith =>
      __$$DataDataImplCopyWithImpl<_$DataDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDataImplToJson(
      this,
    );
  }
}

abstract class _DataData implements DataData {
  const factory _DataData(
      {@JsonKey(name: "question") final String? question,
      @JsonKey(name: "answer") final String? answer}) = _$DataDataImpl;

  factory _DataData.fromJson(Map<String, dynamic> json) =
      _$DataDataImpl.fromJson;

  @override
  @JsonKey(name: "question")
  String? get question;
  @override
  @JsonKey(name: "answer")
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$DataDataImplCopyWith<_$DataDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

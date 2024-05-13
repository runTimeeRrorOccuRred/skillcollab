// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteQuestionResponseModel _$DeleteQuestionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DeleteQuestionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DeleteQuestionResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DeleteQuestionResponseModelData? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteQuestionResponseModelCopyWith<DeleteQuestionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteQuestionResponseModelCopyWith<$Res> {
  factory $DeleteQuestionResponseModelCopyWith(
          DeleteQuestionResponseModel value,
          $Res Function(DeleteQuestionResponseModel) then) =
      _$DeleteQuestionResponseModelCopyWithImpl<$Res,
          DeleteQuestionResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") DeleteQuestionResponseModelData? data});

  $DeleteQuestionResponseModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeleteQuestionResponseModelCopyWithImpl<$Res,
        $Val extends DeleteQuestionResponseModel>
    implements $DeleteQuestionResponseModelCopyWith<$Res> {
  _$DeleteQuestionResponseModelCopyWithImpl(this._value, this._then);

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
              as DeleteQuestionResponseModelData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeleteQuestionResponseModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DeleteQuestionResponseModelDataCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeleteQuestionResponseModelImplCopyWith<$Res>
    implements $DeleteQuestionResponseModelCopyWith<$Res> {
  factory _$$DeleteQuestionResponseModelImplCopyWith(
          _$DeleteQuestionResponseModelImpl value,
          $Res Function(_$DeleteQuestionResponseModelImpl) then) =
      __$$DeleteQuestionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") DeleteQuestionResponseModelData? data});

  @override
  $DeleteQuestionResponseModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DeleteQuestionResponseModelImplCopyWithImpl<$Res>
    extends _$DeleteQuestionResponseModelCopyWithImpl<$Res,
        _$DeleteQuestionResponseModelImpl>
    implements _$$DeleteQuestionResponseModelImplCopyWith<$Res> {
  __$$DeleteQuestionResponseModelImplCopyWithImpl(
      _$DeleteQuestionResponseModelImpl _value,
      $Res Function(_$DeleteQuestionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DeleteQuestionResponseModelImpl(
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
              as DeleteQuestionResponseModelData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteQuestionResponseModelImpl
    implements _DeleteQuestionResponseModel {
  const _$DeleteQuestionResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$DeleteQuestionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteQuestionResponseModelImplFromJson(json);

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
  final DeleteQuestionResponseModelData? data;

  @override
  String toString() {
    return 'DeleteQuestionResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteQuestionResponseModelImpl &&
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
  _$$DeleteQuestionResponseModelImplCopyWith<_$DeleteQuestionResponseModelImpl>
      get copyWith => __$$DeleteQuestionResponseModelImplCopyWithImpl<
          _$DeleteQuestionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteQuestionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DeleteQuestionResponseModel
    implements DeleteQuestionResponseModel {
  const factory _DeleteQuestionResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final DeleteQuestionResponseModelData? data}) =
      _$DeleteQuestionResponseModelImpl;

  factory _DeleteQuestionResponseModel.fromJson(Map<String, dynamic> json) =
      _$DeleteQuestionResponseModelImpl.fromJson;

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
  DeleteQuestionResponseModelData? get data;
  @override
  @JsonKey(ignore: true)
  _$$DeleteQuestionResponseModelImplCopyWith<_$DeleteQuestionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeleteQuestionResponseModelData _$DeleteQuestionResponseModelDataFromJson(
    Map<String, dynamic> json) {
  return _DeleteQuestionResponseModelData.fromJson(json);
}

/// @nodoc
mixin _$DeleteQuestionResponseModelData {
  @JsonKey(name: "data")
  DataData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "gif")
  dynamic get gif => throw _privateConstructorUsedError;
  @JsonKey(name: "videoUrl")
  dynamic get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "bgColor")
  String? get bgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  String? get privacy => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
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
  $DeleteQuestionResponseModelDataCopyWith<DeleteQuestionResponseModelData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteQuestionResponseModelDataCopyWith<$Res> {
  factory $DeleteQuestionResponseModelDataCopyWith(
          DeleteQuestionResponseModelData value,
          $Res Function(DeleteQuestionResponseModelData) then) =
      _$DeleteQuestionResponseModelDataCopyWithImpl<$Res,
          DeleteQuestionResponseModelData>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") DataData? data,
      @JsonKey(name: "gif") dynamic gif,
      @JsonKey(name: "videoUrl") dynamic videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "questionImage") String? questionImage,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeleteQuestionResponseModelDataCopyWithImpl<$Res,
        $Val extends DeleteQuestionResponseModelData>
    implements $DeleteQuestionResponseModelDataCopyWith<$Res> {
  _$DeleteQuestionResponseModelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? id = freezed,
    Object? groupId = freezed,
    Object? questionImage = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as dynamic,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$DeleteQuestionResponseModelDataImplCopyWith<$Res>
    implements $DeleteQuestionResponseModelDataCopyWith<$Res> {
  factory _$$DeleteQuestionResponseModelDataImplCopyWith(
          _$DeleteQuestionResponseModelDataImpl value,
          $Res Function(_$DeleteQuestionResponseModelDataImpl) then) =
      __$$DeleteQuestionResponseModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") DataData? data,
      @JsonKey(name: "gif") dynamic gif,
      @JsonKey(name: "videoUrl") dynamic videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "questionImage") String? questionImage,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  @override
  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DeleteQuestionResponseModelDataImplCopyWithImpl<$Res>
    extends _$DeleteQuestionResponseModelDataCopyWithImpl<$Res,
        _$DeleteQuestionResponseModelDataImpl>
    implements _$$DeleteQuestionResponseModelDataImplCopyWith<$Res> {
  __$$DeleteQuestionResponseModelDataImplCopyWithImpl(
      _$DeleteQuestionResponseModelDataImpl _value,
      $Res Function(_$DeleteQuestionResponseModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? privacy = freezed,
    Object? id = freezed,
    Object? groupId = freezed,
    Object? questionImage = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DeleteQuestionResponseModelDataImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
      gif: freezed == gif
          ? _value.gif
          : gif // ignore: cast_nullable_to_non_nullable
              as dynamic,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$DeleteQuestionResponseModelDataImpl
    implements _DeleteQuestionResponseModelData {
  const _$DeleteQuestionResponseModelDataImpl(
      {@JsonKey(name: "data") this.data,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "questionImage") this.questionImage,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$DeleteQuestionResponseModelDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeleteQuestionResponseModelDataImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final DataData? data;
  @override
  @JsonKey(name: "gif")
  final dynamic gif;
  @override
  @JsonKey(name: "videoUrl")
  final dynamic videoUrl;
  @override
  @JsonKey(name: "bgColor")
  final String? bgColor;
  @override
  @JsonKey(name: "privacy")
  final String? privacy;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "groupId")
  final String? groupId;
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
    return 'DeleteQuestionResponseModelData(data: $data, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, privacy: $privacy, id: $id, groupId: $groupId, questionImage: $questionImage, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteQuestionResponseModelDataImpl &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.gif, gif) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      data,
      const DeepCollectionEquality().hash(gif),
      const DeepCollectionEquality().hash(videoUrl),
      bgColor,
      privacy,
      id,
      groupId,
      questionImage,
      userId,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteQuestionResponseModelDataImplCopyWith<
          _$DeleteQuestionResponseModelDataImpl>
      get copyWith => __$$DeleteQuestionResponseModelDataImplCopyWithImpl<
          _$DeleteQuestionResponseModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteQuestionResponseModelDataImplToJson(
      this,
    );
  }
}

abstract class _DeleteQuestionResponseModelData
    implements DeleteQuestionResponseModelData {
  const factory _DeleteQuestionResponseModelData(
          {@JsonKey(name: "data") final DataData? data,
          @JsonKey(name: "gif") final dynamic gif,
          @JsonKey(name: "videoUrl") final dynamic videoUrl,
          @JsonKey(name: "bgColor") final String? bgColor,
          @JsonKey(name: "privacy") final String? privacy,
          @JsonKey(name: "_id") final String? id,
          @JsonKey(name: "groupId") final String? groupId,
          @JsonKey(name: "questionImage") final String? questionImage,
          @JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt}) =
      _$DeleteQuestionResponseModelDataImpl;

  factory _DeleteQuestionResponseModelData.fromJson(Map<String, dynamic> json) =
      _$DeleteQuestionResponseModelDataImpl.fromJson;

  @override
  @JsonKey(name: "data")
  DataData? get data;
  @override
  @JsonKey(name: "gif")
  dynamic get gif;
  @override
  @JsonKey(name: "videoUrl")
  dynamic get videoUrl;
  @override
  @JsonKey(name: "bgColor")
  String? get bgColor;
  @override
  @JsonKey(name: "privacy")
  String? get privacy;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "groupId")
  String? get groupId;
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
  _$$DeleteQuestionResponseModelDataImplCopyWith<
          _$DeleteQuestionResponseModelDataImpl>
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

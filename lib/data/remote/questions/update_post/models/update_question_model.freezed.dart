// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateQuestionRequestModel _$UpdateQuestionRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateQuestionRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateQuestionRequestModel {
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateQuestionRequestModelCopyWith<UpdateQuestionRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQuestionRequestModelCopyWith<$Res> {
  factory $UpdateQuestionRequestModelCopyWith(UpdateQuestionRequestModel value,
          $Res Function(UpdateQuestionRequestModel) then) =
      _$UpdateQuestionRequestModelCopyWithImpl<$Res,
          UpdateQuestionRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateQuestionRequestModelCopyWithImpl<$Res,
        $Val extends UpdateQuestionRequestModel>
    implements $UpdateQuestionRequestModelCopyWith<$Res> {
  _$UpdateQuestionRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$UpdateQuestionRequestModelImplCopyWith<$Res>
    implements $UpdateQuestionRequestModelCopyWith<$Res> {
  factory _$$UpdateQuestionRequestModelImplCopyWith(
          _$UpdateQuestionRequestModelImpl value,
          $Res Function(_$UpdateQuestionRequestModelImpl) then) =
      __$$UpdateQuestionRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateQuestionRequestModelImplCopyWithImpl<$Res>
    extends _$UpdateQuestionRequestModelCopyWithImpl<$Res,
        _$UpdateQuestionRequestModelImpl>
    implements _$$UpdateQuestionRequestModelImplCopyWith<$Res> {
  __$$UpdateQuestionRequestModelImplCopyWithImpl(
      _$UpdateQuestionRequestModelImpl _value,
      $Res Function(_$UpdateQuestionRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UpdateQuestionRequestModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateQuestionRequestModelImpl implements _UpdateQuestionRequestModel {
  const _$UpdateQuestionRequestModelImpl({@JsonKey(name: "data") this.data});

  factory _$UpdateQuestionRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateQuestionRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'UpdateQuestionRequestModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuestionRequestModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuestionRequestModelImplCopyWith<_$UpdateQuestionRequestModelImpl>
      get copyWith => __$$UpdateQuestionRequestModelImplCopyWithImpl<
          _$UpdateQuestionRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateQuestionRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateQuestionRequestModel
    implements UpdateQuestionRequestModel {
  const factory _UpdateQuestionRequestModel(
          {@JsonKey(name: "data") final Data? data}) =
      _$UpdateQuestionRequestModelImpl;

  factory _UpdateQuestionRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateQuestionRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdateQuestionRequestModelImplCopyWith<_$UpdateQuestionRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateQuestionResponseModel _$UpdateQuestionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateQuestionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateQuestionResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  UpdateQuestionResponseModelData? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateQuestionResponseModelCopyWith<UpdateQuestionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQuestionResponseModelCopyWith<$Res> {
  factory $UpdateQuestionResponseModelCopyWith(
          UpdateQuestionResponseModel value,
          $Res Function(UpdateQuestionResponseModel) then) =
      _$UpdateQuestionResponseModelCopyWithImpl<$Res,
          UpdateQuestionResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") UpdateQuestionResponseModelData? data});

  $UpdateQuestionResponseModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateQuestionResponseModelCopyWithImpl<$Res,
        $Val extends UpdateQuestionResponseModel>
    implements $UpdateQuestionResponseModelCopyWith<$Res> {
  _$UpdateQuestionResponseModelCopyWithImpl(this._value, this._then);

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
              as UpdateQuestionResponseModelData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateQuestionResponseModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UpdateQuestionResponseModelDataCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateQuestionResponseModelImplCopyWith<$Res>
    implements $UpdateQuestionResponseModelCopyWith<$Res> {
  factory _$$UpdateQuestionResponseModelImplCopyWith(
          _$UpdateQuestionResponseModelImpl value,
          $Res Function(_$UpdateQuestionResponseModelImpl) then) =
      __$$UpdateQuestionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") UpdateQuestionResponseModelData? data});

  @override
  $UpdateQuestionResponseModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateQuestionResponseModelImplCopyWithImpl<$Res>
    extends _$UpdateQuestionResponseModelCopyWithImpl<$Res,
        _$UpdateQuestionResponseModelImpl>
    implements _$$UpdateQuestionResponseModelImplCopyWith<$Res> {
  __$$UpdateQuestionResponseModelImplCopyWithImpl(
      _$UpdateQuestionResponseModelImpl _value,
      $Res Function(_$UpdateQuestionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UpdateQuestionResponseModelImpl(
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
              as UpdateQuestionResponseModelData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateQuestionResponseModelImpl
    implements _UpdateQuestionResponseModel {
  const _$UpdateQuestionResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$UpdateQuestionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateQuestionResponseModelImplFromJson(json);

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
  final UpdateQuestionResponseModelData? data;

  @override
  String toString() {
    return 'UpdateQuestionResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuestionResponseModelImpl &&
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
  _$$UpdateQuestionResponseModelImplCopyWith<_$UpdateQuestionResponseModelImpl>
      get copyWith => __$$UpdateQuestionResponseModelImplCopyWithImpl<
          _$UpdateQuestionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateQuestionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateQuestionResponseModel
    implements UpdateQuestionResponseModel {
  const factory _UpdateQuestionResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final UpdateQuestionResponseModelData? data}) =
      _$UpdateQuestionResponseModelImpl;

  factory _UpdateQuestionResponseModel.fromJson(Map<String, dynamic> json) =
      _$UpdateQuestionResponseModelImpl.fromJson;

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
  UpdateQuestionResponseModelData? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdateQuestionResponseModelImplCopyWith<_$UpdateQuestionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateQuestionResponseModelData _$UpdateQuestionResponseModelDataFromJson(
    Map<String, dynamic> json) {
  return _UpdateQuestionResponseModelData.fromJson(json);
}

/// @nodoc
mixin _$UpdateQuestionResponseModelData {
  @JsonKey(name: "data")
  DataData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "gif")
  dynamic get gif => throw _privateConstructorUsedError;
  @JsonKey(name: "videoUrl")
  dynamic get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "bgColor")
  dynamic get bgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
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
  $UpdateQuestionResponseModelDataCopyWith<UpdateQuestionResponseModelData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQuestionResponseModelDataCopyWith<$Res> {
  factory $UpdateQuestionResponseModelDataCopyWith(
          UpdateQuestionResponseModelData value,
          $Res Function(UpdateQuestionResponseModelData) then) =
      _$UpdateQuestionResponseModelDataCopyWithImpl<$Res,
          UpdateQuestionResponseModelData>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") DataData? data,
      @JsonKey(name: "gif") dynamic gif,
      @JsonKey(name: "videoUrl") dynamic videoUrl,
      @JsonKey(name: "bgColor") dynamic bgColor,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateQuestionResponseModelDataCopyWithImpl<$Res,
        $Val extends UpdateQuestionResponseModelData>
    implements $UpdateQuestionResponseModelDataCopyWith<$Res> {
  _$UpdateQuestionResponseModelDataCopyWithImpl(this._value, this._then);

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
    Object? id = freezed,
    Object? groupId = freezed,
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
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$UpdateQuestionResponseModelDataImplCopyWith<$Res>
    implements $UpdateQuestionResponseModelDataCopyWith<$Res> {
  factory _$$UpdateQuestionResponseModelDataImplCopyWith(
          _$UpdateQuestionResponseModelDataImpl value,
          $Res Function(_$UpdateQuestionResponseModelDataImpl) then) =
      __$$UpdateQuestionResponseModelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") DataData? data,
      @JsonKey(name: "gif") dynamic gif,
      @JsonKey(name: "videoUrl") dynamic videoUrl,
      @JsonKey(name: "bgColor") dynamic bgColor,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  @override
  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateQuestionResponseModelDataImplCopyWithImpl<$Res>
    extends _$UpdateQuestionResponseModelDataCopyWithImpl<$Res,
        _$UpdateQuestionResponseModelDataImpl>
    implements _$$UpdateQuestionResponseModelDataImplCopyWith<$Res> {
  __$$UpdateQuestionResponseModelDataImplCopyWithImpl(
      _$UpdateQuestionResponseModelDataImpl _value,
      $Res Function(_$UpdateQuestionResponseModelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? id = freezed,
    Object? groupId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UpdateQuestionResponseModelDataImpl(
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
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$UpdateQuestionResponseModelDataImpl
    implements _UpdateQuestionResponseModelData {
  const _$UpdateQuestionResponseModelDataImpl(
      {@JsonKey(name: "data") this.data,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$UpdateQuestionResponseModelDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateQuestionResponseModelDataImplFromJson(json);

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
  final dynamic bgColor;
  @override
  @JsonKey(name: "_id")
  final String? id;
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
    return 'UpdateQuestionResponseModelData(data: $data, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, id: $id, groupId: $groupId, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuestionResponseModelDataImpl &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.gif, gif) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
            const DeepCollectionEquality().equals(other.bgColor, bgColor) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
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
      const DeepCollectionEquality().hash(bgColor),
      id,
      groupId,
      userId,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuestionResponseModelDataImplCopyWith<
          _$UpdateQuestionResponseModelDataImpl>
      get copyWith => __$$UpdateQuestionResponseModelDataImplCopyWithImpl<
          _$UpdateQuestionResponseModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateQuestionResponseModelDataImplToJson(
      this,
    );
  }
}

abstract class _UpdateQuestionResponseModelData
    implements UpdateQuestionResponseModelData {
  const factory _UpdateQuestionResponseModelData(
          {@JsonKey(name: "data") final DataData? data,
          @JsonKey(name: "gif") final dynamic gif,
          @JsonKey(name: "videoUrl") final dynamic videoUrl,
          @JsonKey(name: "bgColor") final dynamic bgColor,
          @JsonKey(name: "_id") final String? id,
          @JsonKey(name: "groupId") final String? groupId,
          @JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt}) =
      _$UpdateQuestionResponseModelDataImpl;

  factory _UpdateQuestionResponseModelData.fromJson(Map<String, dynamic> json) =
      _$UpdateQuestionResponseModelDataImpl.fromJson;

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
  dynamic get bgColor;
  @override
  @JsonKey(name: "_id")
  String? get id;
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
  _$$UpdateQuestionResponseModelDataImplCopyWith<
          _$UpdateQuestionResponseModelDataImpl>
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

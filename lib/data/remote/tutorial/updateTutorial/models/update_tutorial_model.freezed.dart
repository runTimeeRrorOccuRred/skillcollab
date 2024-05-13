// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_tutorial_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTutorialRequestModel _$UpdateTutorialRequestModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateTutorialRequestModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateTutorialRequestModel {
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;
  String? get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "tutorialImage")
  String? get tutorialImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTutorialRequestModelCopyWith<UpdateTutorialRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTutorialRequestModelCopyWith<$Res> {
  factory $UpdateTutorialRequestModelCopyWith(UpdateTutorialRequestModel value,
          $Res Function(UpdateTutorialRequestModel) then) =
      _$UpdateTutorialRequestModelCopyWithImpl<$Res,
          UpdateTutorialRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") Data? data,
      String? videoUrl,
      @JsonKey(name: "tutorialImage") String? tutorialImage});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateTutorialRequestModelCopyWithImpl<$Res,
        $Val extends UpdateTutorialRequestModel>
    implements $UpdateTutorialRequestModelCopyWith<$Res> {
  _$UpdateTutorialRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? videoUrl = freezed,
    Object? tutorialImage = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialImage: freezed == tutorialImage
          ? _value.tutorialImage
          : tutorialImage // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UpdateTutorialRequestModelImplCopyWith<$Res>
    implements $UpdateTutorialRequestModelCopyWith<$Res> {
  factory _$$UpdateTutorialRequestModelImplCopyWith(
          _$UpdateTutorialRequestModelImpl value,
          $Res Function(_$UpdateTutorialRequestModelImpl) then) =
      __$$UpdateTutorialRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") Data? data,
      String? videoUrl,
      @JsonKey(name: "tutorialImage") String? tutorialImage});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateTutorialRequestModelImplCopyWithImpl<$Res>
    extends _$UpdateTutorialRequestModelCopyWithImpl<$Res,
        _$UpdateTutorialRequestModelImpl>
    implements _$$UpdateTutorialRequestModelImplCopyWith<$Res> {
  __$$UpdateTutorialRequestModelImplCopyWithImpl(
      _$UpdateTutorialRequestModelImpl _value,
      $Res Function(_$UpdateTutorialRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? videoUrl = freezed,
    Object? tutorialImage = freezed,
  }) {
    return _then(_$UpdateTutorialRequestModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorialImage: freezed == tutorialImage
          ? _value.tutorialImage
          : tutorialImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTutorialRequestModelImpl implements _UpdateTutorialRequestModel {
  const _$UpdateTutorialRequestModelImpl(
      {@JsonKey(name: "data") this.data,
      this.videoUrl,
      @JsonKey(name: "tutorialImage") this.tutorialImage});

  factory _$UpdateTutorialRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateTutorialRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final Data? data;
  @override
  final String? videoUrl;
  @override
  @JsonKey(name: "tutorialImage")
  final String? tutorialImage;

  @override
  String toString() {
    return 'UpdateTutorialRequestModel(data: $data, videoUrl: $videoUrl, tutorialImage: $tutorialImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTutorialRequestModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.tutorialImage, tutorialImage) ||
                other.tutorialImage == tutorialImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, videoUrl, tutorialImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTutorialRequestModelImplCopyWith<_$UpdateTutorialRequestModelImpl>
      get copyWith => __$$UpdateTutorialRequestModelImplCopyWithImpl<
          _$UpdateTutorialRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTutorialRequestModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateTutorialRequestModel
    implements UpdateTutorialRequestModel {
  const factory _UpdateTutorialRequestModel(
          {@JsonKey(name: "data") final Data? data,
          final String? videoUrl,
          @JsonKey(name: "tutorialImage") final String? tutorialImage}) =
      _$UpdateTutorialRequestModelImpl;

  factory _UpdateTutorialRequestModel.fromJson(Map<String, dynamic> json) =
      _$UpdateTutorialRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  String? get videoUrl;
  @override
  @JsonKey(name: "tutorialImage")
  String? get tutorialImage;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTutorialRequestModelImplCopyWith<_$UpdateTutorialRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  String? get desc => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "desc") String? desc});
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
    Object? title = freezed,
    Object? desc = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "desc") String? desc});
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
    Object? title = freezed,
    Object? desc = freezed,
  }) {
    return _then(_$DataImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "title") this.title, @JsonKey(name: "desc") this.desc});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "desc")
  final String? desc;

  @override
  String toString() {
    return 'Data(title: $title, desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, desc);

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
      {@JsonKey(name: "title") final String? title,
      @JsonKey(name: "desc") final String? desc}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "desc")
  String? get desc;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTutorialResponseModel _$UpdateTutorialResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UpdateTutorialResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateTutorialResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  UpdateTutorialResponseModelData? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTutorialResponseModelCopyWith<UpdateTutorialResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTutorialResponseModelCopyWith<$Res> {
  factory $UpdateTutorialResponseModelCopyWith(
          UpdateTutorialResponseModel value,
          $Res Function(UpdateTutorialResponseModel) then) =
      _$UpdateTutorialResponseModelCopyWithImpl<$Res,
          UpdateTutorialResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") UpdateTutorialResponseModelData? data});

  $UpdateTutorialResponseModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateTutorialResponseModelCopyWithImpl<$Res,
        $Val extends UpdateTutorialResponseModel>
    implements $UpdateTutorialResponseModelCopyWith<$Res> {
  _$UpdateTutorialResponseModelCopyWithImpl(this._value, this._then);

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
              as UpdateTutorialResponseModelData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateTutorialResponseModelDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UpdateTutorialResponseModelDataCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateTutorialResponseModelImplCopyWith<$Res>
    implements $UpdateTutorialResponseModelCopyWith<$Res> {
  factory _$$UpdateTutorialResponseModelImplCopyWith(
          _$UpdateTutorialResponseModelImpl value,
          $Res Function(_$UpdateTutorialResponseModelImpl) then) =
      __$$UpdateTutorialResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") UpdateTutorialResponseModelData? data});

  @override
  $UpdateTutorialResponseModelDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateTutorialResponseModelImplCopyWithImpl<$Res>
    extends _$UpdateTutorialResponseModelCopyWithImpl<$Res,
        _$UpdateTutorialResponseModelImpl>
    implements _$$UpdateTutorialResponseModelImplCopyWith<$Res> {
  __$$UpdateTutorialResponseModelImplCopyWithImpl(
      _$UpdateTutorialResponseModelImpl _value,
      $Res Function(_$UpdateTutorialResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UpdateTutorialResponseModelImpl(
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
              as UpdateTutorialResponseModelData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTutorialResponseModelImpl
    implements _UpdateTutorialResponseModel {
  const _$UpdateTutorialResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$UpdateTutorialResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateTutorialResponseModelImplFromJson(json);

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
  final UpdateTutorialResponseModelData? data;

  @override
  String toString() {
    return 'UpdateTutorialResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTutorialResponseModelImpl &&
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
  _$$UpdateTutorialResponseModelImplCopyWith<_$UpdateTutorialResponseModelImpl>
      get copyWith => __$$UpdateTutorialResponseModelImplCopyWithImpl<
          _$UpdateTutorialResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTutorialResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateTutorialResponseModel
    implements UpdateTutorialResponseModel {
  const factory _UpdateTutorialResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final UpdateTutorialResponseModelData? data}) =
      _$UpdateTutorialResponseModelImpl;

  factory _UpdateTutorialResponseModel.fromJson(Map<String, dynamic> json) =
      _$UpdateTutorialResponseModelImpl.fromJson;

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
  UpdateTutorialResponseModelData? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTutorialResponseModelImplCopyWith<_$UpdateTutorialResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateTutorialResponseModelData _$UpdateTutorialResponseModelDataFromJson(
    Map<String, dynamic> json) {
  return _UpdateTutorialResponseModelData.fromJson(json);
}

/// @nodoc
mixin _$UpdateTutorialResponseModelData {
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
  @JsonKey(name: "tutorialImage")
  String? get tutorialImage => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTutorialResponseModelDataCopyWith<UpdateTutorialResponseModelData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTutorialResponseModelDataCopyWith<$Res> {
  factory $UpdateTutorialResponseModelDataCopyWith(
          UpdateTutorialResponseModelData value,
          $Res Function(UpdateTutorialResponseModelData) then) =
      _$UpdateTutorialResponseModelDataCopyWithImpl<$Res,
          UpdateTutorialResponseModelData>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") DataData? data,
      @JsonKey(name: "gif") dynamic gif,
      @JsonKey(name: "videoUrl") dynamic videoUrl,
      @JsonKey(name: "bgColor") String? bgColor,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "_id") String? id,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "tutorialImage") String? tutorialImage,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateTutorialResponseModelDataCopyWithImpl<$Res,
        $Val extends UpdateTutorialResponseModelData>
    implements $UpdateTutorialResponseModelDataCopyWith<$Res> {
  _$UpdateTutorialResponseModelDataCopyWithImpl(this._value, this._then);

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
    Object? tutorialImage = freezed,
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
      tutorialImage: freezed == tutorialImage
          ? _value.tutorialImage
          : tutorialImage // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UpdateTutorialResponseModelDataImplCopyWith<$Res>
    implements $UpdateTutorialResponseModelDataCopyWith<$Res> {
  factory _$$UpdateTutorialResponseModelDataImplCopyWith(
          _$UpdateTutorialResponseModelDataImpl value,
          $Res Function(_$UpdateTutorialResponseModelDataImpl) then) =
      __$$UpdateTutorialResponseModelDataImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "tutorialImage") String? tutorialImage,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});

  @override
  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateTutorialResponseModelDataImplCopyWithImpl<$Res>
    extends _$UpdateTutorialResponseModelDataCopyWithImpl<$Res,
        _$UpdateTutorialResponseModelDataImpl>
    implements _$$UpdateTutorialResponseModelDataImplCopyWith<$Res> {
  __$$UpdateTutorialResponseModelDataImplCopyWithImpl(
      _$UpdateTutorialResponseModelDataImpl _value,
      $Res Function(_$UpdateTutorialResponseModelDataImpl) _then)
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
    Object? tutorialImage = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UpdateTutorialResponseModelDataImpl(
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
      tutorialImage: freezed == tutorialImage
          ? _value.tutorialImage
          : tutorialImage // ignore: cast_nullable_to_non_nullable
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
class _$UpdateTutorialResponseModelDataImpl
    implements _UpdateTutorialResponseModelData {
  const _$UpdateTutorialResponseModelDataImpl(
      {@JsonKey(name: "data") this.data,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "_id") this.id,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "tutorialImage") this.tutorialImage,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt});

  factory _$UpdateTutorialResponseModelDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateTutorialResponseModelDataImplFromJson(json);

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
  @JsonKey(name: "tutorialImage")
  final String? tutorialImage;
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
    return 'UpdateTutorialResponseModelData(data: $data, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, privacy: $privacy, id: $id, groupId: $groupId, tutorialImage: $tutorialImage, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTutorialResponseModelDataImpl &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.gif, gif) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.tutorialImage, tutorialImage) ||
                other.tutorialImage == tutorialImage) &&
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
      tutorialImage,
      userId,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTutorialResponseModelDataImplCopyWith<
          _$UpdateTutorialResponseModelDataImpl>
      get copyWith => __$$UpdateTutorialResponseModelDataImplCopyWithImpl<
          _$UpdateTutorialResponseModelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTutorialResponseModelDataImplToJson(
      this,
    );
  }
}

abstract class _UpdateTutorialResponseModelData
    implements UpdateTutorialResponseModelData {
  const factory _UpdateTutorialResponseModelData(
          {@JsonKey(name: "data") final DataData? data,
          @JsonKey(name: "gif") final dynamic gif,
          @JsonKey(name: "videoUrl") final dynamic videoUrl,
          @JsonKey(name: "bgColor") final String? bgColor,
          @JsonKey(name: "privacy") final String? privacy,
          @JsonKey(name: "_id") final String? id,
          @JsonKey(name: "groupId") final String? groupId,
          @JsonKey(name: "tutorialImage") final String? tutorialImage,
          @JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt}) =
      _$UpdateTutorialResponseModelDataImpl;

  factory _UpdateTutorialResponseModelData.fromJson(Map<String, dynamic> json) =
      _$UpdateTutorialResponseModelDataImpl.fromJson;

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
  @JsonKey(name: "tutorialImage")
  String? get tutorialImage;
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
  _$$UpdateTutorialResponseModelDataImplCopyWith<
          _$UpdateTutorialResponseModelDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataData _$DataDataFromJson(Map<String, dynamic> json) {
  return _DataData.fromJson(json);
}

/// @nodoc
mixin _$DataData {
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;

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
  $Res call({@JsonKey(name: "title") String? title});
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
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
  $Res call({@JsonKey(name: "title") String? title});
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
    Object? title = freezed,
  }) {
    return _then(_$DataDataImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDataImpl implements _DataData {
  const _$DataDataImpl({@JsonKey(name: "title") this.title});

  factory _$DataDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDataImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String? title;

  @override
  String toString() {
    return 'DataData(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDataImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

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
  const factory _DataData({@JsonKey(name: "title") final String? title}) =
      _$DataDataImpl;

  factory _DataData.fromJson(Map<String, dynamic> json) =
      _$DataDataImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$DataDataImplCopyWith<_$DataDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

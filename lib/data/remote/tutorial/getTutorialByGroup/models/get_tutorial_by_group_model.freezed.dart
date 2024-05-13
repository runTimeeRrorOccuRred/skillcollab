// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_tutorial_by_group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTutorialResponseModel _$GetTutorialResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetTutorialResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetTutorialResponseModel {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "isSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<TutorialData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTutorialResponseModelCopyWith<GetTutorialResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTutorialResponseModelCopyWith<$Res> {
  factory $GetTutorialResponseModelCopyWith(GetTutorialResponseModel value,
          $Res Function(GetTutorialResponseModel) then) =
      _$GetTutorialResponseModelCopyWithImpl<$Res, GetTutorialResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<TutorialData>? data});
}

/// @nodoc
class _$GetTutorialResponseModelCopyWithImpl<$Res,
        $Val extends GetTutorialResponseModel>
    implements $GetTutorialResponseModelCopyWith<$Res> {
  _$GetTutorialResponseModelCopyWithImpl(this._value, this._then);

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
              as List<TutorialData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTutorialResponseModelImplCopyWith<$Res>
    implements $GetTutorialResponseModelCopyWith<$Res> {
  factory _$$GetTutorialResponseModelImplCopyWith(
          _$GetTutorialResponseModelImpl value,
          $Res Function(_$GetTutorialResponseModelImpl) then) =
      __$$GetTutorialResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<TutorialData>? data});
}

/// @nodoc
class __$$GetTutorialResponseModelImplCopyWithImpl<$Res>
    extends _$GetTutorialResponseModelCopyWithImpl<$Res,
        _$GetTutorialResponseModelImpl>
    implements _$$GetTutorialResponseModelImplCopyWith<$Res> {
  __$$GetTutorialResponseModelImplCopyWithImpl(
      _$GetTutorialResponseModelImpl _value,
      $Res Function(_$GetTutorialResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetTutorialResponseModelImpl(
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
              as List<TutorialData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTutorialResponseModelImpl implements _GetTutorialResponseModel {
  const _$GetTutorialResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<TutorialData>? data})
      : _data = data;

  factory _$GetTutorialResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTutorialResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "isSuccess")
  final bool? isSuccess;
  final List<TutorialData>? _data;
  @override
  @JsonKey(name: "data")
  List<TutorialData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetTutorialResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTutorialResponseModelImpl &&
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
  _$$GetTutorialResponseModelImplCopyWith<_$GetTutorialResponseModelImpl>
      get copyWith => __$$GetTutorialResponseModelImplCopyWithImpl<
          _$GetTutorialResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTutorialResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetTutorialResponseModel implements GetTutorialResponseModel {
  const factory _GetTutorialResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<TutorialData>? data}) =
      _$GetTutorialResponseModelImpl;

  factory _GetTutorialResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetTutorialResponseModelImpl.fromJson;

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
  List<TutorialData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetTutorialResponseModelImplCopyWith<_$GetTutorialResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TutorialData _$TutorialDataFromJson(Map<String, dynamic> json) {
  return _TutorialData.fromJson(json);
}

/// @nodoc
mixin _$TutorialData {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "gif")
  dynamic get gif => throw _privateConstructorUsedError;
  @JsonKey(name: "videoUrl")
  dynamic get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "bgColor")
  dynamic get bgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "groupId")
  String? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "tutorialImage")
  String? get tutorialImage => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  UserId? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "groupDetails")
  GroupDetails? get groupDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "commentCount")
  int? get commentCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "likeCounts")
  int? get likeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: "disLikeCounts")
  int? get dislikeCounts => throw _privateConstructorUsedError;
  LikeDislike? get likeDislike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorialDataCopyWith<TutorialData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorialDataCopyWith<$Res> {
  factory $TutorialDataCopyWith(
          TutorialData value, $Res Function(TutorialData) then) =
      _$TutorialDataCopyWithImpl<$Res, TutorialData>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "gif") dynamic gif,
      @JsonKey(name: "videoUrl") dynamic videoUrl,
      @JsonKey(name: "bgColor") dynamic bgColor,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "tutorialImage") String? tutorialImage,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "groupDetails") GroupDetails? groupDetails,
      @JsonKey(name: "commentCount") int? commentCounts,
      @JsonKey(name: "likeCounts") int? likeCounts,
      @JsonKey(name: "disLikeCounts") int? dislikeCounts,
      LikeDislike? likeDislike});

  $DataCopyWith<$Res>? get data;
  $UserIdCopyWith<$Res>? get userId;
  $GroupDetailsCopyWith<$Res>? get groupDetails;
  $LikeDislikeCopyWith<$Res>? get likeDislike;
}

/// @nodoc
class _$TutorialDataCopyWithImpl<$Res, $Val extends TutorialData>
    implements $TutorialDataCopyWith<$Res> {
  _$TutorialDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? groupId = freezed,
    Object? data = freezed,
    Object? tutorialImage = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? groupDetails = freezed,
    Object? commentCounts = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
    Object? likeDislike = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      tutorialImage: freezed == tutorialImage
          ? _value.tutorialImage
          : tutorialImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      groupDetails: freezed == groupDetails
          ? _value.groupDetails
          : groupDetails // ignore: cast_nullable_to_non_nullable
              as GroupDetails?,
      commentCounts: freezed == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeDislike: freezed == likeDislike
          ? _value.likeDislike
          : likeDislike // ignore: cast_nullable_to_non_nullable
              as LikeDislike?,
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
  $GroupDetailsCopyWith<$Res>? get groupDetails {
    if (_value.groupDetails == null) {
      return null;
    }

    return $GroupDetailsCopyWith<$Res>(_value.groupDetails!, (value) {
      return _then(_value.copyWith(groupDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LikeDislikeCopyWith<$Res>? get likeDislike {
    if (_value.likeDislike == null) {
      return null;
    }

    return $LikeDislikeCopyWith<$Res>(_value.likeDislike!, (value) {
      return _then(_value.copyWith(likeDislike: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TutorialDataImplCopyWith<$Res>
    implements $TutorialDataCopyWith<$Res> {
  factory _$$TutorialDataImplCopyWith(
          _$TutorialDataImpl value, $Res Function(_$TutorialDataImpl) then) =
      __$$TutorialDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "gif") dynamic gif,
      @JsonKey(name: "videoUrl") dynamic videoUrl,
      @JsonKey(name: "bgColor") dynamic bgColor,
      @JsonKey(name: "groupId") String? groupId,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "tutorialImage") String? tutorialImage,
      @JsonKey(name: "userId") UserId? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "groupDetails") GroupDetails? groupDetails,
      @JsonKey(name: "commentCount") int? commentCounts,
      @JsonKey(name: "likeCounts") int? likeCounts,
      @JsonKey(name: "disLikeCounts") int? dislikeCounts,
      LikeDislike? likeDislike});

  @override
  $DataCopyWith<$Res>? get data;
  @override
  $UserIdCopyWith<$Res>? get userId;
  @override
  $GroupDetailsCopyWith<$Res>? get groupDetails;
  @override
  $LikeDislikeCopyWith<$Res>? get likeDislike;
}

/// @nodoc
class __$$TutorialDataImplCopyWithImpl<$Res>
    extends _$TutorialDataCopyWithImpl<$Res, _$TutorialDataImpl>
    implements _$$TutorialDataImplCopyWith<$Res> {
  __$$TutorialDataImplCopyWithImpl(
      _$TutorialDataImpl _value, $Res Function(_$TutorialDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? gif = freezed,
    Object? videoUrl = freezed,
    Object? bgColor = freezed,
    Object? groupId = freezed,
    Object? data = freezed,
    Object? tutorialImage = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? groupDetails = freezed,
    Object? commentCounts = freezed,
    Object? likeCounts = freezed,
    Object? dislikeCounts = freezed,
    Object? likeDislike = freezed,
  }) {
    return _then(_$TutorialDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      tutorialImage: freezed == tutorialImage
          ? _value.tutorialImage
          : tutorialImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserId?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      groupDetails: freezed == groupDetails
          ? _value.groupDetails
          : groupDetails // ignore: cast_nullable_to_non_nullable
              as GroupDetails?,
      commentCounts: freezed == commentCounts
          ? _value.commentCounts
          : commentCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCounts: freezed == likeCounts
          ? _value.likeCounts
          : likeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      dislikeCounts: freezed == dislikeCounts
          ? _value.dislikeCounts
          : dislikeCounts // ignore: cast_nullable_to_non_nullable
              as int?,
      likeDislike: freezed == likeDislike
          ? _value.likeDislike
          : likeDislike // ignore: cast_nullable_to_non_nullable
              as LikeDislike?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TutorialDataImpl implements _TutorialData {
  const _$TutorialDataImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "gif") this.gif,
      @JsonKey(name: "videoUrl") this.videoUrl,
      @JsonKey(name: "bgColor") this.bgColor,
      @JsonKey(name: "groupId") this.groupId,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "tutorialImage") this.tutorialImage,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "groupDetails") this.groupDetails,
      @JsonKey(name: "commentCount") this.commentCounts,
      @JsonKey(name: "likeCounts") this.likeCounts,
      @JsonKey(name: "disLikeCounts") this.dislikeCounts,
      this.likeDislike});

  factory _$TutorialDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TutorialDataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
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
  @JsonKey(name: "groupId")
  final String? groupId;
  @override
  @JsonKey(name: "data")
  final Data? data;
  @override
  @JsonKey(name: "tutorialImage")
  final String? tutorialImage;
  @override
  @JsonKey(name: "userId")
  final UserId? userId;
  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "groupDetails")
  final GroupDetails? groupDetails;
  @override
  @JsonKey(name: "commentCount")
  final int? commentCounts;
  @override
  @JsonKey(name: "likeCounts")
  final int? likeCounts;
  @override
  @JsonKey(name: "disLikeCounts")
  final int? dislikeCounts;
  @override
  final LikeDislike? likeDislike;

  @override
  String toString() {
    return 'TutorialData(id: $id, gif: $gif, videoUrl: $videoUrl, bgColor: $bgColor, groupId: $groupId, data: $data, tutorialImage: $tutorialImage, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt, groupDetails: $groupDetails, commentCounts: $commentCounts, likeCounts: $likeCounts, dislikeCounts: $dislikeCounts, likeDislike: $likeDislike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TutorialDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.gif, gif) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
            const DeepCollectionEquality().equals(other.bgColor, bgColor) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.tutorialImage, tutorialImage) ||
                other.tutorialImage == tutorialImage) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.groupDetails, groupDetails) ||
                other.groupDetails == groupDetails) &&
            (identical(other.commentCounts, commentCounts) ||
                other.commentCounts == commentCounts) &&
            (identical(other.likeCounts, likeCounts) ||
                other.likeCounts == likeCounts) &&
            (identical(other.dislikeCounts, dislikeCounts) ||
                other.dislikeCounts == dislikeCounts) &&
            (identical(other.likeDislike, likeDislike) ||
                other.likeDislike == likeDislike));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(gif),
      const DeepCollectionEquality().hash(videoUrl),
      const DeepCollectionEquality().hash(bgColor),
      groupId,
      data,
      tutorialImage,
      userId,
      createdAt,
      updatedAt,
      groupDetails,
      commentCounts,
      likeCounts,
      dislikeCounts,
      likeDislike);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorialDataImplCopyWith<_$TutorialDataImpl> get copyWith =>
      __$$TutorialDataImplCopyWithImpl<_$TutorialDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TutorialDataImplToJson(
      this,
    );
  }
}

abstract class _TutorialData implements TutorialData {
  const factory _TutorialData(
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "gif") final dynamic gif,
      @JsonKey(name: "videoUrl") final dynamic videoUrl,
      @JsonKey(name: "bgColor") final dynamic bgColor,
      @JsonKey(name: "groupId") final String? groupId,
      @JsonKey(name: "data") final Data? data,
      @JsonKey(name: "tutorialImage") final String? tutorialImage,
      @JsonKey(name: "userId") final UserId? userId,
      @JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "groupDetails") final GroupDetails? groupDetails,
      @JsonKey(name: "commentCount") final int? commentCounts,
      @JsonKey(name: "likeCounts") final int? likeCounts,
      @JsonKey(name: "disLikeCounts") final int? dislikeCounts,
      final LikeDislike? likeDislike}) = _$TutorialDataImpl;

  factory _TutorialData.fromJson(Map<String, dynamic> json) =
      _$TutorialDataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
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
  @JsonKey(name: "groupId")
  String? get groupId;
  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(name: "tutorialImage")
  String? get tutorialImage;
  @override
  @JsonKey(name: "userId")
  UserId? get userId;
  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "groupDetails")
  GroupDetails? get groupDetails;
  @override
  @JsonKey(name: "commentCount")
  int? get commentCounts;
  @override
  @JsonKey(name: "likeCounts")
  int? get likeCounts;
  @override
  @JsonKey(name: "disLikeCounts")
  int? get dislikeCounts;
  @override
  LikeDislike? get likeDislike;
  @override
  @JsonKey(ignore: true)
  _$$TutorialDataImplCopyWith<_$TutorialDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
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

LikeDislike _$LikeDislikeFromJson(Map<String, dynamic> json) {
  return _LikeDislike.fromJson(json);
}

/// @nodoc
mixin _$LikeDislike {
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
  $LikeDislikeCopyWith<LikeDislike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeDislikeCopyWith<$Res> {
  factory $LikeDislikeCopyWith(
          LikeDislike value, $Res Function(LikeDislike) then) =
      _$LikeDislikeCopyWithImpl<$Res, LikeDislike>;
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
class _$LikeDislikeCopyWithImpl<$Res, $Val extends LikeDislike>
    implements $LikeDislikeCopyWith<$Res> {
  _$LikeDislikeCopyWithImpl(this._value, this._then);

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
abstract class _$$LikeDislikeImplCopyWith<$Res>
    implements $LikeDislikeCopyWith<$Res> {
  factory _$$LikeDislikeImplCopyWith(
          _$LikeDislikeImpl value, $Res Function(_$LikeDislikeImpl) then) =
      __$$LikeDislikeImplCopyWithImpl<$Res>;
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
class __$$LikeDislikeImplCopyWithImpl<$Res>
    extends _$LikeDislikeCopyWithImpl<$Res, _$LikeDislikeImpl>
    implements _$$LikeDislikeImplCopyWith<$Res> {
  __$$LikeDislikeImplCopyWithImpl(
      _$LikeDislikeImpl _value, $Res Function(_$LikeDislikeImpl) _then)
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
    return _then(_$LikeDislikeImpl(
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
class _$LikeDislikeImpl implements _LikeDislike {
  const _$LikeDislikeImpl(
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

  factory _$LikeDislikeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeDislikeImplFromJson(json);

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
    return 'LikeDislike(postId: $postId, tutorialId: $tutorialId, questionId: $questionId, isLike: $isLike, isDislike: $isDislike, id: $id, userId: $userId, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeDislikeImpl &&
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
  _$$LikeDislikeImplCopyWith<_$LikeDislikeImpl> get copyWith =>
      __$$LikeDislikeImplCopyWithImpl<_$LikeDislikeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeDislikeImplToJson(
      this,
    );
  }
}

abstract class _LikeDislike implements LikeDislike {
  const factory _LikeDislike(
      {final String? postId,
      final String? tutorialId,
      final String? questionId,
      final bool? isLike,
      final bool? isDislike,
      @JsonKey(name: "_id") final String? id,
      final String? userId,
      final String? type,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$LikeDislikeImpl;

  factory _LikeDislike.fromJson(Map<String, dynamic> json) =
      _$LikeDislikeImpl.fromJson;

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
  _$$LikeDislikeImplCopyWith<_$LikeDislikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GroupDetails _$GroupDetailsFromJson(Map<String, dynamic> json) {
  return _GroupDetails.fromJson(json);
}

/// @nodoc
mixin _$GroupDetails {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
  @JsonKey(name: "privacy")
  String? get privacy => throw _privateConstructorUsedError;
  @JsonKey(name: "groupPhoto")
  String? get groupPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupDetailsCopyWith<GroupDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupDetailsCopyWith<$Res> {
  factory $GroupDetailsCopyWith(
          GroupDetails value, $Res Function(GroupDetails) then) =
      _$GroupDetailsCopyWithImpl<$Res, GroupDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class _$GroupDetailsCopyWithImpl<$Res, $Val extends GroupDetails>
    implements $GroupDetailsCopyWith<$Res> {
  _$GroupDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? interests = freezed,
    Object? privacy = freezed,
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      groupPhoto: freezed == groupPhoto
          ? _value.groupPhoto
          : groupPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc
abstract class _$$GroupDetailsImplCopyWith<$Res>
    implements $GroupDetailsCopyWith<$Res> {
  factory _$$GroupDetailsImplCopyWith(
          _$GroupDetailsImpl value, $Res Function(_$GroupDetailsImpl) then) =
      __$$GroupDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "interests") List<Interest>? interests,
      @JsonKey(name: "privacy") String? privacy,
      @JsonKey(name: "groupPhoto") String? groupPhoto,
      @JsonKey(name: "coverPhoto") String? coverPhoto,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "userId") String? userId,
      @JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt});
}

/// @nodoc
class __$$GroupDetailsImplCopyWithImpl<$Res>
    extends _$GroupDetailsCopyWithImpl<$Res, _$GroupDetailsImpl>
    implements _$$GroupDetailsImplCopyWith<$Res> {
  __$$GroupDetailsImplCopyWithImpl(
      _$GroupDetailsImpl _value, $Res Function(_$GroupDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? interests = freezed,
    Object? privacy = freezed,
    Object? groupPhoto = freezed,
    Object? coverPhoto = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GroupDetailsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<Interest>?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      groupPhoto: freezed == groupPhoto
          ? _value.groupPhoto
          : groupPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      coverPhoto: freezed == coverPhoto
          ? _value.coverPhoto
          : coverPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
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
class _$GroupDetailsImpl implements _GroupDetails {
  const _$GroupDetailsImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "interests") final List<Interest>? interests,
      @JsonKey(name: "privacy") this.privacy,
      @JsonKey(name: "groupPhoto") this.groupPhoto,
      @JsonKey(name: "coverPhoto") this.coverPhoto,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "userId") this.userId,
      @JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt})
      : _interests = interests;

  factory _$GroupDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupDetailsImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
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
  @JsonKey(name: "privacy")
  final String? privacy;
  @override
  @JsonKey(name: "groupPhoto")
  final String? groupPhoto;
  @override
  @JsonKey(name: "coverPhoto")
  final String? coverPhoto;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "location")
  final String? location;
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
    return 'GroupDetails(id: $id, interests: $interests, privacy: $privacy, groupPhoto: $groupPhoto, coverPhoto: $coverPhoto, name: $name, description: $description, location: $location, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.groupPhoto, groupPhoto) ||
                other.groupPhoto == groupPhoto) &&
            (identical(other.coverPhoto, coverPhoto) ||
                other.coverPhoto == coverPhoto) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
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
      id,
      const DeepCollectionEquality().hash(_interests),
      privacy,
      groupPhoto,
      coverPhoto,
      name,
      description,
      location,
      userId,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupDetailsImplCopyWith<_$GroupDetailsImpl> get copyWith =>
      __$$GroupDetailsImplCopyWithImpl<_$GroupDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupDetailsImplToJson(
      this,
    );
  }
}

abstract class _GroupDetails implements GroupDetails {
  const factory _GroupDetails(
          {@JsonKey(name: "_id") final String? id,
          @JsonKey(name: "interests") final List<Interest>? interests,
          @JsonKey(name: "privacy") final String? privacy,
          @JsonKey(name: "groupPhoto") final String? groupPhoto,
          @JsonKey(name: "coverPhoto") final String? coverPhoto,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "location") final String? location,
          @JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "createdAt") final DateTime? createdAt,
          @JsonKey(name: "updatedAt") final DateTime? updatedAt}) =
      _$GroupDetailsImpl;

  factory _GroupDetails.fromJson(Map<String, dynamic> json) =
      _$GroupDetailsImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "interests")
  List<Interest>? get interests;
  @override
  @JsonKey(name: "privacy")
  String? get privacy;
  @override
  @JsonKey(name: "groupPhoto")
  String? get groupPhoto;
  @override
  @JsonKey(name: "coverPhoto")
  String? get coverPhoto;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "location")
  String? get location;
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
  _$$GroupDetailsImplCopyWith<_$GroupDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserId _$UserIdFromJson(Map<String, dynamic> json) {
  return _UserId.fromJson(json);
}

/// @nodoc
mixin _$UserId {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "isEmailVerified")
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<Interest>? get interests => throw _privateConstructorUsedError;
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
  @JsonKey(name: "followers")
  List<Follower>? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "expertise")
  String? get expertise => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "interests") List<Interest>? interests,
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
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "expertise") String? expertise});
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
    Object? id = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? interests = freezed,
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
    Object? followers = freezed,
    Object? expertise = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "isEmailVerified") bool? isEmailVerified,
      @JsonKey(name: "interests") List<Interest>? interests,
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
      @JsonKey(name: "profilePhoto") String? profilePhoto,
      @JsonKey(name: "followers") List<Follower>? followers,
      @JsonKey(name: "expertise") String? expertise});
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
    Object? id = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? interests = freezed,
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
    Object? followers = freezed,
    Object? expertise = freezed,
  }) {
    return _then(_$UserIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      followers: freezed == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<Follower>?,
      expertise: freezed == expertise
          ? _value.expertise
          : expertise // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserIdImpl implements _UserId {
  const _$UserIdImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "isEmailVerified") this.isEmailVerified,
      @JsonKey(name: "interests") final List<Interest>? interests,
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
      @JsonKey(name: "profilePhoto") this.profilePhoto,
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "expertise") this.expertise})
      : _interests = interests,
        _subscribers = subscribers,
        _followers = followers;

  factory _$UserIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserIdImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
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
  final List<Follower>? _followers;
  @override
  @JsonKey(name: "followers")
  List<Follower>? get followers {
    final value = _followers;
    if (value == null) return null;
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "expertise")
  final String? expertise;

  @override
  String toString() {
    return 'UserId(id: $id, role: $role, isEmailVerified: $isEmailVerified, interests: $interests, subscribers: $subscribers, firstName: $firstName, lastName: $lastName, userName: $userName, email: $email, phone: $phone, password: $password, customerId: $customerId, accountId: $accountId, createdAt: $createdAt, updatedAt: $updatedAt, accountLink: $accountLink, otp: $otp, otpExpiry: $otpExpiry, coverPhoto: $coverPhoto, description: $description, location: $location, profilePhoto: $profilePhoto, followers: $followers, expertise: $expertise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests) &&
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
                other.profilePhoto == profilePhoto) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            (identical(other.expertise, expertise) ||
                other.expertise == expertise));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        role,
        isEmailVerified,
        const DeepCollectionEquality().hash(_interests),
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
        profilePhoto,
        const DeepCollectionEquality().hash(_followers),
        expertise
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
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "role") final String? role,
      @JsonKey(name: "isEmailVerified") final bool? isEmailVerified,
      @JsonKey(name: "interests") final List<Interest>? interests,
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
      @JsonKey(name: "profilePhoto") final String? profilePhoto,
      @JsonKey(name: "followers") final List<Follower>? followers,
      @JsonKey(name: "expertise") final String? expertise}) = _$UserIdImpl;

  factory _UserId.fromJson(Map<String, dynamic> json) = _$UserIdImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
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
  @JsonKey(name: "followers")
  List<Follower>? get followers;
  @override
  @JsonKey(name: "expertise")
  String? get expertise;
  @override
  @JsonKey(ignore: true)
  _$$UserIdImplCopyWith<_$UserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetTutorialRequestModel _$GetTutorialRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetTutorialRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetTutorialRequestModel {
  @JsonKey(name: "searchKey")
  String? get searchKey => throw _privateConstructorUsedError;
  @JsonKey(name: "filter")
  String? get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTutorialRequestModelCopyWith<GetTutorialRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTutorialRequestModelCopyWith<$Res> {
  factory $GetTutorialRequestModelCopyWith(GetTutorialRequestModel value,
          $Res Function(GetTutorialRequestModel) then) =
      _$GetTutorialRequestModelCopyWithImpl<$Res, GetTutorialRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "searchKey") String? searchKey,
      @JsonKey(name: "filter") String? filter});
}

/// @nodoc
class _$GetTutorialRequestModelCopyWithImpl<$Res,
        $Val extends GetTutorialRequestModel>
    implements $GetTutorialRequestModelCopyWith<$Res> {
  _$GetTutorialRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTutorialRequestModelImplCopyWith<$Res>
    implements $GetTutorialRequestModelCopyWith<$Res> {
  factory _$$GetTutorialRequestModelImplCopyWith(
          _$GetTutorialRequestModelImpl value,
          $Res Function(_$GetTutorialRequestModelImpl) then) =
      __$$GetTutorialRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "searchKey") String? searchKey,
      @JsonKey(name: "filter") String? filter});
}

/// @nodoc
class __$$GetTutorialRequestModelImplCopyWithImpl<$Res>
    extends _$GetTutorialRequestModelCopyWithImpl<$Res,
        _$GetTutorialRequestModelImpl>
    implements _$$GetTutorialRequestModelImplCopyWith<$Res> {
  __$$GetTutorialRequestModelImplCopyWithImpl(
      _$GetTutorialRequestModelImpl _value,
      $Res Function(_$GetTutorialRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$GetTutorialRequestModelImpl(
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTutorialRequestModelImpl implements _GetTutorialRequestModel {
  const _$GetTutorialRequestModelImpl(
      {@JsonKey(name: "searchKey") this.searchKey,
      @JsonKey(name: "filter") this.filter});

  factory _$GetTutorialRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTutorialRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "searchKey")
  final String? searchKey;
  @override
  @JsonKey(name: "filter")
  final String? filter;

  @override
  String toString() {
    return 'GetTutorialRequestModel(searchKey: $searchKey, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTutorialRequestModelImpl &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, searchKey, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTutorialRequestModelImplCopyWith<_$GetTutorialRequestModelImpl>
      get copyWith => __$$GetTutorialRequestModelImplCopyWithImpl<
          _$GetTutorialRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTutorialRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetTutorialRequestModel implements GetTutorialRequestModel {
  const factory _GetTutorialRequestModel(
          {@JsonKey(name: "searchKey") final String? searchKey,
          @JsonKey(name: "filter") final String? filter}) =
      _$GetTutorialRequestModelImpl;

  factory _GetTutorialRequestModel.fromJson(Map<String, dynamic> json) =
      _$GetTutorialRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "searchKey")
  String? get searchKey;
  @override
  @JsonKey(name: "filter")
  String? get filter;
  @override
  @JsonKey(ignore: true)
  _$$GetTutorialRequestModelImplCopyWith<_$GetTutorialRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

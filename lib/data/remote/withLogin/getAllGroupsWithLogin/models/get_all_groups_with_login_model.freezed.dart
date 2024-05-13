// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_groups_with_login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllGroupsWithLoginRequestModel _$GetAllGroupsWithLoginRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetAllGroupsWithLoginRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllGroupsWithLoginRequestModel {
  String? get searchKey => throw _privateConstructorUsedError;
  String? get interests => throw _privateConstructorUsedError;
  String? get timeFilter => throw _privateConstructorUsedError;
  @JsonKey(name: "feedFilter")
  String? get feedFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllGroupsWithLoginRequestModelCopyWith<GetAllGroupsWithLoginRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllGroupsWithLoginRequestModelCopyWith<$Res> {
  factory $GetAllGroupsWithLoginRequestModelCopyWith(
          GetAllGroupsWithLoginRequestModel value,
          $Res Function(GetAllGroupsWithLoginRequestModel) then) =
      _$GetAllGroupsWithLoginRequestModelCopyWithImpl<$Res,
          GetAllGroupsWithLoginRequestModel>;
  @useResult
  $Res call(
      {String? searchKey,
      String? interests,
      String? timeFilter,
      @JsonKey(name: "feedFilter") String? feedFilter});
}

/// @nodoc
class _$GetAllGroupsWithLoginRequestModelCopyWithImpl<$Res,
        $Val extends GetAllGroupsWithLoginRequestModel>
    implements $GetAllGroupsWithLoginRequestModelCopyWith<$Res> {
  _$GetAllGroupsWithLoginRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
    Object? interests = freezed,
    Object? timeFilter = freezed,
    Object? feedFilter = freezed,
  }) {
    return _then(_value.copyWith(
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFilter: freezed == timeFilter
          ? _value.timeFilter
          : timeFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      feedFilter: freezed == feedFilter
          ? _value.feedFilter
          : feedFilter // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllGroupsWithLoginRequestModelImplCopyWith<$Res>
    implements $GetAllGroupsWithLoginRequestModelCopyWith<$Res> {
  factory _$$GetAllGroupsWithLoginRequestModelImplCopyWith(
          _$GetAllGroupsWithLoginRequestModelImpl value,
          $Res Function(_$GetAllGroupsWithLoginRequestModelImpl) then) =
      __$$GetAllGroupsWithLoginRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? searchKey,
      String? interests,
      String? timeFilter,
      @JsonKey(name: "feedFilter") String? feedFilter});
}

/// @nodoc
class __$$GetAllGroupsWithLoginRequestModelImplCopyWithImpl<$Res>
    extends _$GetAllGroupsWithLoginRequestModelCopyWithImpl<$Res,
        _$GetAllGroupsWithLoginRequestModelImpl>
    implements _$$GetAllGroupsWithLoginRequestModelImplCopyWith<$Res> {
  __$$GetAllGroupsWithLoginRequestModelImplCopyWithImpl(
      _$GetAllGroupsWithLoginRequestModelImpl _value,
      $Res Function(_$GetAllGroupsWithLoginRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = freezed,
    Object? interests = freezed,
    Object? timeFilter = freezed,
    Object? feedFilter = freezed,
  }) {
    return _then(_$GetAllGroupsWithLoginRequestModelImpl(
      searchKey: freezed == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as String?,
      timeFilter: freezed == timeFilter
          ? _value.timeFilter
          : timeFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      feedFilter: freezed == feedFilter
          ? _value.feedFilter
          : feedFilter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllGroupsWithLoginRequestModelImpl
    implements _GetAllGroupsWithLoginRequestModel {
  const _$GetAllGroupsWithLoginRequestModelImpl(
      {this.searchKey,
      this.interests,
      this.timeFilter,
      @JsonKey(name: "feedFilter") this.feedFilter});

  factory _$GetAllGroupsWithLoginRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllGroupsWithLoginRequestModelImplFromJson(json);

  @override
  final String? searchKey;
  @override
  final String? interests;
  @override
  final String? timeFilter;
  @override
  @JsonKey(name: "feedFilter")
  final String? feedFilter;

  @override
  String toString() {
    return 'GetAllGroupsWithLoginRequestModel(searchKey: $searchKey, interests: $interests, timeFilter: $timeFilter, feedFilter: $feedFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllGroupsWithLoginRequestModelImpl &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey) &&
            (identical(other.interests, interests) ||
                other.interests == interests) &&
            (identical(other.timeFilter, timeFilter) ||
                other.timeFilter == timeFilter) &&
            (identical(other.feedFilter, feedFilter) ||
                other.feedFilter == feedFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, searchKey, interests, timeFilter, feedFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllGroupsWithLoginRequestModelImplCopyWith<
          _$GetAllGroupsWithLoginRequestModelImpl>
      get copyWith => __$$GetAllGroupsWithLoginRequestModelImplCopyWithImpl<
          _$GetAllGroupsWithLoginRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllGroupsWithLoginRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllGroupsWithLoginRequestModel
    implements GetAllGroupsWithLoginRequestModel {
  const factory _GetAllGroupsWithLoginRequestModel(
          {final String? searchKey,
          final String? interests,
          final String? timeFilter,
          @JsonKey(name: "feedFilter") final String? feedFilter}) =
      _$GetAllGroupsWithLoginRequestModelImpl;

  factory _GetAllGroupsWithLoginRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAllGroupsWithLoginRequestModelImpl.fromJson;

  @override
  String? get searchKey;
  @override
  String? get interests;
  @override
  String? get timeFilter;
  @override
  @JsonKey(name: "feedFilter")
  String? get feedFilter;
  @override
  @JsonKey(ignore: true)
  _$$GetAllGroupsWithLoginRequestModelImplCopyWith<
          _$GetAllGroupsWithLoginRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetAllGroupsWithLoginResponseModel _$GetAllGroupsWithLoginResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetAllGroupsWithLoginResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAllGroupsWithLoginResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<GroupDatum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllGroupsWithLoginResponseModelCopyWith<
          GetAllGroupsWithLoginResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllGroupsWithLoginResponseModelCopyWith<$Res> {
  factory $GetAllGroupsWithLoginResponseModelCopyWith(
          GetAllGroupsWithLoginResponseModel value,
          $Res Function(GetAllGroupsWithLoginResponseModel) then) =
      _$GetAllGroupsWithLoginResponseModelCopyWithImpl<$Res,
          GetAllGroupsWithLoginResponseModel>;
  @useResult
  $Res call(
      {int? code, String? message, bool? isSuccess, List<GroupDatum>? data});
}

/// @nodoc
class _$GetAllGroupsWithLoginResponseModelCopyWithImpl<$Res,
        $Val extends GetAllGroupsWithLoginResponseModel>
    implements $GetAllGroupsWithLoginResponseModelCopyWith<$Res> {
  _$GetAllGroupsWithLoginResponseModelCopyWithImpl(this._value, this._then);

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
              as List<GroupDatum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllGroupsWithLoginResponseModelImplCopyWith<$Res>
    implements $GetAllGroupsWithLoginResponseModelCopyWith<$Res> {
  factory _$$GetAllGroupsWithLoginResponseModelImplCopyWith(
          _$GetAllGroupsWithLoginResponseModelImpl value,
          $Res Function(_$GetAllGroupsWithLoginResponseModelImpl) then) =
      __$$GetAllGroupsWithLoginResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? code, String? message, bool? isSuccess, List<GroupDatum>? data});
}

/// @nodoc
class __$$GetAllGroupsWithLoginResponseModelImplCopyWithImpl<$Res>
    extends _$GetAllGroupsWithLoginResponseModelCopyWithImpl<$Res,
        _$GetAllGroupsWithLoginResponseModelImpl>
    implements _$$GetAllGroupsWithLoginResponseModelImplCopyWith<$Res> {
  __$$GetAllGroupsWithLoginResponseModelImplCopyWithImpl(
      _$GetAllGroupsWithLoginResponseModelImpl _value,
      $Res Function(_$GetAllGroupsWithLoginResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetAllGroupsWithLoginResponseModelImpl(
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
              as List<GroupDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllGroupsWithLoginResponseModelImpl
    implements _GetAllGroupsWithLoginResponseModel {
  const _$GetAllGroupsWithLoginResponseModelImpl(
      {this.code, this.message, this.isSuccess, final List<GroupDatum>? data})
      : _data = data;

  factory _$GetAllGroupsWithLoginResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAllGroupsWithLoginResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  final List<GroupDatum>? _data;
  @override
  List<GroupDatum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllGroupsWithLoginResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllGroupsWithLoginResponseModelImpl &&
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
  _$$GetAllGroupsWithLoginResponseModelImplCopyWith<
          _$GetAllGroupsWithLoginResponseModelImpl>
      get copyWith => __$$GetAllGroupsWithLoginResponseModelImplCopyWithImpl<
          _$GetAllGroupsWithLoginResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllGroupsWithLoginResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAllGroupsWithLoginResponseModel
    implements GetAllGroupsWithLoginResponseModel {
  const factory _GetAllGroupsWithLoginResponseModel(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<GroupDatum>? data}) = _$GetAllGroupsWithLoginResponseModelImpl;

  factory _GetAllGroupsWithLoginResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAllGroupsWithLoginResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  List<GroupDatum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAllGroupsWithLoginResponseModelImplCopyWith<
          _$GetAllGroupsWithLoginResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

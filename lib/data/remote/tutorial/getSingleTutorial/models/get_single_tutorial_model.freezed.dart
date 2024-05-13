// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_single_tutorial_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetSingleTutorialResponseModel _$GetSingleTutorialResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetSingleTutorialResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetSingleTutorialResponseModel {
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
  $GetSingleTutorialResponseModelCopyWith<GetSingleTutorialResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSingleTutorialResponseModelCopyWith<$Res> {
  factory $GetSingleTutorialResponseModelCopyWith(
          GetSingleTutorialResponseModel value,
          $Res Function(GetSingleTutorialResponseModel) then) =
      _$GetSingleTutorialResponseModelCopyWithImpl<$Res,
          GetSingleTutorialResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<TutorialData>? data});
}

/// @nodoc
class _$GetSingleTutorialResponseModelCopyWithImpl<$Res,
        $Val extends GetSingleTutorialResponseModel>
    implements $GetSingleTutorialResponseModelCopyWith<$Res> {
  _$GetSingleTutorialResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetSingleTutorialResponseModelImplCopyWith<$Res>
    implements $GetSingleTutorialResponseModelCopyWith<$Res> {
  factory _$$GetSingleTutorialResponseModelImplCopyWith(
          _$GetSingleTutorialResponseModelImpl value,
          $Res Function(_$GetSingleTutorialResponseModelImpl) then) =
      __$$GetSingleTutorialResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") List<TutorialData>? data});
}

/// @nodoc
class __$$GetSingleTutorialResponseModelImplCopyWithImpl<$Res>
    extends _$GetSingleTutorialResponseModelCopyWithImpl<$Res,
        _$GetSingleTutorialResponseModelImpl>
    implements _$$GetSingleTutorialResponseModelImplCopyWith<$Res> {
  __$$GetSingleTutorialResponseModelImplCopyWithImpl(
      _$GetSingleTutorialResponseModelImpl _value,
      $Res Function(_$GetSingleTutorialResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetSingleTutorialResponseModelImpl(
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
class _$GetSingleTutorialResponseModelImpl
    implements _GetSingleTutorialResponseModel {
  const _$GetSingleTutorialResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") final List<TutorialData>? data})
      : _data = data;

  factory _$GetSingleTutorialResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetSingleTutorialResponseModelImplFromJson(json);

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
    return 'GetSingleTutorialResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSingleTutorialResponseModelImpl &&
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
  _$$GetSingleTutorialResponseModelImplCopyWith<
          _$GetSingleTutorialResponseModelImpl>
      get copyWith => __$$GetSingleTutorialResponseModelImplCopyWithImpl<
          _$GetSingleTutorialResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSingleTutorialResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetSingleTutorialResponseModel
    implements GetSingleTutorialResponseModel {
  const factory _GetSingleTutorialResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final List<TutorialData>? data}) =
      _$GetSingleTutorialResponseModelImpl;

  factory _GetSingleTutorialResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetSingleTutorialResponseModelImpl.fromJson;

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
  _$$GetSingleTutorialResponseModelImplCopyWith<
          _$GetSingleTutorialResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

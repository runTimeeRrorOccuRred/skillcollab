// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_personal_interests_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPersonalInterestRequest _$GetPersonalInterestRequestFromJson(
    Map<String, dynamic> json) {
  return _GetPersonalInterestRequest.fromJson(json);
}

/// @nodoc
mixin _$GetPersonalInterestRequest {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPersonalInterestRequestCopyWith<GetPersonalInterestRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPersonalInterestRequestCopyWith<$Res> {
  factory $GetPersonalInterestRequestCopyWith(GetPersonalInterestRequest value,
          $Res Function(GetPersonalInterestRequest) then) =
      _$GetPersonalInterestRequestCopyWithImpl<$Res,
          GetPersonalInterestRequest>;
  @useResult
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class _$GetPersonalInterestRequestCopyWithImpl<$Res,
        $Val extends GetPersonalInterestRequest>
    implements $GetPersonalInterestRequestCopyWith<$Res> {
  _$GetPersonalInterestRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPersonalInterestRequestImplCopyWith<$Res>
    implements $GetPersonalInterestRequestCopyWith<$Res> {
  factory _$$GetPersonalInterestRequestImplCopyWith(
          _$GetPersonalInterestRequestImpl value,
          $Res Function(_$GetPersonalInterestRequestImpl) then) =
      __$$GetPersonalInterestRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String? name});
}

/// @nodoc
class __$$GetPersonalInterestRequestImplCopyWithImpl<$Res>
    extends _$GetPersonalInterestRequestCopyWithImpl<$Res,
        _$GetPersonalInterestRequestImpl>
    implements _$$GetPersonalInterestRequestImplCopyWith<$Res> {
  __$$GetPersonalInterestRequestImplCopyWithImpl(
      _$GetPersonalInterestRequestImpl _value,
      $Res Function(_$GetPersonalInterestRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$GetPersonalInterestRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPersonalInterestRequestImpl implements _GetPersonalInterestRequest {
  const _$GetPersonalInterestRequestImpl({@JsonKey(name: "name") this.name});

  factory _$GetPersonalInterestRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetPersonalInterestRequestImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'GetPersonalInterestRequest(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPersonalInterestRequestImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPersonalInterestRequestImplCopyWith<_$GetPersonalInterestRequestImpl>
      get copyWith => __$$GetPersonalInterestRequestImplCopyWithImpl<
          _$GetPersonalInterestRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPersonalInterestRequestImplToJson(
      this,
    );
  }
}

abstract class _GetPersonalInterestRequest
    implements GetPersonalInterestRequest {
  const factory _GetPersonalInterestRequest(
          {@JsonKey(name: "name") final String? name}) =
      _$GetPersonalInterestRequestImpl;

  factory _GetPersonalInterestRequest.fromJson(Map<String, dynamic> json) =
      _$GetPersonalInterestRequestImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$GetPersonalInterestRequestImplCopyWith<_$GetPersonalInterestRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetPersonalInterestResponse _$GetPersonalInterestResponseFromJson(
    Map<String, dynamic> json) {
  return _GetPersonalInterestResponse.fromJson(json);
}

/// @nodoc
mixin _$GetPersonalInterestResponse {
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
  $GetPersonalInterestResponseCopyWith<GetPersonalInterestResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPersonalInterestResponseCopyWith<$Res> {
  factory $GetPersonalInterestResponseCopyWith(
          GetPersonalInterestResponse value,
          $Res Function(GetPersonalInterestResponse) then) =
      _$GetPersonalInterestResponseCopyWithImpl<$Res,
          GetPersonalInterestResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetPersonalInterestResponseCopyWithImpl<$Res,
        $Val extends GetPersonalInterestResponse>
    implements $GetPersonalInterestResponseCopyWith<$Res> {
  _$GetPersonalInterestResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$GetPersonalInterestResponseImplCopyWith<$Res>
    implements $GetPersonalInterestResponseCopyWith<$Res> {
  factory _$$GetPersonalInterestResponseImplCopyWith(
          _$GetPersonalInterestResponseImpl value,
          $Res Function(_$GetPersonalInterestResponseImpl) then) =
      __$$GetPersonalInterestResponseImplCopyWithImpl<$Res>;
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
class __$$GetPersonalInterestResponseImplCopyWithImpl<$Res>
    extends _$GetPersonalInterestResponseCopyWithImpl<$Res,
        _$GetPersonalInterestResponseImpl>
    implements _$$GetPersonalInterestResponseImplCopyWith<$Res> {
  __$$GetPersonalInterestResponseImplCopyWithImpl(
      _$GetPersonalInterestResponseImpl _value,
      $Res Function(_$GetPersonalInterestResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetPersonalInterestResponseImpl(
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
class _$GetPersonalInterestResponseImpl
    implements _GetPersonalInterestResponse {
  const _$GetPersonalInterestResponseImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$GetPersonalInterestResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetPersonalInterestResponseImplFromJson(json);

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
    return 'GetPersonalInterestResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPersonalInterestResponseImpl &&
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
  _$$GetPersonalInterestResponseImplCopyWith<_$GetPersonalInterestResponseImpl>
      get copyWith => __$$GetPersonalInterestResponseImplCopyWithImpl<
          _$GetPersonalInterestResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPersonalInterestResponseImplToJson(
      this,
    );
  }
  
  @override
  getPersonalInterest(String s) {
    // TODO: implement getPersonalInterest
    throw UnimplementedError();
  }
}

abstract class _GetPersonalInterestResponse
    implements GetPersonalInterestResponse {
  const factory _GetPersonalInterestResponse(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$GetPersonalInterestResponseImpl;

  factory _GetPersonalInterestResponse.fromJson(Map<String, dynamic> json) =
      _$GetPersonalInterestResponseImpl.fromJson;

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
  _$$GetPersonalInterestResponseImplCopyWith<_$GetPersonalInterestResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<PersonalInterest>? get interests => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "interests") List<PersonalInterest>? interests});
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
    Object? id = freezed,
    Object? interests = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<PersonalInterest>?,
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
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "interests") List<PersonalInterest>? interests});
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
    Object? id = freezed,
    Object? interests = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<PersonalInterest>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "interests") final List<PersonalInterest>? interests})
      : _interests = interests;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  final List<PersonalInterest>? _interests;
  @override
  @JsonKey(name: "interests")
  List<PersonalInterest>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(id: $id, interests: $interests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_interests));

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
      {@JsonKey(name: "_id") final String? id,
      @JsonKey(name: "interests")
      final List<PersonalInterest>? interests}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "interests")
  List<PersonalInterest>? get interests;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonalInterest _$PersonalInterestFromJson(Map<String, dynamic> json) {
  return _PersonalInterest.fromJson(json);
}

/// @nodoc
mixin _$PersonalInterest {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "interestPhoto")
  dynamic get interestPhoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalInterestCopyWith<PersonalInterest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalInterestCopyWith<$Res> {
  factory $PersonalInterestCopyWith(
          PersonalInterest value, $Res Function(PersonalInterest) then) =
      _$PersonalInterestCopyWithImpl<$Res, PersonalInterest>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "interestPhoto") dynamic interestPhoto});
}

/// @nodoc
class _$PersonalInterestCopyWithImpl<$Res, $Val extends PersonalInterest>
    implements $PersonalInterestCopyWith<$Res> {
  _$PersonalInterestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? interestPhoto = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      interestPhoto: freezed == interestPhoto
          ? _value.interestPhoto
          : interestPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonalInterestImplCopyWith<$Res>
    implements $PersonalInterestCopyWith<$Res> {
  factory _$$PersonalInterestImplCopyWith(_$PersonalInterestImpl value,
          $Res Function(_$PersonalInterestImpl) then) =
      __$$PersonalInterestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "interestPhoto") dynamic interestPhoto});
}

/// @nodoc
class __$$PersonalInterestImplCopyWithImpl<$Res>
    extends _$PersonalInterestCopyWithImpl<$Res, _$PersonalInterestImpl>
    implements _$$PersonalInterestImplCopyWith<$Res> {
  __$$PersonalInterestImplCopyWithImpl(_$PersonalInterestImpl _value,
      $Res Function(_$PersonalInterestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? interestPhoto = freezed,
  }) {
    return _then(_$PersonalInterestImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      interestPhoto: freezed == interestPhoto
          ? _value.interestPhoto
          : interestPhoto // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalInterestImpl implements _PersonalInterest {
  const _$PersonalInterestImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "interestPhoto") this.interestPhoto});

  factory _$PersonalInterestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalInterestImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "interestPhoto")
  final dynamic interestPhoto;

  @override
  String toString() {
    return 'PersonalInterest(id: $id, name: $name, interestPhoto: $interestPhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalInterestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.interestPhoto, interestPhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(interestPhoto));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalInterestImplCopyWith<_$PersonalInterestImpl> get copyWith =>
      __$$PersonalInterestImplCopyWithImpl<_$PersonalInterestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalInterestImplToJson(
      this,
    );
  }
}

abstract class _PersonalInterest implements PersonalInterest {
  const factory _PersonalInterest(
          {@JsonKey(name: "_id") final String? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "interestPhoto") final dynamic interestPhoto}) =
      _$PersonalInterestImpl;

  factory _PersonalInterest.fromJson(Map<String, dynamic> json) =
      _$PersonalInterestImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "interestPhoto")
  dynamic get interestPhoto;
  @override
  @JsonKey(ignore: true)
  _$$PersonalInterestImplCopyWith<_$PersonalInterestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

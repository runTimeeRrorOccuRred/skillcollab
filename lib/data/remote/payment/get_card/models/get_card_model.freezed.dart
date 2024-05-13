// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCardListModel _$GetCardListModelFromJson(Map<String, dynamic> json) {
  return _GetCardListModel.fromJson(json);
}

/// @nodoc
mixin _$GetCardListModel {
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
  $GetCardListModelCopyWith<GetCardListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCardListModelCopyWith<$Res> {
  factory $GetCardListModelCopyWith(
          GetCardListModel value, $Res Function(GetCardListModel) then) =
      _$GetCardListModelCopyWithImpl<$Res, GetCardListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetCardListModelCopyWithImpl<$Res, $Val extends GetCardListModel>
    implements $GetCardListModelCopyWith<$Res> {
  _$GetCardListModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetCardListModelImplCopyWith<$Res>
    implements $GetCardListModelCopyWith<$Res> {
  factory _$$GetCardListModelImplCopyWith(_$GetCardListModelImpl value,
          $Res Function(_$GetCardListModelImpl) then) =
      __$$GetCardListModelImplCopyWithImpl<$Res>;
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
class __$$GetCardListModelImplCopyWithImpl<$Res>
    extends _$GetCardListModelCopyWithImpl<$Res, _$GetCardListModelImpl>
    implements _$$GetCardListModelImplCopyWith<$Res> {
  __$$GetCardListModelImplCopyWithImpl(_$GetCardListModelImpl _value,
      $Res Function(_$GetCardListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetCardListModelImpl(
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
class _$GetCardListModelImpl implements _GetCardListModel {
  const _$GetCardListModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$GetCardListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCardListModelImplFromJson(json);

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
    return 'GetCardListModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardListModelImpl &&
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
  _$$GetCardListModelImplCopyWith<_$GetCardListModelImpl> get copyWith =>
      __$$GetCardListModelImplCopyWithImpl<_$GetCardListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCardListModelImplToJson(
      this,
    );
  }
}

abstract class _GetCardListModel implements GetCardListModel {
  const factory _GetCardListModel(
      {@JsonKey(name: "code") final int? code,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "isSuccess") final bool? isSuccess,
      @JsonKey(name: "data") final Data? data}) = _$GetCardListModelImpl;

  factory _GetCardListModel.fromJson(Map<String, dynamic> json) =
      _$GetCardListModelImpl.fromJson;

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
  _$$GetCardListModelImplCopyWith<_$GetCardListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "object")
  String? get object => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Datum>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "has_more")
  bool? get hasMore => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "object") String? object,
      @JsonKey(name: "data") List<Datum>? data,
      @JsonKey(name: "has_more") bool? hasMore,
      @JsonKey(name: "url") String? url});
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
    Object? object = freezed,
    Object? data = freezed,
    Object? hasMore = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "object") String? object,
      @JsonKey(name: "data") List<Datum>? data,
      @JsonKey(name: "has_more") bool? hasMore,
      @JsonKey(name: "url") String? url});
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
    Object? object = freezed,
    Object? data = freezed,
    Object? hasMore = freezed,
    Object? url = freezed,
  }) {
    return _then(_$DataImpl(
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      hasMore: freezed == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "object") this.object,
      @JsonKey(name: "data") final List<Datum>? data,
      @JsonKey(name: "has_more") this.hasMore,
      @JsonKey(name: "url") this.url})
      : _data = data;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "object")
  final String? object;
  final List<Datum>? _data;
  @override
  @JsonKey(name: "data")
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "has_more")
  final bool? hasMore;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'Data(object: $object, data: $data, hasMore: $hasMore, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.object, object) || other.object == object) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object,
      const DeepCollectionEquality().hash(_data), hasMore, url);

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
      {@JsonKey(name: "object") final String? object,
      @JsonKey(name: "data") final List<Datum>? data,
      @JsonKey(name: "has_more") final bool? hasMore,
      @JsonKey(name: "url") final String? url}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "object")
  String? get object;
  @override
  @JsonKey(name: "data")
  List<Datum>? get data;
  @override
  @JsonKey(name: "has_more")
  bool? get hasMore;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "object")
  String? get object => throw _privateConstructorUsedError;
  @JsonKey(name: "address_city")
  dynamic get addressCity => throw _privateConstructorUsedError;
  @JsonKey(name: "address_country")
  dynamic get addressCountry => throw _privateConstructorUsedError;
  @JsonKey(name: "address_line1")
  dynamic get addressLine1 => throw _privateConstructorUsedError;
  @JsonKey(name: "address_line1_check")
  dynamic get addressLine1Check => throw _privateConstructorUsedError;
  @JsonKey(name: "address_line2")
  dynamic get addressLine2 => throw _privateConstructorUsedError;
  @JsonKey(name: "address_state")
  dynamic get addressState => throw _privateConstructorUsedError;
  @JsonKey(name: "address_zip")
  dynamic get addressZip => throw _privateConstructorUsedError;
  @JsonKey(name: "address_zip_check")
  dynamic get addressZipCheck => throw _privateConstructorUsedError;
  @JsonKey(name: "brand")
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "customer")
  String? get customer => throw _privateConstructorUsedError;
  @JsonKey(name: "cvc_check")
  String? get cvcCheck => throw _privateConstructorUsedError;
  @JsonKey(name: "dynamic_last4")
  dynamic get dynamicLast4 => throw _privateConstructorUsedError;
  @JsonKey(name: "exp_month")
  int? get expMonth => throw _privateConstructorUsedError;
  @JsonKey(name: "exp_year")
  int? get expYear => throw _privateConstructorUsedError;
  @JsonKey(name: "fingerprint")
  String? get fingerprint => throw _privateConstructorUsedError;
  @JsonKey(name: "funding")
  String? get funding => throw _privateConstructorUsedError;
  @JsonKey(name: "last4")
  String? get last4 => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  Metadata? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  dynamic get name => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenization_method")
  dynamic get tokenizationMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "wallet")
  dynamic get wallet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "address_city") dynamic addressCity,
      @JsonKey(name: "address_country") dynamic addressCountry,
      @JsonKey(name: "address_line1") dynamic addressLine1,
      @JsonKey(name: "address_line1_check") dynamic addressLine1Check,
      @JsonKey(name: "address_line2") dynamic addressLine2,
      @JsonKey(name: "address_state") dynamic addressState,
      @JsonKey(name: "address_zip") dynamic addressZip,
      @JsonKey(name: "address_zip_check") dynamic addressZipCheck,
      @JsonKey(name: "brand") String? brand,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "customer") String? customer,
      @JsonKey(name: "cvc_check") String? cvcCheck,
      @JsonKey(name: "dynamic_last4") dynamic dynamicLast4,
      @JsonKey(name: "exp_month") int? expMonth,
      @JsonKey(name: "exp_year") int? expYear,
      @JsonKey(name: "fingerprint") String? fingerprint,
      @JsonKey(name: "funding") String? funding,
      @JsonKey(name: "last4") String? last4,
      @JsonKey(name: "metadata") Metadata? metadata,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "tokenization_method") dynamic tokenizationMethod,
      @JsonKey(name: "wallet") dynamic wallet});

  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? addressCity = freezed,
    Object? addressCountry = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine1Check = freezed,
    Object? addressLine2 = freezed,
    Object? addressState = freezed,
    Object? addressZip = freezed,
    Object? addressZipCheck = freezed,
    Object? brand = freezed,
    Object? country = freezed,
    Object? customer = freezed,
    Object? cvcCheck = freezed,
    Object? dynamicLast4 = freezed,
    Object? expMonth = freezed,
    Object? expYear = freezed,
    Object? fingerprint = freezed,
    Object? funding = freezed,
    Object? last4 = freezed,
    Object? metadata = freezed,
    Object? name = freezed,
    Object? tokenizationMethod = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCity: freezed == addressCity
          ? _value.addressCity
          : addressCity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressCountry: freezed == addressCountry
          ? _value.addressCountry
          : addressCountry // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine1Check: freezed == addressLine1Check
          ? _value.addressLine1Check
          : addressLine1Check // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressState: freezed == addressState
          ? _value.addressState
          : addressState // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressZip: freezed == addressZip
          ? _value.addressZip
          : addressZip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressZipCheck: freezed == addressZipCheck
          ? _value.addressZipCheck
          : addressZipCheck // ignore: cast_nullable_to_non_nullable
              as dynamic,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      cvcCheck: freezed == cvcCheck
          ? _value.cvcCheck
          : cvcCheck // ignore: cast_nullable_to_non_nullable
              as String?,
      dynamicLast4: freezed == dynamicLast4
          ? _value.dynamicLast4
          : dynamicLast4 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expMonth: freezed == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      expYear: freezed == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int?,
      fingerprint: freezed == fingerprint
          ? _value.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _value.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as String?,
      last4: freezed == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tokenizationMethod: freezed == tokenizationMethod
          ? _value.tokenizationMethod
          : tokenizationMethod // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "address_city") dynamic addressCity,
      @JsonKey(name: "address_country") dynamic addressCountry,
      @JsonKey(name: "address_line1") dynamic addressLine1,
      @JsonKey(name: "address_line1_check") dynamic addressLine1Check,
      @JsonKey(name: "address_line2") dynamic addressLine2,
      @JsonKey(name: "address_state") dynamic addressState,
      @JsonKey(name: "address_zip") dynamic addressZip,
      @JsonKey(name: "address_zip_check") dynamic addressZipCheck,
      @JsonKey(name: "brand") String? brand,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "customer") String? customer,
      @JsonKey(name: "cvc_check") String? cvcCheck,
      @JsonKey(name: "dynamic_last4") dynamic dynamicLast4,
      @JsonKey(name: "exp_month") int? expMonth,
      @JsonKey(name: "exp_year") int? expYear,
      @JsonKey(name: "fingerprint") String? fingerprint,
      @JsonKey(name: "funding") String? funding,
      @JsonKey(name: "last4") String? last4,
      @JsonKey(name: "metadata") Metadata? metadata,
      @JsonKey(name: "name") dynamic name,
      @JsonKey(name: "tokenization_method") dynamic tokenizationMethod,
      @JsonKey(name: "wallet") dynamic wallet});

  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? addressCity = freezed,
    Object? addressCountry = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine1Check = freezed,
    Object? addressLine2 = freezed,
    Object? addressState = freezed,
    Object? addressZip = freezed,
    Object? addressZipCheck = freezed,
    Object? brand = freezed,
    Object? country = freezed,
    Object? customer = freezed,
    Object? cvcCheck = freezed,
    Object? dynamicLast4 = freezed,
    Object? expMonth = freezed,
    Object? expYear = freezed,
    Object? fingerprint = freezed,
    Object? funding = freezed,
    Object? last4 = freezed,
    Object? metadata = freezed,
    Object? name = freezed,
    Object? tokenizationMethod = freezed,
    Object? wallet = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      addressCity: freezed == addressCity
          ? _value.addressCity
          : addressCity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressCountry: freezed == addressCountry
          ? _value.addressCountry
          : addressCountry // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine1Check: freezed == addressLine1Check
          ? _value.addressLine1Check
          : addressLine1Check // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressState: freezed == addressState
          ? _value.addressState
          : addressState // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressZip: freezed == addressZip
          ? _value.addressZip
          : addressZip // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addressZipCheck: freezed == addressZipCheck
          ? _value.addressZipCheck
          : addressZipCheck // ignore: cast_nullable_to_non_nullable
              as dynamic,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as String?,
      cvcCheck: freezed == cvcCheck
          ? _value.cvcCheck
          : cvcCheck // ignore: cast_nullable_to_non_nullable
              as String?,
      dynamicLast4: freezed == dynamicLast4
          ? _value.dynamicLast4
          : dynamicLast4 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expMonth: freezed == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      expYear: freezed == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as int?,
      fingerprint: freezed == fingerprint
          ? _value.fingerprint
          : fingerprint // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _value.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as String?,
      last4: freezed == last4
          ? _value.last4
          : last4 // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tokenizationMethod: freezed == tokenizationMethod
          ? _value.tokenizationMethod
          : tokenizationMethod // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "object") this.object,
      @JsonKey(name: "address_city") this.addressCity,
      @JsonKey(name: "address_country") this.addressCountry,
      @JsonKey(name: "address_line1") this.addressLine1,
      @JsonKey(name: "address_line1_check") this.addressLine1Check,
      @JsonKey(name: "address_line2") this.addressLine2,
      @JsonKey(name: "address_state") this.addressState,
      @JsonKey(name: "address_zip") this.addressZip,
      @JsonKey(name: "address_zip_check") this.addressZipCheck,
      @JsonKey(name: "brand") this.brand,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "customer") this.customer,
      @JsonKey(name: "cvc_check") this.cvcCheck,
      @JsonKey(name: "dynamic_last4") this.dynamicLast4,
      @JsonKey(name: "exp_month") this.expMonth,
      @JsonKey(name: "exp_year") this.expYear,
      @JsonKey(name: "fingerprint") this.fingerprint,
      @JsonKey(name: "funding") this.funding,
      @JsonKey(name: "last4") this.last4,
      @JsonKey(name: "metadata") this.metadata,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "tokenization_method") this.tokenizationMethod,
      @JsonKey(name: "wallet") this.wallet});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "object")
  final String? object;
  @override
  @JsonKey(name: "address_city")
  final dynamic addressCity;
  @override
  @JsonKey(name: "address_country")
  final dynamic addressCountry;
  @override
  @JsonKey(name: "address_line1")
  final dynamic addressLine1;
  @override
  @JsonKey(name: "address_line1_check")
  final dynamic addressLine1Check;
  @override
  @JsonKey(name: "address_line2")
  final dynamic addressLine2;
  @override
  @JsonKey(name: "address_state")
  final dynamic addressState;
  @override
  @JsonKey(name: "address_zip")
  final dynamic addressZip;
  @override
  @JsonKey(name: "address_zip_check")
  final dynamic addressZipCheck;
  @override
  @JsonKey(name: "brand")
  final String? brand;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "customer")
  final String? customer;
  @override
  @JsonKey(name: "cvc_check")
  final String? cvcCheck;
  @override
  @JsonKey(name: "dynamic_last4")
  final dynamic dynamicLast4;
  @override
  @JsonKey(name: "exp_month")
  final int? expMonth;
  @override
  @JsonKey(name: "exp_year")
  final int? expYear;
  @override
  @JsonKey(name: "fingerprint")
  final String? fingerprint;
  @override
  @JsonKey(name: "funding")
  final String? funding;
  @override
  @JsonKey(name: "last4")
  final String? last4;
  @override
  @JsonKey(name: "metadata")
  final Metadata? metadata;
  @override
  @JsonKey(name: "name")
  final dynamic name;
  @override
  @JsonKey(name: "tokenization_method")
  final dynamic tokenizationMethod;
  @override
  @JsonKey(name: "wallet")
  final dynamic wallet;

  @override
  String toString() {
    return 'Datum(id: $id, object: $object, addressCity: $addressCity, addressCountry: $addressCountry, addressLine1: $addressLine1, addressLine1Check: $addressLine1Check, addressLine2: $addressLine2, addressState: $addressState, addressZip: $addressZip, addressZipCheck: $addressZipCheck, brand: $brand, country: $country, customer: $customer, cvcCheck: $cvcCheck, dynamicLast4: $dynamicLast4, expMonth: $expMonth, expYear: $expYear, fingerprint: $fingerprint, funding: $funding, last4: $last4, metadata: $metadata, name: $name, tokenizationMethod: $tokenizationMethod, wallet: $wallet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            const DeepCollectionEquality()
                .equals(other.addressCity, addressCity) &&
            const DeepCollectionEquality()
                .equals(other.addressCountry, addressCountry) &&
            const DeepCollectionEquality()
                .equals(other.addressLine1, addressLine1) &&
            const DeepCollectionEquality()
                .equals(other.addressLine1Check, addressLine1Check) &&
            const DeepCollectionEquality()
                .equals(other.addressLine2, addressLine2) &&
            const DeepCollectionEquality()
                .equals(other.addressState, addressState) &&
            const DeepCollectionEquality()
                .equals(other.addressZip, addressZip) &&
            const DeepCollectionEquality()
                .equals(other.addressZipCheck, addressZipCheck) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.cvcCheck, cvcCheck) ||
                other.cvcCheck == cvcCheck) &&
            const DeepCollectionEquality()
                .equals(other.dynamicLast4, dynamicLast4) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.fingerprint, fingerprint) ||
                other.fingerprint == fingerprint) &&
            (identical(other.funding, funding) || other.funding == funding) &&
            (identical(other.last4, last4) || other.last4 == last4) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.tokenizationMethod, tokenizationMethod) &&
            const DeepCollectionEquality().equals(other.wallet, wallet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        object,
        const DeepCollectionEquality().hash(addressCity),
        const DeepCollectionEquality().hash(addressCountry),
        const DeepCollectionEquality().hash(addressLine1),
        const DeepCollectionEquality().hash(addressLine1Check),
        const DeepCollectionEquality().hash(addressLine2),
        const DeepCollectionEquality().hash(addressState),
        const DeepCollectionEquality().hash(addressZip),
        const DeepCollectionEquality().hash(addressZipCheck),
        brand,
        country,
        customer,
        cvcCheck,
        const DeepCollectionEquality().hash(dynamicLast4),
        expMonth,
        expYear,
        fingerprint,
        funding,
        last4,
        metadata,
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(tokenizationMethod),
        const DeepCollectionEquality().hash(wallet)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "object") final String? object,
      @JsonKey(name: "address_city") final dynamic addressCity,
      @JsonKey(name: "address_country") final dynamic addressCountry,
      @JsonKey(name: "address_line1") final dynamic addressLine1,
      @JsonKey(name: "address_line1_check") final dynamic addressLine1Check,
      @JsonKey(name: "address_line2") final dynamic addressLine2,
      @JsonKey(name: "address_state") final dynamic addressState,
      @JsonKey(name: "address_zip") final dynamic addressZip,
      @JsonKey(name: "address_zip_check") final dynamic addressZipCheck,
      @JsonKey(name: "brand") final String? brand,
      @JsonKey(name: "country") final String? country,
      @JsonKey(name: "customer") final String? customer,
      @JsonKey(name: "cvc_check") final String? cvcCheck,
      @JsonKey(name: "dynamic_last4") final dynamic dynamicLast4,
      @JsonKey(name: "exp_month") final int? expMonth,
      @JsonKey(name: "exp_year") final int? expYear,
      @JsonKey(name: "fingerprint") final String? fingerprint,
      @JsonKey(name: "funding") final String? funding,
      @JsonKey(name: "last4") final String? last4,
      @JsonKey(name: "metadata") final Metadata? metadata,
      @JsonKey(name: "name") final dynamic name,
      @JsonKey(name: "tokenization_method") final dynamic tokenizationMethod,
      @JsonKey(name: "wallet") final dynamic wallet}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "object")
  String? get object;
  @override
  @JsonKey(name: "address_city")
  dynamic get addressCity;
  @override
  @JsonKey(name: "address_country")
  dynamic get addressCountry;
  @override
  @JsonKey(name: "address_line1")
  dynamic get addressLine1;
  @override
  @JsonKey(name: "address_line1_check")
  dynamic get addressLine1Check;
  @override
  @JsonKey(name: "address_line2")
  dynamic get addressLine2;
  @override
  @JsonKey(name: "address_state")
  dynamic get addressState;
  @override
  @JsonKey(name: "address_zip")
  dynamic get addressZip;
  @override
  @JsonKey(name: "address_zip_check")
  dynamic get addressZipCheck;
  @override
  @JsonKey(name: "brand")
  String? get brand;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "customer")
  String? get customer;
  @override
  @JsonKey(name: "cvc_check")
  String? get cvcCheck;
  @override
  @JsonKey(name: "dynamic_last4")
  dynamic get dynamicLast4;
  @override
  @JsonKey(name: "exp_month")
  int? get expMonth;
  @override
  @JsonKey(name: "exp_year")
  int? get expYear;
  @override
  @JsonKey(name: "fingerprint")
  String? get fingerprint;
  @override
  @JsonKey(name: "funding")
  String? get funding;
  @override
  @JsonKey(name: "last4")
  String? get last4;
  @override
  @JsonKey(name: "metadata")
  Metadata? get metadata;
  @override
  @JsonKey(name: "name")
  dynamic get name;
  @override
  @JsonKey(name: "tokenization_method")
  dynamic get tokenizationMethod;
  @override
  @JsonKey(name: "wallet")
  dynamic get wallet;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
          _$MetadataImpl value, $Res Function(_$MetadataImpl) then) =
      __$$MetadataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
      _$MetadataImpl _value, $Res Function(_$MetadataImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl implements _Metadata {
  const _$MetadataImpl();

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  String toString() {
    return 'Metadata()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MetadataImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata() = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;
}

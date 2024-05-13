// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_customer_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCustomerPlanRequestModel _$GetCustomerPlanRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetCustomerPlanRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetCustomerPlanRequestModel {
  @JsonKey(name: "product")
  String? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCustomerPlanRequestModelCopyWith<GetCustomerPlanRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCustomerPlanRequestModelCopyWith<$Res> {
  factory $GetCustomerPlanRequestModelCopyWith(
          GetCustomerPlanRequestModel value,
          $Res Function(GetCustomerPlanRequestModel) then) =
      _$GetCustomerPlanRequestModelCopyWithImpl<$Res,
          GetCustomerPlanRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "product") String? product});
}

/// @nodoc
class _$GetCustomerPlanRequestModelCopyWithImpl<$Res,
        $Val extends GetCustomerPlanRequestModel>
    implements $GetCustomerPlanRequestModelCopyWith<$Res> {
  _$GetCustomerPlanRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCustomerPlanRequestModelImplCopyWith<$Res>
    implements $GetCustomerPlanRequestModelCopyWith<$Res> {
  factory _$$GetCustomerPlanRequestModelImplCopyWith(
          _$GetCustomerPlanRequestModelImpl value,
          $Res Function(_$GetCustomerPlanRequestModelImpl) then) =
      __$$GetCustomerPlanRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "product") String? product});
}

/// @nodoc
class __$$GetCustomerPlanRequestModelImplCopyWithImpl<$Res>
    extends _$GetCustomerPlanRequestModelCopyWithImpl<$Res,
        _$GetCustomerPlanRequestModelImpl>
    implements _$$GetCustomerPlanRequestModelImplCopyWith<$Res> {
  __$$GetCustomerPlanRequestModelImplCopyWithImpl(
      _$GetCustomerPlanRequestModelImpl _value,
      $Res Function(_$GetCustomerPlanRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$GetCustomerPlanRequestModelImpl(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCustomerPlanRequestModelImpl
    implements _GetCustomerPlanRequestModel {
  const _$GetCustomerPlanRequestModelImpl(
      {@JsonKey(name: "product") this.product});

  factory _$GetCustomerPlanRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetCustomerPlanRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "product")
  final String? product;

  @override
  String toString() {
    return 'GetCustomerPlanRequestModel(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerPlanRequestModelImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerPlanRequestModelImplCopyWith<_$GetCustomerPlanRequestModelImpl>
      get copyWith => __$$GetCustomerPlanRequestModelImplCopyWithImpl<
          _$GetCustomerPlanRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCustomerPlanRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetCustomerPlanRequestModel
    implements GetCustomerPlanRequestModel {
  const factory _GetCustomerPlanRequestModel(
          {@JsonKey(name: "product") final String? product}) =
      _$GetCustomerPlanRequestModelImpl;

  factory _GetCustomerPlanRequestModel.fromJson(Map<String, dynamic> json) =
      _$GetCustomerPlanRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "product")
  String? get product;
  @override
  @JsonKey(ignore: true)
  _$$GetCustomerPlanRequestModelImplCopyWith<_$GetCustomerPlanRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetCustomerPlanResponseModel _$GetCustomerPlanResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetCustomerPlanResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetCustomerPlanResponseModel {
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
  $GetCustomerPlanResponseModelCopyWith<GetCustomerPlanResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCustomerPlanResponseModelCopyWith<$Res> {
  factory $GetCustomerPlanResponseModelCopyWith(
          GetCustomerPlanResponseModel value,
          $Res Function(GetCustomerPlanResponseModel) then) =
      _$GetCustomerPlanResponseModelCopyWithImpl<$Res,
          GetCustomerPlanResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetCustomerPlanResponseModelCopyWithImpl<$Res,
        $Val extends GetCustomerPlanResponseModel>
    implements $GetCustomerPlanResponseModelCopyWith<$Res> {
  _$GetCustomerPlanResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetCustomerPlanResponseModelImplCopyWith<$Res>
    implements $GetCustomerPlanResponseModelCopyWith<$Res> {
  factory _$$GetCustomerPlanResponseModelImplCopyWith(
          _$GetCustomerPlanResponseModelImpl value,
          $Res Function(_$GetCustomerPlanResponseModelImpl) then) =
      __$$GetCustomerPlanResponseModelImplCopyWithImpl<$Res>;
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
class __$$GetCustomerPlanResponseModelImplCopyWithImpl<$Res>
    extends _$GetCustomerPlanResponseModelCopyWithImpl<$Res,
        _$GetCustomerPlanResponseModelImpl>
    implements _$$GetCustomerPlanResponseModelImplCopyWith<$Res> {
  __$$GetCustomerPlanResponseModelImplCopyWithImpl(
      _$GetCustomerPlanResponseModelImpl _value,
      $Res Function(_$GetCustomerPlanResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetCustomerPlanResponseModelImpl(
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
class _$GetCustomerPlanResponseModelImpl
    implements _GetCustomerPlanResponseModel {
  const _$GetCustomerPlanResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$GetCustomerPlanResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetCustomerPlanResponseModelImplFromJson(json);

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
    return 'GetCustomerPlanResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerPlanResponseModelImpl &&
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
  _$$GetCustomerPlanResponseModelImplCopyWith<
          _$GetCustomerPlanResponseModelImpl>
      get copyWith => __$$GetCustomerPlanResponseModelImplCopyWithImpl<
          _$GetCustomerPlanResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCustomerPlanResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetCustomerPlanResponseModel
    implements GetCustomerPlanResponseModel {
  const factory _GetCustomerPlanResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$GetCustomerPlanResponseModelImpl;

  factory _GetCustomerPlanResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetCustomerPlanResponseModelImpl.fromJson;

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
  _$$GetCustomerPlanResponseModelImplCopyWith<
          _$GetCustomerPlanResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
  @JsonKey(name: "next_page")
  dynamic get nextPage => throw _privateConstructorUsedError;
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
      @JsonKey(name: "next_page") dynamic nextPage,
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
    Object? nextPage = freezed,
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
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      @JsonKey(name: "next_page") dynamic nextPage,
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
    Object? nextPage = freezed,
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
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      @JsonKey(name: "next_page") this.nextPage,
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
  @JsonKey(name: "next_page")
  final dynamic nextPage;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'Data(object: $object, data: $data, hasMore: $hasMore, nextPage: $nextPage, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.object, object) || other.object == object) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            const DeepCollectionEquality().equals(other.nextPage, nextPage) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      object,
      const DeepCollectionEquality().hash(_data),
      hasMore,
      const DeepCollectionEquality().hash(nextPage),
      url);

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
      @JsonKey(name: "next_page") final dynamic nextPage,
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
  @JsonKey(name: "next_page")
  dynamic get nextPage;
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
  @JsonKey(name: "active")
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_scheme")
  String? get billingScheme => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  int? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "custom_unit_amount")
  dynamic get customUnitAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "livemode")
  bool? get livemode => throw _privateConstructorUsedError;
  @JsonKey(name: "lookup_key")
  dynamic get lookupKey => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  Metadata? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "nickname")
  String? get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: "product")
  String? get product => throw _privateConstructorUsedError;
  @JsonKey(name: "recurring")
  Recurring? get recurring => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_behavior")
  String? get taxBehavior => throw _privateConstructorUsedError;
  @JsonKey(name: "tiers_mode")
  dynamic get tiersMode => throw _privateConstructorUsedError;
  @JsonKey(name: "transform_quantity")
  dynamic get transformQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_amount")
  int? get unitAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "unit_amount_decimal")
  String? get unitAmountDecimal => throw _privateConstructorUsedError;

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
      @JsonKey(name: "active") bool? active,
      @JsonKey(name: "billing_scheme") String? billingScheme,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "custom_unit_amount") dynamic customUnitAmount,
      @JsonKey(name: "livemode") bool? livemode,
      @JsonKey(name: "lookup_key") dynamic lookupKey,
      @JsonKey(name: "metadata") Metadata? metadata,
      @JsonKey(name: "nickname") String? nickname,
      @JsonKey(name: "product") String? product,
      @JsonKey(name: "recurring") Recurring? recurring,
      @JsonKey(name: "tax_behavior") String? taxBehavior,
      @JsonKey(name: "tiers_mode") dynamic tiersMode,
      @JsonKey(name: "transform_quantity") dynamic transformQuantity,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "unit_amount") int? unitAmount,
      @JsonKey(name: "unit_amount_decimal") String? unitAmountDecimal});

  $MetadataCopyWith<$Res>? get metadata;
  $RecurringCopyWith<$Res>? get recurring;
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
    Object? active = freezed,
    Object? billingScheme = freezed,
    Object? created = freezed,
    Object? currency = freezed,
    Object? customUnitAmount = freezed,
    Object? livemode = freezed,
    Object? lookupKey = freezed,
    Object? metadata = freezed,
    Object? nickname = freezed,
    Object? product = freezed,
    Object? recurring = freezed,
    Object? taxBehavior = freezed,
    Object? tiersMode = freezed,
    Object? transformQuantity = freezed,
    Object? type = freezed,
    Object? unitAmount = freezed,
    Object? unitAmountDecimal = freezed,
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      billingScheme: freezed == billingScheme
          ? _value.billingScheme
          : billingScheme // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      customUnitAmount: freezed == customUnitAmount
          ? _value.customUnitAmount
          : customUnitAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      livemode: freezed == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
      lookupKey: freezed == lookupKey
          ? _value.lookupKey
          : lookupKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      recurring: freezed == recurring
          ? _value.recurring
          : recurring // ignore: cast_nullable_to_non_nullable
              as Recurring?,
      taxBehavior: freezed == taxBehavior
          ? _value.taxBehavior
          : taxBehavior // ignore: cast_nullable_to_non_nullable
              as String?,
      tiersMode: freezed == tiersMode
          ? _value.tiersMode
          : tiersMode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      transformQuantity: freezed == transformQuantity
          ? _value.transformQuantity
          : transformQuantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      unitAmount: freezed == unitAmount
          ? _value.unitAmount
          : unitAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      unitAmountDecimal: freezed == unitAmountDecimal
          ? _value.unitAmountDecimal
          : unitAmountDecimal // ignore: cast_nullable_to_non_nullable
              as String?,
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

  @override
  @pragma('vm:prefer-inline')
  $RecurringCopyWith<$Res>? get recurring {
    if (_value.recurring == null) {
      return null;
    }

    return $RecurringCopyWith<$Res>(_value.recurring!, (value) {
      return _then(_value.copyWith(recurring: value) as $Val);
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
      @JsonKey(name: "active") bool? active,
      @JsonKey(name: "billing_scheme") String? billingScheme,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "custom_unit_amount") dynamic customUnitAmount,
      @JsonKey(name: "livemode") bool? livemode,
      @JsonKey(name: "lookup_key") dynamic lookupKey,
      @JsonKey(name: "metadata") Metadata? metadata,
      @JsonKey(name: "nickname") String? nickname,
      @JsonKey(name: "product") String? product,
      @JsonKey(name: "recurring") Recurring? recurring,
      @JsonKey(name: "tax_behavior") String? taxBehavior,
      @JsonKey(name: "tiers_mode") dynamic tiersMode,
      @JsonKey(name: "transform_quantity") dynamic transformQuantity,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "unit_amount") int? unitAmount,
      @JsonKey(name: "unit_amount_decimal") String? unitAmountDecimal});

  @override
  $MetadataCopyWith<$Res>? get metadata;
  @override
  $RecurringCopyWith<$Res>? get recurring;
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
    Object? active = freezed,
    Object? billingScheme = freezed,
    Object? created = freezed,
    Object? currency = freezed,
    Object? customUnitAmount = freezed,
    Object? livemode = freezed,
    Object? lookupKey = freezed,
    Object? metadata = freezed,
    Object? nickname = freezed,
    Object? product = freezed,
    Object? recurring = freezed,
    Object? taxBehavior = freezed,
    Object? tiersMode = freezed,
    Object? transformQuantity = freezed,
    Object? type = freezed,
    Object? unitAmount = freezed,
    Object? unitAmountDecimal = freezed,
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      billingScheme: freezed == billingScheme
          ? _value.billingScheme
          : billingScheme // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      customUnitAmount: freezed == customUnitAmount
          ? _value.customUnitAmount
          : customUnitAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      livemode: freezed == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
      lookupKey: freezed == lookupKey
          ? _value.lookupKey
          : lookupKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      recurring: freezed == recurring
          ? _value.recurring
          : recurring // ignore: cast_nullable_to_non_nullable
              as Recurring?,
      taxBehavior: freezed == taxBehavior
          ? _value.taxBehavior
          : taxBehavior // ignore: cast_nullable_to_non_nullable
              as String?,
      tiersMode: freezed == tiersMode
          ? _value.tiersMode
          : tiersMode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      transformQuantity: freezed == transformQuantity
          ? _value.transformQuantity
          : transformQuantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      unitAmount: freezed == unitAmount
          ? _value.unitAmount
          : unitAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      unitAmountDecimal: freezed == unitAmountDecimal
          ? _value.unitAmountDecimal
          : unitAmountDecimal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "object") this.object,
      @JsonKey(name: "active") this.active,
      @JsonKey(name: "billing_scheme") this.billingScheme,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "currency") this.currency,
      @JsonKey(name: "custom_unit_amount") this.customUnitAmount,
      @JsonKey(name: "livemode") this.livemode,
      @JsonKey(name: "lookup_key") this.lookupKey,
      @JsonKey(name: "metadata") this.metadata,
      @JsonKey(name: "nickname") this.nickname,
      @JsonKey(name: "product") this.product,
      @JsonKey(name: "recurring") this.recurring,
      @JsonKey(name: "tax_behavior") this.taxBehavior,
      @JsonKey(name: "tiers_mode") this.tiersMode,
      @JsonKey(name: "transform_quantity") this.transformQuantity,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "unit_amount") this.unitAmount,
      @JsonKey(name: "unit_amount_decimal") this.unitAmountDecimal});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "object")
  final String? object;
  @override
  @JsonKey(name: "active")
  final bool? active;
  @override
  @JsonKey(name: "billing_scheme")
  final String? billingScheme;
  @override
  @JsonKey(name: "created")
  final int? created;
  @override
  @JsonKey(name: "currency")
  final String? currency;
  @override
  @JsonKey(name: "custom_unit_amount")
  final dynamic customUnitAmount;
  @override
  @JsonKey(name: "livemode")
  final bool? livemode;
  @override
  @JsonKey(name: "lookup_key")
  final dynamic lookupKey;
  @override
  @JsonKey(name: "metadata")
  final Metadata? metadata;
  @override
  @JsonKey(name: "nickname")
  final String? nickname;
  @override
  @JsonKey(name: "product")
  final String? product;
  @override
  @JsonKey(name: "recurring")
  final Recurring? recurring;
  @override
  @JsonKey(name: "tax_behavior")
  final String? taxBehavior;
  @override
  @JsonKey(name: "tiers_mode")
  final dynamic tiersMode;
  @override
  @JsonKey(name: "transform_quantity")
  final dynamic transformQuantity;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "unit_amount")
  final int? unitAmount;
  @override
  @JsonKey(name: "unit_amount_decimal")
  final String? unitAmountDecimal;

  @override
  String toString() {
    return 'Datum(id: $id, object: $object, active: $active, billingScheme: $billingScheme, created: $created, currency: $currency, customUnitAmount: $customUnitAmount, livemode: $livemode, lookupKey: $lookupKey, metadata: $metadata, nickname: $nickname, product: $product, recurring: $recurring, taxBehavior: $taxBehavior, tiersMode: $tiersMode, transformQuantity: $transformQuantity, type: $type, unitAmount: $unitAmount, unitAmountDecimal: $unitAmountDecimal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.billingScheme, billingScheme) ||
                other.billingScheme == billingScheme) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality()
                .equals(other.customUnitAmount, customUnitAmount) &&
            (identical(other.livemode, livemode) ||
                other.livemode == livemode) &&
            const DeepCollectionEquality().equals(other.lookupKey, lookupKey) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.recurring, recurring) ||
                other.recurring == recurring) &&
            (identical(other.taxBehavior, taxBehavior) ||
                other.taxBehavior == taxBehavior) &&
            const DeepCollectionEquality().equals(other.tiersMode, tiersMode) &&
            const DeepCollectionEquality()
                .equals(other.transformQuantity, transformQuantity) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.unitAmount, unitAmount) ||
                other.unitAmount == unitAmount) &&
            (identical(other.unitAmountDecimal, unitAmountDecimal) ||
                other.unitAmountDecimal == unitAmountDecimal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        object,
        active,
        billingScheme,
        created,
        currency,
        const DeepCollectionEquality().hash(customUnitAmount),
        livemode,
        const DeepCollectionEquality().hash(lookupKey),
        metadata,
        nickname,
        product,
        recurring,
        taxBehavior,
        const DeepCollectionEquality().hash(tiersMode),
        const DeepCollectionEquality().hash(transformQuantity),
        type,
        unitAmount,
        unitAmountDecimal
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
      @JsonKey(name: "active") final bool? active,
      @JsonKey(name: "billing_scheme") final String? billingScheme,
      @JsonKey(name: "created") final int? created,
      @JsonKey(name: "currency") final String? currency,
      @JsonKey(name: "custom_unit_amount") final dynamic customUnitAmount,
      @JsonKey(name: "livemode") final bool? livemode,
      @JsonKey(name: "lookup_key") final dynamic lookupKey,
      @JsonKey(name: "metadata") final Metadata? metadata,
      @JsonKey(name: "nickname") final String? nickname,
      @JsonKey(name: "product") final String? product,
      @JsonKey(name: "recurring") final Recurring? recurring,
      @JsonKey(name: "tax_behavior") final String? taxBehavior,
      @JsonKey(name: "tiers_mode") final dynamic tiersMode,
      @JsonKey(name: "transform_quantity") final dynamic transformQuantity,
      @JsonKey(name: "type") final String? type,
      @JsonKey(name: "unit_amount") final int? unitAmount,
      @JsonKey(name: "unit_amount_decimal")
      final String? unitAmountDecimal}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "object")
  String? get object;
  @override
  @JsonKey(name: "active")
  bool? get active;
  @override
  @JsonKey(name: "billing_scheme")
  String? get billingScheme;
  @override
  @JsonKey(name: "created")
  int? get created;
  @override
  @JsonKey(name: "currency")
  String? get currency;
  @override
  @JsonKey(name: "custom_unit_amount")
  dynamic get customUnitAmount;
  @override
  @JsonKey(name: "livemode")
  bool? get livemode;
  @override
  @JsonKey(name: "lookup_key")
  dynamic get lookupKey;
  @override
  @JsonKey(name: "metadata")
  Metadata? get metadata;
  @override
  @JsonKey(name: "nickname")
  String? get nickname;
  @override
  @JsonKey(name: "product")
  String? get product;
  @override
  @JsonKey(name: "recurring")
  Recurring? get recurring;
  @override
  @JsonKey(name: "tax_behavior")
  String? get taxBehavior;
  @override
  @JsonKey(name: "tiers_mode")
  dynamic get tiersMode;
  @override
  @JsonKey(name: "transform_quantity")
  dynamic get transformQuantity;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "unit_amount")
  int? get unitAmount;
  @override
  @JsonKey(name: "unit_amount_decimal")
  String? get unitAmountDecimal;
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

Recurring _$RecurringFromJson(Map<String, dynamic> json) {
  return _Recurring.fromJson(json);
}

/// @nodoc
mixin _$Recurring {
  @JsonKey(name: "aggregate_usage")
  dynamic get aggregateUsage => throw _privateConstructorUsedError;
  @JsonKey(name: "interval")
  String? get interval => throw _privateConstructorUsedError;
  @JsonKey(name: "interval_count")
  int? get intervalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "trial_period_days")
  dynamic get trialPeriodDays => throw _privateConstructorUsedError;
  @JsonKey(name: "usage_type")
  String? get usageType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecurringCopyWith<Recurring> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecurringCopyWith<$Res> {
  factory $RecurringCopyWith(Recurring value, $Res Function(Recurring) then) =
      _$RecurringCopyWithImpl<$Res, Recurring>;
  @useResult
  $Res call(
      {@JsonKey(name: "aggregate_usage") dynamic aggregateUsage,
      @JsonKey(name: "interval") String? interval,
      @JsonKey(name: "interval_count") int? intervalCount,
      @JsonKey(name: "trial_period_days") dynamic trialPeriodDays,
      @JsonKey(name: "usage_type") String? usageType});
}

/// @nodoc
class _$RecurringCopyWithImpl<$Res, $Val extends Recurring>
    implements $RecurringCopyWith<$Res> {
  _$RecurringCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregateUsage = freezed,
    Object? interval = freezed,
    Object? intervalCount = freezed,
    Object? trialPeriodDays = freezed,
    Object? usageType = freezed,
  }) {
    return _then(_value.copyWith(
      aggregateUsage: freezed == aggregateUsage
          ? _value.aggregateUsage
          : aggregateUsage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      intervalCount: freezed == intervalCount
          ? _value.intervalCount
          : intervalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      trialPeriodDays: freezed == trialPeriodDays
          ? _value.trialPeriodDays
          : trialPeriodDays // ignore: cast_nullable_to_non_nullable
              as dynamic,
      usageType: freezed == usageType
          ? _value.usageType
          : usageType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecurringImplCopyWith<$Res>
    implements $RecurringCopyWith<$Res> {
  factory _$$RecurringImplCopyWith(
          _$RecurringImpl value, $Res Function(_$RecurringImpl) then) =
      __$$RecurringImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "aggregate_usage") dynamic aggregateUsage,
      @JsonKey(name: "interval") String? interval,
      @JsonKey(name: "interval_count") int? intervalCount,
      @JsonKey(name: "trial_period_days") dynamic trialPeriodDays,
      @JsonKey(name: "usage_type") String? usageType});
}

/// @nodoc
class __$$RecurringImplCopyWithImpl<$Res>
    extends _$RecurringCopyWithImpl<$Res, _$RecurringImpl>
    implements _$$RecurringImplCopyWith<$Res> {
  __$$RecurringImplCopyWithImpl(
      _$RecurringImpl _value, $Res Function(_$RecurringImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aggregateUsage = freezed,
    Object? interval = freezed,
    Object? intervalCount = freezed,
    Object? trialPeriodDays = freezed,
    Object? usageType = freezed,
  }) {
    return _then(_$RecurringImpl(
      aggregateUsage: freezed == aggregateUsage
          ? _value.aggregateUsage
          : aggregateUsage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      intervalCount: freezed == intervalCount
          ? _value.intervalCount
          : intervalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      trialPeriodDays: freezed == trialPeriodDays
          ? _value.trialPeriodDays
          : trialPeriodDays // ignore: cast_nullable_to_non_nullable
              as dynamic,
      usageType: freezed == usageType
          ? _value.usageType
          : usageType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecurringImpl implements _Recurring {
  const _$RecurringImpl(
      {@JsonKey(name: "aggregate_usage") this.aggregateUsage,
      @JsonKey(name: "interval") this.interval,
      @JsonKey(name: "interval_count") this.intervalCount,
      @JsonKey(name: "trial_period_days") this.trialPeriodDays,
      @JsonKey(name: "usage_type") this.usageType});

  factory _$RecurringImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecurringImplFromJson(json);

  @override
  @JsonKey(name: "aggregate_usage")
  final dynamic aggregateUsage;
  @override
  @JsonKey(name: "interval")
  final String? interval;
  @override
  @JsonKey(name: "interval_count")
  final int? intervalCount;
  @override
  @JsonKey(name: "trial_period_days")
  final dynamic trialPeriodDays;
  @override
  @JsonKey(name: "usage_type")
  final String? usageType;

  @override
  String toString() {
    return 'Recurring(aggregateUsage: $aggregateUsage, interval: $interval, intervalCount: $intervalCount, trialPeriodDays: $trialPeriodDays, usageType: $usageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecurringImpl &&
            const DeepCollectionEquality()
                .equals(other.aggregateUsage, aggregateUsage) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.intervalCount, intervalCount) ||
                other.intervalCount == intervalCount) &&
            const DeepCollectionEquality()
                .equals(other.trialPeriodDays, trialPeriodDays) &&
            (identical(other.usageType, usageType) ||
                other.usageType == usageType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(aggregateUsage),
      interval,
      intervalCount,
      const DeepCollectionEquality().hash(trialPeriodDays),
      usageType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecurringImplCopyWith<_$RecurringImpl> get copyWith =>
      __$$RecurringImplCopyWithImpl<_$RecurringImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecurringImplToJson(
      this,
    );
  }
}

abstract class _Recurring implements Recurring {
  const factory _Recurring(
      {@JsonKey(name: "aggregate_usage") final dynamic aggregateUsage,
      @JsonKey(name: "interval") final String? interval,
      @JsonKey(name: "interval_count") final int? intervalCount,
      @JsonKey(name: "trial_period_days") final dynamic trialPeriodDays,
      @JsonKey(name: "usage_type") final String? usageType}) = _$RecurringImpl;

  factory _Recurring.fromJson(Map<String, dynamic> json) =
      _$RecurringImpl.fromJson;

  @override
  @JsonKey(name: "aggregate_usage")
  dynamic get aggregateUsage;
  @override
  @JsonKey(name: "interval")
  String? get interval;
  @override
  @JsonKey(name: "interval_count")
  int? get intervalCount;
  @override
  @JsonKey(name: "trial_period_days")
  dynamic get trialPeriodDays;
  @override
  @JsonKey(name: "usage_type")
  String? get usageType;
  @override
  @JsonKey(ignore: true)
  _$$RecurringImplCopyWith<_$RecurringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

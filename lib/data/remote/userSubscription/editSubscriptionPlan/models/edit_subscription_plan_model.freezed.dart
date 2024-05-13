// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_subscription_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditUserSubscriptionPlanRequestModel
    _$EditUserSubscriptionPlanRequestModelFromJson(Map<String, dynamic> json) {
  return _EditUserSubscriptionPlanRequestModel.fromJson(json);
}

/// @nodoc
mixin _$EditUserSubscriptionPlanRequestModel {
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "planId")
  String? get planId => throw _privateConstructorUsedError;
  @JsonKey(name: "productId")
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "planAmount")
  int? get planAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditUserSubscriptionPlanRequestModelCopyWith<
          EditUserSubscriptionPlanRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserSubscriptionPlanRequestModelCopyWith<$Res> {
  factory $EditUserSubscriptionPlanRequestModelCopyWith(
          EditUserSubscriptionPlanRequestModel value,
          $Res Function(EditUserSubscriptionPlanRequestModel) then) =
      _$EditUserSubscriptionPlanRequestModelCopyWithImpl<$Res,
          EditUserSubscriptionPlanRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "planId") String? planId,
      @JsonKey(name: "productId") String? productId,
      @JsonKey(name: "planAmount") int? planAmount});
}

/// @nodoc
class _$EditUserSubscriptionPlanRequestModelCopyWithImpl<$Res,
        $Val extends EditUserSubscriptionPlanRequestModel>
    implements $EditUserSubscriptionPlanRequestModelCopyWith<$Res> {
  _$EditUserSubscriptionPlanRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? planId = freezed,
    Object? productId = freezed,
    Object? planAmount = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      planAmount: freezed == planAmount
          ? _value.planAmount
          : planAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditUserSubscriptionPlanRequestModelImplCopyWith<$Res>
    implements $EditUserSubscriptionPlanRequestModelCopyWith<$Res> {
  factory _$$EditUserSubscriptionPlanRequestModelImplCopyWith(
          _$EditUserSubscriptionPlanRequestModelImpl value,
          $Res Function(_$EditUserSubscriptionPlanRequestModelImpl) then) =
      __$$EditUserSubscriptionPlanRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "planId") String? planId,
      @JsonKey(name: "productId") String? productId,
      @JsonKey(name: "planAmount") int? planAmount});
}

/// @nodoc
class __$$EditUserSubscriptionPlanRequestModelImplCopyWithImpl<$Res>
    extends _$EditUserSubscriptionPlanRequestModelCopyWithImpl<$Res,
        _$EditUserSubscriptionPlanRequestModelImpl>
    implements _$$EditUserSubscriptionPlanRequestModelImplCopyWith<$Res> {
  __$$EditUserSubscriptionPlanRequestModelImplCopyWithImpl(
      _$EditUserSubscriptionPlanRequestModelImpl _value,
      $Res Function(_$EditUserSubscriptionPlanRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? planId = freezed,
    Object? productId = freezed,
    Object? planAmount = freezed,
  }) {
    return _then(_$EditUserSubscriptionPlanRequestModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      planAmount: freezed == planAmount
          ? _value.planAmount
          : planAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditUserSubscriptionPlanRequestModelImpl
    implements _EditUserSubscriptionPlanRequestModel {
  const _$EditUserSubscriptionPlanRequestModelImpl(
      {@JsonKey(name: "userId") this.userId,
      @JsonKey(name: "planId") this.planId,
      @JsonKey(name: "productId") this.productId,
      @JsonKey(name: "planAmount") this.planAmount});

  factory _$EditUserSubscriptionPlanRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EditUserSubscriptionPlanRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "planId")
  final String? planId;
  @override
  @JsonKey(name: "productId")
  final String? productId;
  @override
  @JsonKey(name: "planAmount")
  final int? planAmount;

  @override
  String toString() {
    return 'EditUserSubscriptionPlanRequestModel(userId: $userId, planId: $planId, productId: $productId, planAmount: $planAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserSubscriptionPlanRequestModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.planAmount, planAmount) ||
                other.planAmount == planAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, planId, productId, planAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserSubscriptionPlanRequestModelImplCopyWith<
          _$EditUserSubscriptionPlanRequestModelImpl>
      get copyWith => __$$EditUserSubscriptionPlanRequestModelImplCopyWithImpl<
          _$EditUserSubscriptionPlanRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditUserSubscriptionPlanRequestModelImplToJson(
      this,
    );
  }
}

abstract class _EditUserSubscriptionPlanRequestModel
    implements EditUserSubscriptionPlanRequestModel {
  const factory _EditUserSubscriptionPlanRequestModel(
          {@JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "planId") final String? planId,
          @JsonKey(name: "productId") final String? productId,
          @JsonKey(name: "planAmount") final int? planAmount}) =
      _$EditUserSubscriptionPlanRequestModelImpl;

  factory _EditUserSubscriptionPlanRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$EditUserSubscriptionPlanRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "planId")
  String? get planId;
  @override
  @JsonKey(name: "productId")
  String? get productId;
  @override
  @JsonKey(name: "planAmount")
  int? get planAmount;
  @override
  @JsonKey(ignore: true)
  _$$EditUserSubscriptionPlanRequestModelImplCopyWith<
          _$EditUserSubscriptionPlanRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EditUserSubscriptionPlanResponseModel
    _$EditUserSubscriptionPlanResponseModelFromJson(Map<String, dynamic> json) {
  return _EditUserSubscriptionPlanResponseModel.fromJson(json);
}

/// @nodoc
mixin _$EditUserSubscriptionPlanResponseModel {
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
  $EditUserSubscriptionPlanResponseModelCopyWith<
          EditUserSubscriptionPlanResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserSubscriptionPlanResponseModelCopyWith<$Res> {
  factory $EditUserSubscriptionPlanResponseModelCopyWith(
          EditUserSubscriptionPlanResponseModel value,
          $Res Function(EditUserSubscriptionPlanResponseModel) then) =
      _$EditUserSubscriptionPlanResponseModelCopyWithImpl<$Res,
          EditUserSubscriptionPlanResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$EditUserSubscriptionPlanResponseModelCopyWithImpl<$Res,
        $Val extends EditUserSubscriptionPlanResponseModel>
    implements $EditUserSubscriptionPlanResponseModelCopyWith<$Res> {
  _$EditUserSubscriptionPlanResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$EditUserSubscriptionPlanResponseModelImplCopyWith<$Res>
    implements $EditUserSubscriptionPlanResponseModelCopyWith<$Res> {
  factory _$$EditUserSubscriptionPlanResponseModelImplCopyWith(
          _$EditUserSubscriptionPlanResponseModelImpl value,
          $Res Function(_$EditUserSubscriptionPlanResponseModelImpl) then) =
      __$$EditUserSubscriptionPlanResponseModelImplCopyWithImpl<$Res>;
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
class __$$EditUserSubscriptionPlanResponseModelImplCopyWithImpl<$Res>
    extends _$EditUserSubscriptionPlanResponseModelCopyWithImpl<$Res,
        _$EditUserSubscriptionPlanResponseModelImpl>
    implements _$$EditUserSubscriptionPlanResponseModelImplCopyWith<$Res> {
  __$$EditUserSubscriptionPlanResponseModelImplCopyWithImpl(
      _$EditUserSubscriptionPlanResponseModelImpl _value,
      $Res Function(_$EditUserSubscriptionPlanResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$EditUserSubscriptionPlanResponseModelImpl(
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
class _$EditUserSubscriptionPlanResponseModelImpl
    implements _EditUserSubscriptionPlanResponseModel {
  const _$EditUserSubscriptionPlanResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$EditUserSubscriptionPlanResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EditUserSubscriptionPlanResponseModelImplFromJson(json);

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
    return 'EditUserSubscriptionPlanResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserSubscriptionPlanResponseModelImpl &&
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
  _$$EditUserSubscriptionPlanResponseModelImplCopyWith<
          _$EditUserSubscriptionPlanResponseModelImpl>
      get copyWith => __$$EditUserSubscriptionPlanResponseModelImplCopyWithImpl<
          _$EditUserSubscriptionPlanResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditUserSubscriptionPlanResponseModelImplToJson(
      this,
    );
  }
}

abstract class _EditUserSubscriptionPlanResponseModel
    implements EditUserSubscriptionPlanResponseModel {
  const factory _EditUserSubscriptionPlanResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$EditUserSubscriptionPlanResponseModelImpl;

  factory _EditUserSubscriptionPlanResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$EditUserSubscriptionPlanResponseModelImpl.fromJson;

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
  _$$EditUserSubscriptionPlanResponseModelImplCopyWith<
          _$EditUserSubscriptionPlanResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "planCreate")
  PlanCreate? get planCreate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: "planCreate") PlanCreate? planCreate});

  $PlanCreateCopyWith<$Res>? get planCreate;
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
    Object? planCreate = freezed,
  }) {
    return _then(_value.copyWith(
      planCreate: freezed == planCreate
          ? _value.planCreate
          : planCreate // ignore: cast_nullable_to_non_nullable
              as PlanCreate?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanCreateCopyWith<$Res>? get planCreate {
    if (_value.planCreate == null) {
      return null;
    }

    return $PlanCreateCopyWith<$Res>(_value.planCreate!, (value) {
      return _then(_value.copyWith(planCreate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "planCreate") PlanCreate? planCreate});

  @override
  $PlanCreateCopyWith<$Res>? get planCreate;
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
    Object? planCreate = freezed,
  }) {
    return _then(_$DataImpl(
      planCreate: freezed == planCreate
          ? _value.planCreate
          : planCreate // ignore: cast_nullable_to_non_nullable
              as PlanCreate?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({@JsonKey(name: "planCreate") this.planCreate});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "planCreate")
  final PlanCreate? planCreate;

  @override
  String toString() {
    return 'Data(planCreate: $planCreate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.planCreate, planCreate) ||
                other.planCreate == planCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, planCreate);

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
      {@JsonKey(name: "planCreate") final PlanCreate? planCreate}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "planCreate")
  PlanCreate? get planCreate;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlanCreate _$PlanCreateFromJson(Map<String, dynamic> json) {
  return _PlanCreate.fromJson(json);
}

/// @nodoc
mixin _$PlanCreate {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "object")
  String? get object => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: "aggregate_usage")
  dynamic get aggregateUsage => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_decimal")
  String? get amountDecimal => throw _privateConstructorUsedError;
  @JsonKey(name: "billing_scheme")
  String? get billingScheme => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  int? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "interval")
  String? get interval => throw _privateConstructorUsedError;
  @JsonKey(name: "interval_count")
  int? get intervalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "livemode")
  bool? get livemode => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata")
  Metadata? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: "nickname")
  String? get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: "product")
  String? get product => throw _privateConstructorUsedError;
  @JsonKey(name: "tiers_mode")
  dynamic get tiersMode => throw _privateConstructorUsedError;
  @JsonKey(name: "transform_usage")
  dynamic get transformUsage => throw _privateConstructorUsedError;
  @JsonKey(name: "trial_period_days")
  dynamic get trialPeriodDays => throw _privateConstructorUsedError;
  @JsonKey(name: "usage_type")
  String? get usageType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanCreateCopyWith<PlanCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCreateCopyWith<$Res> {
  factory $PlanCreateCopyWith(
          PlanCreate value, $Res Function(PlanCreate) then) =
      _$PlanCreateCopyWithImpl<$Res, PlanCreate>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "active") bool? active,
      @JsonKey(name: "aggregate_usage") dynamic aggregateUsage,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "amount_decimal") String? amountDecimal,
      @JsonKey(name: "billing_scheme") String? billingScheme,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "interval") String? interval,
      @JsonKey(name: "interval_count") int? intervalCount,
      @JsonKey(name: "livemode") bool? livemode,
      @JsonKey(name: "metadata") Metadata? metadata,
      @JsonKey(name: "nickname") String? nickname,
      @JsonKey(name: "product") String? product,
      @JsonKey(name: "tiers_mode") dynamic tiersMode,
      @JsonKey(name: "transform_usage") dynamic transformUsage,
      @JsonKey(name: "trial_period_days") dynamic trialPeriodDays,
      @JsonKey(name: "usage_type") String? usageType});

  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$PlanCreateCopyWithImpl<$Res, $Val extends PlanCreate>
    implements $PlanCreateCopyWith<$Res> {
  _$PlanCreateCopyWithImpl(this._value, this._then);

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
    Object? aggregateUsage = freezed,
    Object? amount = freezed,
    Object? amountDecimal = freezed,
    Object? billingScheme = freezed,
    Object? created = freezed,
    Object? currency = freezed,
    Object? interval = freezed,
    Object? intervalCount = freezed,
    Object? livemode = freezed,
    Object? metadata = freezed,
    Object? nickname = freezed,
    Object? product = freezed,
    Object? tiersMode = freezed,
    Object? transformUsage = freezed,
    Object? trialPeriodDays = freezed,
    Object? usageType = freezed,
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
      aggregateUsage: freezed == aggregateUsage
          ? _value.aggregateUsage
          : aggregateUsage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      amountDecimal: freezed == amountDecimal
          ? _value.amountDecimal
          : amountDecimal // ignore: cast_nullable_to_non_nullable
              as String?,
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
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      intervalCount: freezed == intervalCount
          ? _value.intervalCount
          : intervalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      livemode: freezed == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      tiersMode: freezed == tiersMode
          ? _value.tiersMode
          : tiersMode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      transformUsage: freezed == transformUsage
          ? _value.transformUsage
          : transformUsage // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$PlanCreateImplCopyWith<$Res>
    implements $PlanCreateCopyWith<$Res> {
  factory _$$PlanCreateImplCopyWith(
          _$PlanCreateImpl value, $Res Function(_$PlanCreateImpl) then) =
      __$$PlanCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "object") String? object,
      @JsonKey(name: "active") bool? active,
      @JsonKey(name: "aggregate_usage") dynamic aggregateUsage,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "amount_decimal") String? amountDecimal,
      @JsonKey(name: "billing_scheme") String? billingScheme,
      @JsonKey(name: "created") int? created,
      @JsonKey(name: "currency") String? currency,
      @JsonKey(name: "interval") String? interval,
      @JsonKey(name: "interval_count") int? intervalCount,
      @JsonKey(name: "livemode") bool? livemode,
      @JsonKey(name: "metadata") Metadata? metadata,
      @JsonKey(name: "nickname") String? nickname,
      @JsonKey(name: "product") String? product,
      @JsonKey(name: "tiers_mode") dynamic tiersMode,
      @JsonKey(name: "transform_usage") dynamic transformUsage,
      @JsonKey(name: "trial_period_days") dynamic trialPeriodDays,
      @JsonKey(name: "usage_type") String? usageType});

  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$$PlanCreateImplCopyWithImpl<$Res>
    extends _$PlanCreateCopyWithImpl<$Res, _$PlanCreateImpl>
    implements _$$PlanCreateImplCopyWith<$Res> {
  __$$PlanCreateImplCopyWithImpl(
      _$PlanCreateImpl _value, $Res Function(_$PlanCreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? active = freezed,
    Object? aggregateUsage = freezed,
    Object? amount = freezed,
    Object? amountDecimal = freezed,
    Object? billingScheme = freezed,
    Object? created = freezed,
    Object? currency = freezed,
    Object? interval = freezed,
    Object? intervalCount = freezed,
    Object? livemode = freezed,
    Object? metadata = freezed,
    Object? nickname = freezed,
    Object? product = freezed,
    Object? tiersMode = freezed,
    Object? transformUsage = freezed,
    Object? trialPeriodDays = freezed,
    Object? usageType = freezed,
  }) {
    return _then(_$PlanCreateImpl(
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
      aggregateUsage: freezed == aggregateUsage
          ? _value.aggregateUsage
          : aggregateUsage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      amountDecimal: freezed == amountDecimal
          ? _value.amountDecimal
          : amountDecimal // ignore: cast_nullable_to_non_nullable
              as String?,
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
      interval: freezed == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String?,
      intervalCount: freezed == intervalCount
          ? _value.intervalCount
          : intervalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      livemode: freezed == livemode
          ? _value.livemode
          : livemode // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      tiersMode: freezed == tiersMode
          ? _value.tiersMode
          : tiersMode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      transformUsage: freezed == transformUsage
          ? _value.transformUsage
          : transformUsage // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$PlanCreateImpl implements _PlanCreate {
  const _$PlanCreateImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "object") this.object,
      @JsonKey(name: "active") this.active,
      @JsonKey(name: "aggregate_usage") this.aggregateUsage,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "amount_decimal") this.amountDecimal,
      @JsonKey(name: "billing_scheme") this.billingScheme,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "currency") this.currency,
      @JsonKey(name: "interval") this.interval,
      @JsonKey(name: "interval_count") this.intervalCount,
      @JsonKey(name: "livemode") this.livemode,
      @JsonKey(name: "metadata") this.metadata,
      @JsonKey(name: "nickname") this.nickname,
      @JsonKey(name: "product") this.product,
      @JsonKey(name: "tiers_mode") this.tiersMode,
      @JsonKey(name: "transform_usage") this.transformUsage,
      @JsonKey(name: "trial_period_days") this.trialPeriodDays,
      @JsonKey(name: "usage_type") this.usageType});

  factory _$PlanCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanCreateImplFromJson(json);

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
  @JsonKey(name: "aggregate_usage")
  final dynamic aggregateUsage;
  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "amount_decimal")
  final String? amountDecimal;
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
  @JsonKey(name: "interval")
  final String? interval;
  @override
  @JsonKey(name: "interval_count")
  final int? intervalCount;
  @override
  @JsonKey(name: "livemode")
  final bool? livemode;
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
  @JsonKey(name: "tiers_mode")
  final dynamic tiersMode;
  @override
  @JsonKey(name: "transform_usage")
  final dynamic transformUsage;
  @override
  @JsonKey(name: "trial_period_days")
  final dynamic trialPeriodDays;
  @override
  @JsonKey(name: "usage_type")
  final String? usageType;

  @override
  String toString() {
    return 'PlanCreate(id: $id, object: $object, active: $active, aggregateUsage: $aggregateUsage, amount: $amount, amountDecimal: $amountDecimal, billingScheme: $billingScheme, created: $created, currency: $currency, interval: $interval, intervalCount: $intervalCount, livemode: $livemode, metadata: $metadata, nickname: $nickname, product: $product, tiersMode: $tiersMode, transformUsage: $transformUsage, trialPeriodDays: $trialPeriodDays, usageType: $usageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanCreateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality()
                .equals(other.aggregateUsage, aggregateUsage) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountDecimal, amountDecimal) ||
                other.amountDecimal == amountDecimal) &&
            (identical(other.billingScheme, billingScheme) ||
                other.billingScheme == billingScheme) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.intervalCount, intervalCount) ||
                other.intervalCount == intervalCount) &&
            (identical(other.livemode, livemode) ||
                other.livemode == livemode) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality().equals(other.tiersMode, tiersMode) &&
            const DeepCollectionEquality()
                .equals(other.transformUsage, transformUsage) &&
            const DeepCollectionEquality()
                .equals(other.trialPeriodDays, trialPeriodDays) &&
            (identical(other.usageType, usageType) ||
                other.usageType == usageType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        object,
        active,
        const DeepCollectionEquality().hash(aggregateUsage),
        amount,
        amountDecimal,
        billingScheme,
        created,
        currency,
        interval,
        intervalCount,
        livemode,
        metadata,
        nickname,
        product,
        const DeepCollectionEquality().hash(tiersMode),
        const DeepCollectionEquality().hash(transformUsage),
        const DeepCollectionEquality().hash(trialPeriodDays),
        usageType
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanCreateImplCopyWith<_$PlanCreateImpl> get copyWith =>
      __$$PlanCreateImplCopyWithImpl<_$PlanCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanCreateImplToJson(
      this,
    );
  }
}

abstract class _PlanCreate implements PlanCreate {
  const factory _PlanCreate(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "object") final String? object,
      @JsonKey(name: "active") final bool? active,
      @JsonKey(name: "aggregate_usage") final dynamic aggregateUsage,
      @JsonKey(name: "amount") final int? amount,
      @JsonKey(name: "amount_decimal") final String? amountDecimal,
      @JsonKey(name: "billing_scheme") final String? billingScheme,
      @JsonKey(name: "created") final int? created,
      @JsonKey(name: "currency") final String? currency,
      @JsonKey(name: "interval") final String? interval,
      @JsonKey(name: "interval_count") final int? intervalCount,
      @JsonKey(name: "livemode") final bool? livemode,
      @JsonKey(name: "metadata") final Metadata? metadata,
      @JsonKey(name: "nickname") final String? nickname,
      @JsonKey(name: "product") final String? product,
      @JsonKey(name: "tiers_mode") final dynamic tiersMode,
      @JsonKey(name: "transform_usage") final dynamic transformUsage,
      @JsonKey(name: "trial_period_days") final dynamic trialPeriodDays,
      @JsonKey(name: "usage_type") final String? usageType}) = _$PlanCreateImpl;

  factory _PlanCreate.fromJson(Map<String, dynamic> json) =
      _$PlanCreateImpl.fromJson;

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
  @JsonKey(name: "aggregate_usage")
  dynamic get aggregateUsage;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "amount_decimal")
  String? get amountDecimal;
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
  @JsonKey(name: "interval")
  String? get interval;
  @override
  @JsonKey(name: "interval_count")
  int? get intervalCount;
  @override
  @JsonKey(name: "livemode")
  bool? get livemode;
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
  @JsonKey(name: "tiers_mode")
  dynamic get tiersMode;
  @override
  @JsonKey(name: "transform_usage")
  dynamic get transformUsage;
  @override
  @JsonKey(name: "trial_period_days")
  dynamic get trialPeriodDays;
  @override
  @JsonKey(name: "usage_type")
  String? get usageType;
  @override
  @JsonKey(ignore: true)
  _$$PlanCreateImplCopyWith<_$PlanCreateImpl> get copyWith =>
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

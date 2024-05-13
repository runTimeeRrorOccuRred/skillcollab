// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateUserPlanRequestModel _$CreateUserPlanRequestModelFromJson(
    Map<String, dynamic> json) {
  return _CreateUserPlanRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CreateUserPlanRequestModel {
  @JsonKey(name: "userId")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "productName")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "monthlyPlanAmount")
  int? get monthlyPlanAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "quartPlanAmount")
  int? get quartPlanAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "yearlyPlanAmount")
  int? get yearlyPlanAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserPlanRequestModelCopyWith<CreateUserPlanRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserPlanRequestModelCopyWith<$Res> {
  factory $CreateUserPlanRequestModelCopyWith(CreateUserPlanRequestModel value,
          $Res Function(CreateUserPlanRequestModel) then) =
      _$CreateUserPlanRequestModelCopyWithImpl<$Res,
          CreateUserPlanRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "productName") String? productName,
      @JsonKey(name: "monthlyPlanAmount") int? monthlyPlanAmount,
      @JsonKey(name: "quartPlanAmount") int? quartPlanAmount,
      @JsonKey(name: "yearlyPlanAmount") int? yearlyPlanAmount});
}

/// @nodoc
class _$CreateUserPlanRequestModelCopyWithImpl<$Res,
        $Val extends CreateUserPlanRequestModel>
    implements $CreateUserPlanRequestModelCopyWith<$Res> {
  _$CreateUserPlanRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? productName = freezed,
    Object? monthlyPlanAmount = freezed,
    Object? quartPlanAmount = freezed,
    Object? yearlyPlanAmount = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyPlanAmount: freezed == monthlyPlanAmount
          ? _value.monthlyPlanAmount
          : monthlyPlanAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      quartPlanAmount: freezed == quartPlanAmount
          ? _value.quartPlanAmount
          : quartPlanAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      yearlyPlanAmount: freezed == yearlyPlanAmount
          ? _value.yearlyPlanAmount
          : yearlyPlanAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserPlanRequestModelImplCopyWith<$Res>
    implements $CreateUserPlanRequestModelCopyWith<$Res> {
  factory _$$CreateUserPlanRequestModelImplCopyWith(
          _$CreateUserPlanRequestModelImpl value,
          $Res Function(_$CreateUserPlanRequestModelImpl) then) =
      __$$CreateUserPlanRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String? userId,
      @JsonKey(name: "productName") String? productName,
      @JsonKey(name: "monthlyPlanAmount") int? monthlyPlanAmount,
      @JsonKey(name: "quartPlanAmount") int? quartPlanAmount,
      @JsonKey(name: "yearlyPlanAmount") int? yearlyPlanAmount});
}

/// @nodoc
class __$$CreateUserPlanRequestModelImplCopyWithImpl<$Res>
    extends _$CreateUserPlanRequestModelCopyWithImpl<$Res,
        _$CreateUserPlanRequestModelImpl>
    implements _$$CreateUserPlanRequestModelImplCopyWith<$Res> {
  __$$CreateUserPlanRequestModelImplCopyWithImpl(
      _$CreateUserPlanRequestModelImpl _value,
      $Res Function(_$CreateUserPlanRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? productName = freezed,
    Object? monthlyPlanAmount = freezed,
    Object? quartPlanAmount = freezed,
    Object? yearlyPlanAmount = freezed,
  }) {
    return _then(_$CreateUserPlanRequestModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyPlanAmount: freezed == monthlyPlanAmount
          ? _value.monthlyPlanAmount
          : monthlyPlanAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      quartPlanAmount: freezed == quartPlanAmount
          ? _value.quartPlanAmount
          : quartPlanAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      yearlyPlanAmount: freezed == yearlyPlanAmount
          ? _value.yearlyPlanAmount
          : yearlyPlanAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserPlanRequestModelImpl implements _CreateUserPlanRequestModel {
  const _$CreateUserPlanRequestModelImpl(
      {@JsonKey(name: "userId") this.userId,
      @JsonKey(name: "productName") this.productName,
      @JsonKey(name: "monthlyPlanAmount") this.monthlyPlanAmount,
      @JsonKey(name: "quartPlanAmount") this.quartPlanAmount,
      @JsonKey(name: "yearlyPlanAmount") this.yearlyPlanAmount});

  factory _$CreateUserPlanRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateUserPlanRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "userId")
  final String? userId;
  @override
  @JsonKey(name: "productName")
  final String? productName;
  @override
  @JsonKey(name: "monthlyPlanAmount")
  final int? monthlyPlanAmount;
  @override
  @JsonKey(name: "quartPlanAmount")
  final int? quartPlanAmount;
  @override
  @JsonKey(name: "yearlyPlanAmount")
  final int? yearlyPlanAmount;

  @override
  String toString() {
    return 'CreateUserPlanRequestModel(userId: $userId, productName: $productName, monthlyPlanAmount: $monthlyPlanAmount, quartPlanAmount: $quartPlanAmount, yearlyPlanAmount: $yearlyPlanAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserPlanRequestModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.monthlyPlanAmount, monthlyPlanAmount) ||
                other.monthlyPlanAmount == monthlyPlanAmount) &&
            (identical(other.quartPlanAmount, quartPlanAmount) ||
                other.quartPlanAmount == quartPlanAmount) &&
            (identical(other.yearlyPlanAmount, yearlyPlanAmount) ||
                other.yearlyPlanAmount == yearlyPlanAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, productName,
      monthlyPlanAmount, quartPlanAmount, yearlyPlanAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserPlanRequestModelImplCopyWith<_$CreateUserPlanRequestModelImpl>
      get copyWith => __$$CreateUserPlanRequestModelImplCopyWithImpl<
          _$CreateUserPlanRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserPlanRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CreateUserPlanRequestModel
    implements CreateUserPlanRequestModel {
  const factory _CreateUserPlanRequestModel(
          {@JsonKey(name: "userId") final String? userId,
          @JsonKey(name: "productName") final String? productName,
          @JsonKey(name: "monthlyPlanAmount") final int? monthlyPlanAmount,
          @JsonKey(name: "quartPlanAmount") final int? quartPlanAmount,
          @JsonKey(name: "yearlyPlanAmount") final int? yearlyPlanAmount}) =
      _$CreateUserPlanRequestModelImpl;

  factory _CreateUserPlanRequestModel.fromJson(Map<String, dynamic> json) =
      _$CreateUserPlanRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "userId")
  String? get userId;
  @override
  @JsonKey(name: "productName")
  String? get productName;
  @override
  @JsonKey(name: "monthlyPlanAmount")
  int? get monthlyPlanAmount;
  @override
  @JsonKey(name: "quartPlanAmount")
  int? get quartPlanAmount;
  @override
  @JsonKey(name: "yearlyPlanAmount")
  int? get yearlyPlanAmount;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserPlanRequestModelImplCopyWith<_$CreateUserPlanRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateUserPlanResponseModel _$CreateUserPlanResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateUserPlanResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateUserPlanResponseModel {
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
  $CreateUserPlanResponseModelCopyWith<CreateUserPlanResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserPlanResponseModelCopyWith<$Res> {
  factory $CreateUserPlanResponseModelCopyWith(
          CreateUserPlanResponseModel value,
          $Res Function(CreateUserPlanResponseModel) then) =
      _$CreateUserPlanResponseModelCopyWithImpl<$Res,
          CreateUserPlanResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "isSuccess") bool? isSuccess,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateUserPlanResponseModelCopyWithImpl<$Res,
        $Val extends CreateUserPlanResponseModel>
    implements $CreateUserPlanResponseModelCopyWith<$Res> {
  _$CreateUserPlanResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateUserPlanResponseModelImplCopyWith<$Res>
    implements $CreateUserPlanResponseModelCopyWith<$Res> {
  factory _$$CreateUserPlanResponseModelImplCopyWith(
          _$CreateUserPlanResponseModelImpl value,
          $Res Function(_$CreateUserPlanResponseModelImpl) then) =
      __$$CreateUserPlanResponseModelImplCopyWithImpl<$Res>;
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
class __$$CreateUserPlanResponseModelImplCopyWithImpl<$Res>
    extends _$CreateUserPlanResponseModelCopyWithImpl<$Res,
        _$CreateUserPlanResponseModelImpl>
    implements _$$CreateUserPlanResponseModelImplCopyWith<$Res> {
  __$$CreateUserPlanResponseModelImplCopyWithImpl(
      _$CreateUserPlanResponseModelImpl _value,
      $Res Function(_$CreateUserPlanResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateUserPlanResponseModelImpl(
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
class _$CreateUserPlanResponseModelImpl
    implements _CreateUserPlanResponseModel {
  const _$CreateUserPlanResponseModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "isSuccess") this.isSuccess,
      @JsonKey(name: "data") this.data});

  factory _$CreateUserPlanResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateUserPlanResponseModelImplFromJson(json);

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
    return 'CreateUserPlanResponseModel(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserPlanResponseModelImpl &&
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
  _$$CreateUserPlanResponseModelImplCopyWith<_$CreateUserPlanResponseModelImpl>
      get copyWith => __$$CreateUserPlanResponseModelImplCopyWithImpl<
          _$CreateUserPlanResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserPlanResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CreateUserPlanResponseModel
    implements CreateUserPlanResponseModel {
  const factory _CreateUserPlanResponseModel(
          {@JsonKey(name: "code") final int? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "isSuccess") final bool? isSuccess,
          @JsonKey(name: "data") final Data? data}) =
      _$CreateUserPlanResponseModelImpl;

  factory _CreateUserPlanResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreateUserPlanResponseModelImpl.fromJson;

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
  _$$CreateUserPlanResponseModelImplCopyWith<_$CreateUserPlanResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "productId")
  String? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "monthlyPlan")
  Plan? get monthlyPlan => throw _privateConstructorUsedError;
  @JsonKey(name: "quartPlan")
  Plan? get quartPlan => throw _privateConstructorUsedError;
  @JsonKey(name: "annualPlan")
  Plan? get annualPlan => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "productId") String? productId,
      @JsonKey(name: "monthlyPlan") Plan? monthlyPlan,
      @JsonKey(name: "quartPlan") Plan? quartPlan,
      @JsonKey(name: "annualPlan") Plan? annualPlan});

  $PlanCopyWith<$Res>? get monthlyPlan;
  $PlanCopyWith<$Res>? get quartPlan;
  $PlanCopyWith<$Res>? get annualPlan;
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
    Object? productId = freezed,
    Object? monthlyPlan = freezed,
    Object? quartPlan = freezed,
    Object? annualPlan = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyPlan: freezed == monthlyPlan
          ? _value.monthlyPlan
          : monthlyPlan // ignore: cast_nullable_to_non_nullable
              as Plan?,
      quartPlan: freezed == quartPlan
          ? _value.quartPlan
          : quartPlan // ignore: cast_nullable_to_non_nullable
              as Plan?,
      annualPlan: freezed == annualPlan
          ? _value.annualPlan
          : annualPlan // ignore: cast_nullable_to_non_nullable
              as Plan?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanCopyWith<$Res>? get monthlyPlan {
    if (_value.monthlyPlan == null) {
      return null;
    }

    return $PlanCopyWith<$Res>(_value.monthlyPlan!, (value) {
      return _then(_value.copyWith(monthlyPlan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanCopyWith<$Res>? get quartPlan {
    if (_value.quartPlan == null) {
      return null;
    }

    return $PlanCopyWith<$Res>(_value.quartPlan!, (value) {
      return _then(_value.copyWith(quartPlan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanCopyWith<$Res>? get annualPlan {
    if (_value.annualPlan == null) {
      return null;
    }

    return $PlanCopyWith<$Res>(_value.annualPlan!, (value) {
      return _then(_value.copyWith(annualPlan: value) as $Val);
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
  $Res call(
      {@JsonKey(name: "productId") String? productId,
      @JsonKey(name: "monthlyPlan") Plan? monthlyPlan,
      @JsonKey(name: "quartPlan") Plan? quartPlan,
      @JsonKey(name: "annualPlan") Plan? annualPlan});

  @override
  $PlanCopyWith<$Res>? get monthlyPlan;
  @override
  $PlanCopyWith<$Res>? get quartPlan;
  @override
  $PlanCopyWith<$Res>? get annualPlan;
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
    Object? productId = freezed,
    Object? monthlyPlan = freezed,
    Object? quartPlan = freezed,
    Object? annualPlan = freezed,
  }) {
    return _then(_$DataImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyPlan: freezed == monthlyPlan
          ? _value.monthlyPlan
          : monthlyPlan // ignore: cast_nullable_to_non_nullable
              as Plan?,
      quartPlan: freezed == quartPlan
          ? _value.quartPlan
          : quartPlan // ignore: cast_nullable_to_non_nullable
              as Plan?,
      annualPlan: freezed == annualPlan
          ? _value.annualPlan
          : annualPlan // ignore: cast_nullable_to_non_nullable
              as Plan?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "productId") this.productId,
      @JsonKey(name: "monthlyPlan") this.monthlyPlan,
      @JsonKey(name: "quartPlan") this.quartPlan,
      @JsonKey(name: "annualPlan") this.annualPlan});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "productId")
  final String? productId;
  @override
  @JsonKey(name: "monthlyPlan")
  final Plan? monthlyPlan;
  @override
  @JsonKey(name: "quartPlan")
  final Plan? quartPlan;
  @override
  @JsonKey(name: "annualPlan")
  final Plan? annualPlan;

  @override
  String toString() {
    return 'Data(productId: $productId, monthlyPlan: $monthlyPlan, quartPlan: $quartPlan, annualPlan: $annualPlan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.monthlyPlan, monthlyPlan) ||
                other.monthlyPlan == monthlyPlan) &&
            (identical(other.quartPlan, quartPlan) ||
                other.quartPlan == quartPlan) &&
            (identical(other.annualPlan, annualPlan) ||
                other.annualPlan == annualPlan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, monthlyPlan, quartPlan, annualPlan);

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
      {@JsonKey(name: "productId") final String? productId,
      @JsonKey(name: "monthlyPlan") final Plan? monthlyPlan,
      @JsonKey(name: "quartPlan") final Plan? quartPlan,
      @JsonKey(name: "annualPlan") final Plan? annualPlan}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "productId")
  String? get productId;
  @override
  @JsonKey(name: "monthlyPlan")
  Plan? get monthlyPlan;
  @override
  @JsonKey(name: "quartPlan")
  Plan? get quartPlan;
  @override
  @JsonKey(name: "annualPlan")
  Plan? get annualPlan;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return _Plan.fromJson(json);
}

/// @nodoc
mixin _$Plan {
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
  $PlanCopyWith<Plan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res, Plan>;
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
class _$PlanCopyWithImpl<$Res, $Val extends Plan>
    implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

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
abstract class _$$PlanImplCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$$PlanImplCopyWith(
          _$PlanImpl value, $Res Function(_$PlanImpl) then) =
      __$$PlanImplCopyWithImpl<$Res>;
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
class __$$PlanImplCopyWithImpl<$Res>
    extends _$PlanCopyWithImpl<$Res, _$PlanImpl>
    implements _$$PlanImplCopyWith<$Res> {
  __$$PlanImplCopyWithImpl(_$PlanImpl _value, $Res Function(_$PlanImpl) _then)
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
    return _then(_$PlanImpl(
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
class _$PlanImpl implements _Plan {
  const _$PlanImpl(
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

  factory _$PlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanImplFromJson(json);

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
    return 'Plan(id: $id, object: $object, active: $active, aggregateUsage: $aggregateUsage, amount: $amount, amountDecimal: $amountDecimal, billingScheme: $billingScheme, created: $created, currency: $currency, interval: $interval, intervalCount: $intervalCount, livemode: $livemode, metadata: $metadata, nickname: $nickname, product: $product, tiersMode: $tiersMode, transformUsage: $transformUsage, trialPeriodDays: $trialPeriodDays, usageType: $usageType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanImpl &&
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
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      __$$PlanImplCopyWithImpl<_$PlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanImplToJson(
      this,
    );
  }
}

abstract class _Plan implements Plan {
  const factory _Plan(
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
      @JsonKey(name: "usage_type") final String? usageType}) = _$PlanImpl;

  factory _Plan.fromJson(Map<String, dynamic> json) = _$PlanImpl.fromJson;

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
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
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

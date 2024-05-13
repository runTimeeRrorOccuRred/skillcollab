// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_group_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditGroupPlanRequestModelImpl _$$EditGroupPlanRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditGroupPlanRequestModelImpl(
      groupId: json['groupId'] as String?,
      productId: json['productId'] as String?,
      monthlyPlanId: json['monthlyPlanId'] as String?,
      monthlyPlanAmount: json['monthlyPlanAmount'] as int?,
      yearlyPlanId: json['yearlyPlanId'] as String?,
      yearlyPlanAmount: json['yearlyPlanAmount'] as int?,
      quartPlanId: json['quartPlanId'] as String?,
      quartPlanAmount: json['quartPlanAmount'] as int?,
    );

Map<String, dynamic> _$$EditGroupPlanRequestModelImplToJson(
        _$EditGroupPlanRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'productId': instance.productId,
      'monthlyPlanId': instance.monthlyPlanId,
      'monthlyPlanAmount': instance.monthlyPlanAmount,
      'yearlyPlanId': instance.yearlyPlanId,
      'yearlyPlanAmount': instance.yearlyPlanAmount,
      'quartPlanId': instance.quartPlanId,
      'quartPlanAmount': instance.quartPlanAmount,
    };

_$EditGroupPlanResponseModelImpl _$$EditGroupPlanResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditGroupPlanResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EditGroupPlanResponseModelImplToJson(
        _$EditGroupPlanResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      monthPlanCreate: json['monthPlanCreate'] == null
          ? null
          : PlanCreate.fromJson(
              json['monthPlanCreate'] as Map<String, dynamic>),
      yearlyPlanCreate: json['yearlyPlanCreate'] == null
          ? null
          : PlanCreate.fromJson(
              json['yearlyPlanCreate'] as Map<String, dynamic>),
      quadPlanCreate: json['quadPlanCreate'] == null
          ? null
          : PlanCreate.fromJson(json['quadPlanCreate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'monthPlanCreate': instance.monthPlanCreate,
      'yearlyPlanCreate': instance.yearlyPlanCreate,
      'quadPlanCreate': instance.quadPlanCreate,
    };

_$PlanCreateImpl _$$PlanCreateImplFromJson(Map<String, dynamic> json) =>
    _$PlanCreateImpl(
      id: json['id'] as String?,
      object: json['object'] as String?,
      active: json['active'] as bool?,
      aggregateUsage: json['aggregate_usage'],
      amount: json['amount'] as int?,
      amountDecimal: json['amount_decimal'] as String?,
      billingScheme: json['billing_scheme'] as String?,
      created: json['created'] as int?,
      currency: json['currency'] as String?,
      interval: json['interval'] as String?,
      intervalCount: json['interval_count'] as int?,
      livemode: json['livemode'] as bool?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      nickname: json['nickname'] as String?,
      product: json['product'] as String?,
      tiersMode: json['tiers_mode'],
      transformUsage: json['transform_usage'],
      trialPeriodDays: json['trial_period_days'],
      usageType: json['usage_type'] as String?,
    );

Map<String, dynamic> _$$PlanCreateImplToJson(_$PlanCreateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'active': instance.active,
      'aggregate_usage': instance.aggregateUsage,
      'amount': instance.amount,
      'amount_decimal': instance.amountDecimal,
      'billing_scheme': instance.billingScheme,
      'created': instance.created,
      'currency': instance.currency,
      'interval': instance.interval,
      'interval_count': instance.intervalCount,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'nickname': instance.nickname,
      'product': instance.product,
      'tiers_mode': instance.tiersMode,
      'transform_usage': instance.transformUsage,
      'trial_period_days': instance.trialPeriodDays,
      'usage_type': instance.usageType,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl();

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{};

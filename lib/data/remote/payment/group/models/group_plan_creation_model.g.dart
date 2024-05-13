// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_plan_creation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupPlanCreationRequestModelImpl
    _$$GroupPlanCreationRequestModelImplFromJson(Map<String, dynamic> json) =>
        _$GroupPlanCreationRequestModelImpl(
          groupId: json['groupId'] as String?,
          productName: json['productName'] as String?,
          monthlyPlanAmount: json['monthlyPlanAmount'] as int?,
          quartPlanAmount: json['quartPlanAmount'] as int?,
          yearlyPlanAmount: json['yearlyPlanAmount'] as int?,
        );

Map<String, dynamic> _$$GroupPlanCreationRequestModelImplToJson(
        _$GroupPlanCreationRequestModelImpl instance) =>
    <String, dynamic>{
      'groupId': instance.groupId,
      'productName': instance.productName,
      'monthlyPlanAmount': instance.monthlyPlanAmount,
      'quartPlanAmount': instance.quartPlanAmount,
      'yearlyPlanAmount': instance.yearlyPlanAmount,
    };

_$GroupPlanCreationResponseModelImpl
    _$$GroupPlanCreationResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$GroupPlanCreationResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GroupPlanCreationResponseModelImplToJson(
        _$GroupPlanCreationResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      productId: json['productId'] as String?,
      monthlyPlan: json['monthlyPlan'] == null
          ? null
          : Plan.fromJson(json['monthlyPlan'] as Map<String, dynamic>),
      quartPlan: json['quartPlan'] == null
          ? null
          : Plan.fromJson(json['quartPlan'] as Map<String, dynamic>),
      annualPlan: json['annualPlan'] == null
          ? null
          : Plan.fromJson(json['annualPlan'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'monthlyPlan': instance.monthlyPlan,
      'quartPlan': instance.quartPlan,
      'annualPlan': instance.annualPlan,
    };

_$PlanImpl _$$PlanImplFromJson(Map<String, dynamic> json) => _$PlanImpl(
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

Map<String, dynamic> _$$PlanImplToJson(_$PlanImpl instance) =>
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

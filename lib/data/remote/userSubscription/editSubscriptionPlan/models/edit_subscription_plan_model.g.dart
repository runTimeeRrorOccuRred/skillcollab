// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_subscription_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditUserSubscriptionPlanRequestModelImpl
    _$$EditUserSubscriptionPlanRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$EditUserSubscriptionPlanRequestModelImpl(
          userId: json['userId'] as String?,
          planId: json['planId'] as String?,
          productId: json['productId'] as String?,
          planAmount: json['planAmount'] as int?,
        );

Map<String, dynamic> _$$EditUserSubscriptionPlanRequestModelImplToJson(
        _$EditUserSubscriptionPlanRequestModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'planId': instance.planId,
      'productId': instance.productId,
      'planAmount': instance.planAmount,
    };

_$EditUserSubscriptionPlanResponseModelImpl
    _$$EditUserSubscriptionPlanResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$EditUserSubscriptionPlanResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: json['data'] == null
              ? null
              : Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$EditUserSubscriptionPlanResponseModelImplToJson(
        _$EditUserSubscriptionPlanResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      planCreate: json['planCreate'] == null
          ? null
          : PlanCreate.fromJson(json['planCreate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'planCreate': instance.planCreate,
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

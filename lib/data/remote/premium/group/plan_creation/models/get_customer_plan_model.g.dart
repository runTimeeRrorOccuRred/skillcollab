// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_customer_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCustomerPlanRequestModelImpl _$$GetCustomerPlanRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCustomerPlanRequestModelImpl(
      product: json['product'] as String?,
    );

Map<String, dynamic> _$$GetCustomerPlanRequestModelImplToJson(
        _$GetCustomerPlanRequestModelImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
    };

_$GetCustomerPlanResponseModelImpl _$$GetCustomerPlanResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetCustomerPlanResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetCustomerPlanResponseModelImplToJson(
        _$GetCustomerPlanResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      object: json['object'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['has_more'] as bool?,
      nextPage: json['next_page'],
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'object': instance.object,
      'data': instance.data,
      'has_more': instance.hasMore,
      'next_page': instance.nextPage,
      'url': instance.url,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: json['id'] as String?,
      object: json['object'] as String?,
      active: json['active'] as bool?,
      billingScheme: json['billing_scheme'] as String?,
      created: json['created'] as int?,
      currency: json['currency'] as String?,
      customUnitAmount: json['custom_unit_amount'],
      livemode: json['livemode'] as bool?,
      lookupKey: json['lookup_key'],
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      nickname: json['nickname'] as String?,
      product: json['product'] as String?,
      recurring: json['recurring'] == null
          ? null
          : Recurring.fromJson(json['recurring'] as Map<String, dynamic>),
      taxBehavior: json['tax_behavior'] as String?,
      tiersMode: json['tiers_mode'],
      transformQuantity: json['transform_quantity'],
      type: json['type'] as String?,
      unitAmount: json['unit_amount'] as int?,
      unitAmountDecimal: json['unit_amount_decimal'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'active': instance.active,
      'billing_scheme': instance.billingScheme,
      'created': instance.created,
      'currency': instance.currency,
      'custom_unit_amount': instance.customUnitAmount,
      'livemode': instance.livemode,
      'lookup_key': instance.lookupKey,
      'metadata': instance.metadata,
      'nickname': instance.nickname,
      'product': instance.product,
      'recurring': instance.recurring,
      'tax_behavior': instance.taxBehavior,
      'tiers_mode': instance.tiersMode,
      'transform_quantity': instance.transformQuantity,
      'type': instance.type,
      'unit_amount': instance.unitAmount,
      'unit_amount_decimal': instance.unitAmountDecimal,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl();

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{};

_$RecurringImpl _$$RecurringImplFromJson(Map<String, dynamic> json) =>
    _$RecurringImpl(
      aggregateUsage: json['aggregate_usage'],
      interval: json['interval'] as String?,
      intervalCount: json['interval_count'] as int?,
      trialPeriodDays: json['trial_period_days'],
      usageType: json['usage_type'] as String?,
    );

Map<String, dynamic> _$$RecurringImplToJson(_$RecurringImpl instance) =>
    <String, dynamic>{
      'aggregate_usage': instance.aggregateUsage,
      'interval': instance.interval,
      'interval_count': instance.intervalCount,
      'trial_period_days': instance.trialPeriodDays,
      'usage_type': instance.usageType,
    };

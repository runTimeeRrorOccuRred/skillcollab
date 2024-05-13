// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_group_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditGroupPlanRequestModelImpl _$$EditGroupPlanRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EditGroupPlanRequestModelImpl(
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
      'productId': instance.productId,
      'monthlyPlanId': instance.monthlyPlanId,
      'monthlyPlanAmount': instance.monthlyPlanAmount,
      'yearlyPlanId': instance.yearlyPlanId,
      'yearlyPlanAmount': instance.yearlyPlanAmount,
      'quartPlanId': instance.quartPlanId,
      'quartPlanAmount': instance.quartPlanAmount,
    };

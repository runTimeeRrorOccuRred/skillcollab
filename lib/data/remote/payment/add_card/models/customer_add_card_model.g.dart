// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_add_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCustomerCardResponseModelImpl _$$AddCustomerCardResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCustomerCardResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddCustomerCardResponseModelImplToJson(
        _$AddCustomerCardResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String?,
      object: json['object'] as String?,
      addressCity: json['address_city'],
      addressCountry: json['address_country'],
      addressLine1: json['address_line1'],
      addressLine1Check: json['address_line1_check'],
      addressLine2: json['address_line2'],
      addressState: json['address_state'],
      addressZip: json['address_zip'],
      addressZipCheck: json['address_zip_check'],
      brand: json['brand'] as String?,
      country: json['country'] as String?,
      customer: json['customer'] as String?,
      cvcCheck: json['cvc_check'] as String?,
      dynamicLast4: json['dynamic_last4'],
      expMonth: json['exp_month'] as int?,
      expYear: json['exp_year'] as int?,
      fingerprint: json['fingerprint'] as String?,
      funding: json['funding'] as String?,
      last4: json['last4'] as String?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      name: json['name'] as String?,
      tokenizationMethod: json['tokenization_method'],
      wallet: json['wallet'],
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'address_city': instance.addressCity,
      'address_country': instance.addressCountry,
      'address_line1': instance.addressLine1,
      'address_line1_check': instance.addressLine1Check,
      'address_line2': instance.addressLine2,
      'address_state': instance.addressState,
      'address_zip': instance.addressZip,
      'address_zip_check': instance.addressZipCheck,
      'brand': instance.brand,
      'country': instance.country,
      'customer': instance.customer,
      'cvc_check': instance.cvcCheck,
      'dynamic_last4': instance.dynamicLast4,
      'exp_month': instance.expMonth,
      'exp_year': instance.expYear,
      'fingerprint': instance.fingerprint,
      'funding': instance.funding,
      'last4': instance.last4,
      'metadata': instance.metadata,
      'name': instance.name,
      'tokenization_method': instance.tokenizationMethod,
      'wallet': instance.wallet,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl();

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{};

_$AddCustomerCardRequestModelImpl _$$AddCustomerCardRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCustomerCardRequestModelImpl(
      name: json['name'] as String?,
      number: json['number'] as String?,
      expMonth: json['exp_month'] as int?,
      expYear: json['exp_year'] as int?,
      cvc: json['cvc'] as String?,
    );

Map<String, dynamic> _$$AddCustomerCardRequestModelImplToJson(
        _$AddCustomerCardRequestModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'exp_month': instance.expMonth,
      'exp_year': instance.expYear,
      'cvc': instance.cvc,
    };

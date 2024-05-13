// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_groups_with_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetAllGroupsWithLoginRequestModelImpl
    _$$GetAllGroupsWithLoginRequestModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllGroupsWithLoginRequestModelImpl(
          searchKey: json['searchKey'] as String?,
          interests: json['interests'] as String?,
          timeFilter: json['timeFilter'] as String?,
          feedFilter: json['feedFilter'] as String?,
        );

Map<String, dynamic> _$$GetAllGroupsWithLoginRequestModelImplToJson(
        _$GetAllGroupsWithLoginRequestModelImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'interests': instance.interests,
      'timeFilter': instance.timeFilter,
      'feedFilter': instance.feedFilter,
    };

_$GetAllGroupsWithLoginResponseModelImpl
    _$$GetAllGroupsWithLoginResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$GetAllGroupsWithLoginResponseModelImpl(
          code: json['code'] as int?,
          message: json['message'] as String?,
          isSuccess: json['isSuccess'] as bool?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => GroupDatum.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GetAllGroupsWithLoginResponseModelImplToJson(
        _$GetAllGroupsWithLoginResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

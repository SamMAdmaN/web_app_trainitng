// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Persons _$$_PersonsFromJson(Map<String, dynamic> json) => _$_Persons(
      personsInfo: (json['data'] as List<dynamic>?)
          ?.map((e) => PersonsInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      page: json['page'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$_PersonsToJson(_$_Persons instance) =>
    <String, dynamic>{
      'data': instance.personsInfo,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
    };

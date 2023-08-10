// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonsInfo _$$_PersonsInfoFromJson(Map<String, dynamic> json) =>
    _$_PersonsInfo(
      id: json['id'] as String?,
      title: json['title'],
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$$_PersonsInfoToJson(_$_PersonsInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'picture': instance.picture,
    };

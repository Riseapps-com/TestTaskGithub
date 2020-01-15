// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_internal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonInternal _$PersonInternalFromJson(Map<String, dynamic> json) {
  return PersonInternal(
    name: json['name'] as String,
    email: json['email'] as String,
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$PersonInternalToJson(PersonInternal instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'date': instance.date,
    };

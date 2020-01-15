// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parrent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parent _$ParentFromJson(Map<String, dynamic> json) {
  return Parent(
    url: json['url'] as String,
    sha: json['sha'] as String,
  );
}

Map<String, dynamic> _$ParentToJson(Parent instance) => <String, dynamic>{
      'url': instance.url,
      'sha': instance.sha,
    };

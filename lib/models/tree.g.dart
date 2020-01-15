// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tree _$TreeFromJson(Map<String, dynamic> json) {
  return Tree(
    url: json['url'] as String,
    sha: json['sha'] as String,
  );
}

Map<String, dynamic> _$TreeToJson(Tree instance) => <String, dynamic>{
      'url': instance.url,
      'sha': instance.sha,
    };

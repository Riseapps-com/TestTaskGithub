// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommitResponse _$CommitResponseFromJson(Map<String, dynamic> json) {
  return CommitResponse(
    url: json['url'] as String,
    sha: json['sha'] as String,
    nodeId: json['node_id'] as String,
    htmlUrl: json['html_url'] as String,
    commentsUrl: json['comments_url'] as String,
    commit: json['commit'] == null
        ? null
        : Commit.fromJson(json['commit'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : Person.fromJson(json['author'] as Map<String, dynamic>),
    committer: json['committer'] == null
        ? null
        : Person.fromJson(json['committer'] as Map<String, dynamic>),
    parents: (json['parents'] as List)
        ?.map((e) =>
            e == null ? null : Parent.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CommitResponseToJson(CommitResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'sha': instance.sha,
      'node_id': instance.nodeId,
      'html_url': instance.htmlUrl,
      'comments_url': instance.commentsUrl,
      'commit': instance.commit?.toJson(),
      'author': instance.author?.toJson(),
      'committer': instance.committer?.toJson(),
      'parents': instance.parents?.map((e) => e?.toJson())?.toList(),
    };

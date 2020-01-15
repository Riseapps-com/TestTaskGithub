// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commit _$CommitFromJson(Map<String, dynamic> json) {
  return Commit(
    url: json['url'] as String,
    author: json['author'] == null
        ? null
        : PersonInternal.fromJson(json['author'] as Map<String, dynamic>),
    committer: json['committer'] == null
        ? null
        : PersonInternal.fromJson(json['committer'] as Map<String, dynamic>),
    message: json['message'] as String,
    tree: json['tree'] == null
        ? null
        : Tree.fromJson(json['tree'] as Map<String, dynamic>),
    commentCount: json['comment_count'] as int,
    verification: json['verification'] == null
        ? null
        : Verification.fromJson(json['verification'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CommitToJson(Commit instance) => <String, dynamic>{
      'url': instance.url,
      'author': instance.author?.toJson(),
      'committer': instance.committer?.toJson(),
      'message': instance.message,
      'tree': instance.tree?.toJson(),
      'comment_count': instance.commentCount,
      'verification': instance.verification?.toJson(),
    };

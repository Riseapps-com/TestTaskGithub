import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_github_task/models/person_internal.dart';
import 'package:test_github_task/models/tree.dart';
import 'package:test_github_task/models/verification.dart';
import 'package:json_annotation/json_annotation.dart';

part 'commit.g.dart';

@JsonSerializable(explicitToJson: true)
class Commit extends Equatable {
  final String url;
  final PersonInternal author;
  final PersonInternal committer;
  final String message;
  final Tree tree;
  @JsonKey(name: 'comment_count')
  final int commentCount;
  final Verification verification;

  Commit(
      {@required this.url,
      @required this.author,
      @required this.committer,
      @required this.message,
      @required this.tree,
      @required this.commentCount,
      @required this.verification})
      : super([
          url,
          author,
          committer,
          message,
          tree,
          commentCount,
          verification
        ]);

  factory Commit.fromJson(Map<String, dynamic> json) => _$CommitFromJson(json);

  Map<String, dynamic> toJson() => _$CommitToJson(this);

  @override
  String toString() {
    return 'Commit{url: $url, author: $author, committer: $committer, message: $message, tree: $tree, commentCount: $commentCount, verification: $verification}';
  }
}

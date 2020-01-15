import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_github_task/models/person.dart';
import 'package:test_github_task/models/commit.dart';
import 'package:test_github_task/models/parrent.dart';
import 'package:json_annotation/json_annotation.dart';

part 'commit_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CommitResponse extends Equatable {
  final String url;
  final String sha;
  @JsonKey(name: 'node_id')
  final String nodeId;
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @JsonKey(name: 'comments_url')
  final String commentsUrl;
  final Commit commit;
  final Person author;
  final Person committer;
  final List<Parent> parents;

  CommitResponse(
      {@required this.url,
      @required this.sha,
      @required this.nodeId,
      @required this.htmlUrl,
      @required this.commentsUrl,
      @required this.commit,
      @required this.author,
      @required this.committer,
      @required this.parents})
      : super([
          url,
          sha,
          nodeId,
          htmlUrl,
          commentsUrl,
          commit,
          author,
          committer,
          parents
        ]);

  factory CommitResponse.fromJson(Map<String, dynamic> json) => _$CommitResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CommitResponseToJson(this);

  @override
  String toString() {
    return 'CommitResponse{url: $url, sha: $sha, nodeId: $nodeId, htmlUrl: $htmlUrl, commentsUrl: $commentsUrl, commit: $commit, author: $author, committer: $committer, parents: $parents}';
  }
}

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'tree.g.dart';

@JsonSerializable(explicitToJson: true)
class Tree extends Equatable {
  final String url;
  final String sha;

  Tree({@required this.url, @required this.sha}) : super([url, sha]);

  factory Tree.fromJson(Map<String, dynamic> json) => _$TreeFromJson(json);

  Map<String, dynamic> toJson() => _$TreeToJson(this);

  @override
  String toString() {
    return 'Tree{url: $url, sha: $sha}';
  }
}

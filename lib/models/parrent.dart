import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'parrent.g.dart';

@JsonSerializable(explicitToJson: true)
class Parent extends Equatable {
  final String url;
  final String sha;

  Parent({@required this.url, @required this.sha}) : super([url, sha]);

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);

  Map<String, dynamic> toJson() => _$ParentToJson(this);

  @override
  String toString() {
    return 'Parent{url: $url, sha: $sha}';
  }
}

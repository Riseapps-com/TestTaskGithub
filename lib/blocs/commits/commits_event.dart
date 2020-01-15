import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CommitsEvent extends Equatable {
  CommitsEvent([List props = const []]) : super(props);
}

class FetchCommits extends CommitsEvent {
  final String ownerName;
  final String repoName;

  FetchCommits({this.ownerName, this.repoName})
      : assert(ownerName != null && repoName != null),
        super([ownerName, repoName]);

  @override
  String toString() {
    return 'FetchCommits{ownerName: $ownerName, repoName: $repoName}';
  }
}

class ClearCommits extends CommitsEvent {
  @override
  String toString() => 'ClearCommits{}';
}

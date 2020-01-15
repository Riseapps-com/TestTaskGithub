import 'package:equatable/equatable.dart';
import 'package:test_github_task/models/models.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CommitsState extends Equatable {
  CommitsState([List props = const []]) : super(props);
}

class CommitsEmpty extends CommitsState {
  @override
  String toString() => 'CommitsEmpty{}';
}

class CommitsLoading extends CommitsState {
  @override
  String toString() => 'CommitsLoading{}';
}

class CommitsLoaded extends CommitsState {
  final List<CommitResponse> commits;

  CommitsLoaded({@required this.commits})
      : assert(commits != null),
        super([commits]);

  @override
  String toString() => 'CommitsLoaded{countries: $commits}';
}

class CommitsError extends CommitsState {
  final String error;

  CommitsError({@required this.error})
      : assert(error != null),
        super([error]);

  @override
  String toString() => 'CommitsError{error: $error}';
}

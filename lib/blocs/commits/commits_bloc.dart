import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:test_github_task/blocs/blocs.dart';
import 'package:test_github_task/models/commit_response.dart';
import 'package:test_github_task/repositories/repositories.dart';
import 'package:meta/meta.dart';

class CommitsBloc extends Bloc<CommitsEvent, CommitsState> {
  final GitHubRepository repository;

  CommitsBloc({@required this.repository}) : assert(repository != null);

  @override
  CommitsState get initialState => CommitsEmpty();

  @override
  Stream<CommitsState> mapEventToState(CommitsEvent event) async* {
    if (event is FetchCommits) {
      yield* _mapFetchCommitsToState(event);
    } else if (event is ClearCommits) {
      yield* _mapClearAllCountriesToState();
    }
  }

  Stream<CommitsState> _mapFetchCommitsToState(FetchCommits event) async* {
    yield CommitsLoading();
    try {
      final List<CommitResponse> commits =
          await repository.fetchCommits(event.ownerName, event.repoName);
      yield CommitsLoaded(commits: commits);
    } on DioError catch (e) {
      yield CommitsError(error: e.message);
    }
  }

  Stream<CommitsState> _mapClearAllCountriesToState() async* {
    yield CommitsEmpty();
  }
}

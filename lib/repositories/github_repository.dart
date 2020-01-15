import 'package:test_github_task/models/models.dart';
import 'package:test_github_task/network/github_api_client.dart';
import 'package:meta/meta.dart';

class GitHubRepository {
  final GitHubAPIClient client;

  GitHubRepository({@required this.client}) : assert(client != null);

  Future<List<CommitResponse>> fetchCommits(
          String ownerName, String repoName) async =>
      client.fetchCommits(ownerName, repoName);
}

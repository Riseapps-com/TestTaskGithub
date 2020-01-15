import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test_github_task/models/models.dart';
import 'package:meta/meta.dart';

class GitHubAPIClient {
  static const baseUrl = 'https://api.github.com';
  static const connectTimeout = 8000;
  static const receiveTimeout = 8000;
  static const sendTimeout = 8000;

  final Dio dio;

  GitHubAPIClient({@required this.dio}) : assert(dio != null);

  Future<List<CommitResponse>> fetchCommits(
      String ownerName, String repoName) async {
    final response =
        await dio.get('$baseUrl/repos/$ownerName/$repoName/commits');
    return (jsonDecode(response.data) as List)
        .map((e) => CommitResponse.fromJson(e))
        .toList();
  }
}

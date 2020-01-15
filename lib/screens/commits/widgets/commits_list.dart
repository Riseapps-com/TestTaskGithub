import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_github_task/models/commit_response.dart';
import 'package:test_github_task/widgets/widgets.dart';

class CommitsList extends StatelessWidget {
  final List<CommitResponse> commits;

  CommitsList({this.commits = const []});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: commits.length,
      itemBuilder: (BuildContext context, int index) {
        final commit = commits[index];
        return ListTile(
          title: Text(
            commit.commit.message,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Quiсksand',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            commit.commit.author.name,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Quiсksand',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Container(
            width: 40.0,
            height: 40.0,
            child: Center(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: CachedNetworkImage(
                width: 40.0,
                height: 40.0,
                imageUrl: commit.author.avatarUrl,
                placeholder: (context, url) => Container(
                  width: 40.0,
                  height: 40.0,
                ),
                errorWidget: (context, url, error) => ImageError(
                  width: 40.0,
                  height: 40.0,
                ),
              ),
            )),
          ),
        );
      },
    );
  }
}

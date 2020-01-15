import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_github_task/app_localizations.dart';
import 'package:test_github_task/blocs/blocs.dart';
import 'package:test_github_task/colors/colors.dart';
import 'package:test_github_task/models/commit_response.dart';
import 'package:test_github_task/screens/commits/widgets/commits_list.dart';
import 'package:test_github_task/widgets/widgets.dart';

class CommitsScreen extends StatefulWidget {
  static const routeName = '/Commits';

  @override
  _CommitsScreenState createState() => _CommitsScreenState();
}

class _CommitsScreenState extends State<CommitsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _fetchData());
  }

  void _fetchData() {
    BlocProvider.of<CommitsBloc>(context)
        .dispatch(FetchCommits(ownerName: 'flutter', repoName: 'flutter'));
  }

  Widget _getBlocBuilder() =>
      BlocBuilder<CommitsBloc, CommitsState>(
          builder: (context, CommitsState state) => _getContent(state));

  Widget _getContent(CommitsState state) {
    Widget widget = Container();
    if (state is CommitsLoading) {
      widget = AppProgressIndicator();
    } else if (state is CommitsLoaded) {
      widget = _getCommitsList(state.commits);
    } else if (state is CommitsError) {
      widget = Error(
        error: state.error,
      );
    }
    return widget;
  }

  Widget _getCommitsList(List<CommitResponse> commits) =>
      CommitsList(
        commits: commits,
      );

  void _handleRefreshPress() => this._fetchData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          AppLocalizations.of(context).t('Commits'),
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: _getBlocBuilder(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleRefreshPress,
        child: Icon(Icons.refresh),
      ),
    );
  }
}

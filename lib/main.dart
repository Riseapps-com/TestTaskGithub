import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_github_task/blocs/blocs.dart';
import 'package:test_github_task/network/github_api_client.dart';
import 'package:test_github_task/repositories/repositories.dart';
import 'package:test_github_task/screens/screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_localizations.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final GitHubRepository _gitHubRepository = GitHubRepository(
    client: GitHubAPIClient(
      dio: Dio(BaseOptions(
        baseUrl: GitHubAPIClient.baseUrl,
        connectTimeout: GitHubAPIClient.connectTimeout,
        receiveTimeout: GitHubAPIClient.receiveTimeout,
        sendTimeout: GitHubAPIClient.sendTimeout,
        responseType: ResponseType.plain,
      ))
        ..interceptors
            .add(LogInterceptor(requestBody: true, responseBody: true)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Base Project',
      supportedLocales: [Locale('en')],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppLocalizations.delegate,
      ],
//      localeResolutionCallback: (locale, supportedLocales) =>
//      supportedLocales
//          .where((e) => e.languageCode == locale.languageCode)
//          .toList()
//          .length !=
//          0
//          ? locale
//          : supportedLocales.first,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        CommitsScreen.routeName: (context) => BlocProvider(
              builder: (context) => CommitsBloc(repository: _gitHubRepository),
              child: CommitsScreen(),
            ),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

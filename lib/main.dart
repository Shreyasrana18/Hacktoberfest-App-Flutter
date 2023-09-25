// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hacktoberfest_app/list.dart';
import 'package:hacktoberfest_app/loadingscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoadingScreen.id,
      routes: {
        ListContributors.id: (ctx) => ListContributors(),
        LoadingScreen.id: (ctx) => LoadingScreen(),
      },
    );
  }
}

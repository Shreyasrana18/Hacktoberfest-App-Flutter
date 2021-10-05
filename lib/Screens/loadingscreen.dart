// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hacktoberfest_app/list.dart';

class LoadingScreen extends StatefulWidget {
  static const id = 'loadingscreen';

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void nextScreen() async {
    await Future.delayed(
      Duration(
        milliseconds: 3000,
      ),
    );
    Navigator.pushNamed(context, ListContributors.id);
  }

  @override
  void initState() {
    nextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE0B2),
      // backgroundColor: Color(0xFFF4F0E1),
      body: Center(
        child: Image.asset('images/logo1.png'),
      ),
    );
  }
}

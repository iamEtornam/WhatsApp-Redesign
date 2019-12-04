import 'dart:io';

import 'package:flutter/material.dart';

import 'pages/dashboard_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
          darkTheme: ThemeData.dark(),
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                  title: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              iconTheme: IconThemeData(color: Colors.black),
              elevation: Platform.isIOS ? 0 : 4)),
      home: DashboardPage(),
    );
  }
}
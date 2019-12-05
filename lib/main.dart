import 'package:flutter/material.dart';
import './chatview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[400],
        ),
        body: ChatView(),
      ),
    );
  }
}

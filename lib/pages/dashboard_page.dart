import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/pages/chat_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Status'),
              Tab(text: 'Chats'),
              Tab(text: 'Calls'),
            ],
          ),
          title: Text('WhatsApp'),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              ChatPage(),
              ChatPage(),
              ChatPage(),
            ],
          ),
        ),
      ),
    );
  }
}

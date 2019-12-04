import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/pages/chat_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  TextEditingController _controller = TextEditingController();
  bool isFocus = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.black.withOpacity(.5),
            unselectedLabelStyle: TextStyle(fontSize: 16),       
            tabs: [
              Tab(
                child: Padding(
                  padding: const EdgeInsets.only(left:24.0),
                  child: Row(
                    children: <Widget>[
                      Text('Status',style: TextStyle(fontSize: 18)),
                      SizedBox(
                        width: 5,
                      ),
                      Material(
                        child: SizedBox(
                          height: 7,
                          width: 7,
                        ),
                        borderRadius: BorderRadius.circular(45),
                        color: Colors.black.withOpacity(.5),
                      )
                    ],
                  ),
                ),
              ),
              Tab(
                child:Padding(
                  padding: const EdgeInsets.only(right:24.0),
                  child: Row(
                    children: <Widget>[
                      Text('Chats',style: TextStyle(fontSize: 18)),
                      SizedBox(
                        width: 5,
                      ),
                      Material(
                        child: SizedBox(
                          height: 25,
                          width: 25,
                          child: Center(child: Text('22',style: TextStyle(color: Colors.white),)),
                        ),
                        borderRadius: BorderRadius.circular(45),
                        color: Colors.green,
                        
                      )
                    ],
                  ),
                ),),
              Tab(
                child:Padding(
                  padding: const EdgeInsets.only(right:24.0),
                  child: Row(
                    children: <Widget>[
                      Text('Calls',style: TextStyle(fontSize: 18)),
                      SizedBox(
                        width: 5,
                      ),
                      Material(
                        child: SizedBox(
                          height: 22,
                          width: 22,
                          child: Center(child: Text('5',style: TextStyle(color: Colors.white),)),
                        ),
                        borderRadius: BorderRadius.circular(45),
                        color: Colors.black.withOpacity(.5),
                        
                      )
                    ],
                  ),
                ),),
            ],
          ),
          title: Text('WhatsApp'),
        
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0,10,24.0,10),
            child: Column(
              children: <Widget>[
                TextField(
                  onTap: () {
                    setState(() {
                      if (!isFocus) {
                        isFocus = true;
                      } else {
                        isFocus = false;
                      }
                    });
                  },
                  controller: _controller,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      focusColor: Colors.black,
                      prefixIcon: Icon(
                        Icons.search,
                        color: isFocus ? Colors.black : Colors.grey,
                      ),
                      
                      hintText: 'Search',
                      hintStyle:
                          TextStyle(color: isFocus ? Colors.black : Colors.grey),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade200),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
                Expanded(
                                child: TabBarView(
                    children: [
                      ChatPage(),
                      ChatPage(),
                      ChatPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

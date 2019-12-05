import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(37, 211, 102, 1.0),
          primarySwatch: Colors.green),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//Function to just  open the camera
//Uses the imagepicker plugin
  Future openCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    return image;
  }

  //Function that returns the whole buttomnavigation widget

  Widget _buttomnav (){
    return BottomNavigationBar(
        selectedFontSize: 12,
        selectedItemColor: Colors.black38,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: openCamera,
            ),
            title: Text('Add Story'),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _menuBottomSheet(context);
              },
            ),
            title: Text('Menu'),
          ),
        ],
      );
  }
  
  //Function to open the buttom modal

  void _menuBottomSheet(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        context: context,
        builder: (BuildContext buildcontext) {
          return Container(
            child: Wrap(
              children: [
                ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('My Profile'),
                    onTap: () => {}),
                ListTile(
                    leading: Icon(Icons.chat),
                    title: Text('New Chat'),
                    onTap: () => {}),
                ListTile(
                    leading: Icon(Icons.people),
                    title: Text('New Group Chat'),
                    onTap: () => {}),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Starred Messages'),
                  onTap: () => {},
                ),
                ListTile(
                    leading: Icon(Icons.language),
                    title: Text('WhatsApp Web'),
                    onTap: () => {}),
                ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    onTap: () => {}),
                ListTile(
                    leading: Icon(Icons.watch_later),
                    title: Text('Use Night Mode'),
                    onTap: () => {}),
              ],
            ),
          );
        });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon((Icons.message)),
        backgroundColor: Color.fromRGBO(37, 211, 102, 1.0),
        onPressed: () {},
      ),
      bottomNavigationBar: _buttomnav(),
      appBar: AppBar(
        //Text("Status +", style: textstyle,textAlign: TextAlign.center,),
        backgroundColor: Colors.white,
        elevation: 0.1,
        centerTitle: true,
        title: Text(
          "",
        ),
        leading: IconButton(
          iconSize: 32,
          padding: EdgeInsets.only(left: 5),
          icon: Text(
            "",
          ),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}

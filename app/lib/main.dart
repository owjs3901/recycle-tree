import 'package:flutter/material.dart';
import 'package:flutter_app/first.dart';
import 'package:flutter_app/fourth.dart';
import 'package:flutter_app/second.dart';
import 'package:flutter_app/splash.dart';
import 'package:flutter_app/third.dart';

MaterialColor initColor = Colors.green;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recycle Tree',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new MyHomePage()
      },
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
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (() {
        switch (_index) {
          case 0:
            return First();
          case 1:
            return Second();
          case 2:
            return Third();
          case 3:
            return Fourth();
        }
      })(),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/icon1.png")), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/icon2.png")), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/icon3.png")), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("images/icon4.png")), label: ""),
        ],
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
      ),
    );
  }
}

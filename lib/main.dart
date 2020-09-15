import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:munazara_app/Screens/Welcome/welcome_screen.dart';
import 'package:munazara_app/ana_sayfa.dart';
import 'package:munazara_app/constant.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Münazara Test 1.0',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kPrimaryLightColor,
      ),
      home: WelcomeScreen(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final tabs = [
    Container(
      child: CardOne(),
    ),
    Center(
      child: Text('Keşfet'),
    ),
    Center(
      child: Text('Ekle'),
    ),
    Center(
      child: Text('Gruplar'),
    ),
    Center(
      child: Text('Profilim'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kPrimaryLightColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Münazara Test 1.0',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: kPrimaryLightColor,
          /*type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          iconSize: 20,
          selectedFontSize: 15,
          unselectedFontSize: 12, */
          items: [
            Icon(
              Icons.home,
              size: 20,
              color: kPrimaryDarkColor,
            ),
            Icon(
              Icons.explore,
              size: 20,
              color: kPrimaryDarkColor,
            ),
            Icon(
              Icons.add_circle_outline,
              size: 40,
              color: kPrimaryDarkColor,
            ),
            Icon(
              Icons.people,
              size: 20,
              color: kPrimaryDarkColor,
            ),
            Icon(
              Icons.person_outline,
              size: 20,
              color: kPrimaryDarkColor,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

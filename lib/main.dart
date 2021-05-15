import 'package:flutter/material.dart';
import 'package:tour/page/home_page.dart';
import 'package:tour/page/more_page.dart';
import 'package:tour/page/nearby_page.dart';
import 'package:tour/page/user_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatefulWidget {
  // MainMenu({Key key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _selectedID = 0;

  final _layoutPage = [Home(), NearbyPage(), UserPage(), MorePage()];

  void _onTabItem(int id) {
    setState(() {
      _selectedID = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedID),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation),
            label: 'Nearby',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_vert),
            label: 'more',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedID,
        onTap: _onTabItem,
      ),
    );
  }
}

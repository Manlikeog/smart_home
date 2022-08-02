import 'package:flutter/material.dart';
import 'package:smart_home/models/device.dart';
import 'package:smart_home/screens/cooler_screen.dart';
import 'package:smart_home/screens/favourite_screens.dart';
import 'package:smart_home/screens/rooms_screens.dart';
import 'package:smart_home/screens/settings_screens.dart';
import 'package:smart_home/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  final List<Device> favouriteDevices;
  TabsScreen(this.favouriteDevices);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;

  int _selectPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': RoomsScreen(),
        'title': '',
      },
      {
        'page': FavouriteScreen(widget.favouriteDevices),
        'title': 'Favourite Room',
      },
      {
        'page': SettingsScreen(),
        'title': 'Settings',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(_pages[_selectPageIndex]['title']),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blue),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: IconButton(
              icon: Icon(
                Icons.logout,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      drawer: Container(child: MainDrawer()),
      body: _pages[_selectPageIndex]['page'],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withAlpha(10),
              blurRadius: 20,
              spreadRadius: 10,
            )
          ],
          border: Border.all(width: 10, color: Color(0xfff3fbfa)),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey.withAlpha(100),
          selectedItemColor: Theme.of(context).primaryColor,
          currentIndex: _selectPageIndex,
          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

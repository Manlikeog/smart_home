import 'package:flutter/material.dart';
import 'package:smart_home/dummy_data.dart';
import 'package:smart_home/models/device.dart';
import 'package:smart_home/screens/controller_screen.dart';
import 'package:smart_home/screens/settings_screens.dart';
import 'package:smart_home/screens/tab_screens.dart';
import 'package:smart_home/screens/device_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Device> _favouriteDevices = [];

  void _toggleFavourite(String deviceId) {
    final existingIndex =
        _favouriteDevices.indexWhere((device) => device.id == deviceId);
    if (existingIndex >= 0) {
      setState(() {
        _favouriteDevices.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favouriteDevices.add(
          DUMMY_DEVICE.firstWhere((device) => device.id == deviceId),
        );
      });
    }
  }

  bool isMealFavorite(String id) {
    return _favouriteDevices.any((device) => device.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Color(0xfff3fbfa),
        accentColor: Colors.white,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(
                fontSize: 35,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              bodyText1: TextStyle(
                fontSize: 13,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(1000, 1000, 1000, 1),
              ),
              headline6: TextStyle(
                fontSize: 15,
                fontFamily: 'Raleway',
                color: Colors.grey[500],
              ),
              headline4: TextStyle(
                fontSize: 25,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
      ),
      // home: RoomsScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favouriteDevices),
        DeviceScreen.routeName: (ctx) => DeviceScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
        ControllerScreen.routeName: (ctx) =>
            ControllerScreen(_toggleFavourite, isMealFavorite),
      },
    );
  }
}

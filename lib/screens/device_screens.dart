import 'package:flutter/material.dart';
import 'package:smart_home/screens/cooler_screen.dart';
import 'package:smart_home/screens/gadgets_screen.dart';

class DeviceScreen extends StatefulWidget {
  static const routeName = '/bottomNavBarWidgets';
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  late List<Map<String, Object>> _devices;

  int _selectDeviceIndex = 0;

  void homePage(BuildContext ctx) {
    Navigator.of(ctx).pop(true);
  }

  @override
  void initState() {
    _devices = [
      {
        'page': GadgetScreen(),
        'title': '',
      },
      {
        'page': CoolerScreen(),
        'title': '',
      },
    ];
    super.initState();
  }

  void _selectDevice(int index) {
    setState(() {
      _selectDeviceIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final roomTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
          ),
          onPressed: () => homePage(context),
        ),
        iconTheme: IconThemeData(color: Colors.blue),
        title: Text(
          roomTitle!,
          style: Theme.of(context).textTheme.headline4,
        ),
        backgroundColor: Color(0xfff3fbfa),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: _devices[_selectDeviceIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: Colors.grey.withAlpha(100),
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectDeviceIndex,
        onTap: _selectDevice,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_remote_outlined),
            label: 'Device',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'Cooler'),
        ],
      ),
    );
  }
}

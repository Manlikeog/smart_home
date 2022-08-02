import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smart_home/screens/settings_screens.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      horizontalTitleGap: 1,
      leading: Icon(
        icon,
        size: 26,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              color: Colors.blue,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    child: CircleAvatar(
                      child: Center(
                        child: Image.asset(
                          'assets/images/memoji.PNG',
                          fit: BoxFit.fill,
                          height: 100,
                          width: double.infinity,
                        ),
                      ),
                      backgroundColor: Color(0xfff3fbfa),
                      radius: 35,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'OG',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Timilehin883@gmail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildListTile(
              'Home',
              Icons.home_outlined,
              () {
                Navigator.of(context).pushNamed('/');
              },
            ),
            Divider(),
            buildListTile(
              'Profile',
              Icons.person,
              () {},
            ),
            Divider(),
            buildListTile(
              'Notification',
              Icons.notification_important,
              () {},
            ),
            Divider(),
            buildListTile(
              'Settings',
              Icons.settings,
              () {
                Navigator.of(context).pushNamed(SettingsScreen.routeName);
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

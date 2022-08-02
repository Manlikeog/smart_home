import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:smart_home/screens/device_screens.dart';

class RoomItem extends StatelessWidget {
  final String id;
  final String devices;
  final String title;
  final String icon;
  final List<Color> color;

  RoomItem(
    this.id,
    this.title,
    this.color,
    this.devices,
    this.icon,
  );

  void selectedRoom(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(DeviceScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedRoom(context),
      splashColor: Theme.of(context).accentColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: CircleAvatar(
                backgroundColor: Theme.of(context).accentColor,
                radius: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    icon,
                    fit: BoxFit.cover,
                    height: 40,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(5),
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                devices,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: color,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

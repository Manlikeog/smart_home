import 'package:flutter/material.dart';
import 'package:smart_home/screens/controller_screen.dart';

class DeviceItem extends StatelessWidget {
  final String id;
  final String title;
  final String switcH;
  final String icons;
  final List<Color> color;

  DeviceItem({
    required this.id,
    required this.title,
    required this.switcH,
    required this.icons,
    required this.color,
  });

  void selectedGadget(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      ControllerScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedGadget(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(0),
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                backgroundColor: Theme.of(context).accentColor,
                radius: 19,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(),
                  child: Image.asset(
                    icons,
                    fit: BoxFit.cover,
                    height: 25,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              alignment: Alignment.bottomCenter,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Container(
              padding: EdgeInsets.all(1),
              alignment: Alignment.bottomCenter,
              child: Text(
                switcH,
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
          borderRadius: BorderRadius.circular(13),
        ),
      ),
    );
  }
}

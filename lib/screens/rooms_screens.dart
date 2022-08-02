import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/room_item.dart';

class RoomsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 40),
            child: Text(
              'Smart Home',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40),
            child: Text(
              'You are in control now',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            child: GridView(
              padding: EdgeInsets.all(40),
              children: DUMMY_ROOM
                  .map(
                    (catData) => RoomItem(
                      catData.id,
                      catData.title,
                      catData.color,
                      catData.devices,
                      catData.icons,
                    ),
                  )
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisExtent: 165,
                childAspectRatio: 1.5,
                crossAxisSpacing: 15,
                maxCrossAxisExtent: 155,
                mainAxisSpacing: 15,
              ),
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

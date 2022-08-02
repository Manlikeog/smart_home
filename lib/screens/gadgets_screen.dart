import 'package:flutter/material.dart';
import 'package:smart_home/dummy_data.dart';
import 'package:smart_home/widgets/device_item.dart';

class GadgetScreen extends StatefulWidget {
  @override
  _GadgetScreenState createState() => _GadgetScreenState();
}

class _GadgetScreenState extends State<GadgetScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final roomId = routeArgs['id'];
    final roomTitle = routeArgs['title'];
    final roomDevice = DUMMY_DEVICE.where((device) {
      return device.rooms.contains(roomId);
    }).toList();
    return Scaffold(
      body: Container(
        child: GridView.builder(
          padding: EdgeInsets.fromLTRB(34, 10, 34, 0),
          itemBuilder: (ctx, index) {
            return DeviceItem(
                id: roomDevice[index].id,
                title: roomDevice[index].title,
                switcH: roomDevice[index].switcH,
                icons: roomDevice[index].icons,
                color: roomDevice[index].color);
          },
          itemCount: roomDevice.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisExtent: 110,
            childAspectRatio: 1.5,
            crossAxisSpacing: 15,
            maxCrossAxisExtent: 100,
            mainAxisSpacing: 15,
          ),
          shrinkWrap: true,
        ),
      ),
    );
  }
}

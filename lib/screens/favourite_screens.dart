import 'package:flutter/material.dart';
import 'package:smart_home/models/device.dart';
import 'package:smart_home/widgets/device_item.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Device> favouriteDevices;

  FavouriteScreen(this.favouriteDevices);
  @override
  Widget build(BuildContext context) {
    if (favouriteDevices.isEmpty) {
      return Center(
        child: Text('You have no favourites yet - start adding some'),
      );
    } else {
      return GridView.builder(
        padding: EdgeInsets.fromLTRB(34, 10, 34, 0),
        itemBuilder: (ctx, index) {
          return DeviceItem(
              id: favouriteDevices[index].id,
              title: favouriteDevices[index].title,
              switcH: favouriteDevices[index].switcH,
              icons: favouriteDevices[index].icons,
              color: favouriteDevices[index].color);
        },
        itemCount: favouriteDevices.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: 110,
          childAspectRatio: 1.5,
          crossAxisSpacing: 15,
          maxCrossAxisExtent: 100,
          mainAxisSpacing: 15,
        ),
        shrinkWrap: true,
      );
    }
  }
}

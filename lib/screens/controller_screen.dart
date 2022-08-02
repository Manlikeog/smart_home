import 'package:flutter/material.dart';
import 'package:smart_home/dummy_data.dart';

class ControllerScreen extends StatelessWidget {
  static const routeName = '/controllerScreen';

  final Function toggleFavourite;
  final Function isFavourite;

  ControllerScreen(this.toggleFavourite, this.isFavourite);
  @override
  Widget build(BuildContext context) {
    final deviceId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedDevice = DUMMY_DEVICE.firstWhere(
      (device) => device.id == deviceId,
    );
    return Scaffold(
      body: Center(
        child: Text('${selectedDevice.title}'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavourite(deviceId) ? Icons.star : Icons.star_border_outlined,
        ),
        onPressed: () => toggleFavourite(deviceId),
      ),
    );
  }
}

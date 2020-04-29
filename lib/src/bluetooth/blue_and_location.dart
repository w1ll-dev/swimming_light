import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import '../controller/location_controller.dart';

import './child_screens/blue_off.dart';
import '../bluetooth/child_screens/find_device.dart';
import 'child_screens/location_off.dart';

class BluetoothAndLocationPagePhone extends StatelessWidget {
  final location = Location();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SISMIC',
      theme: ThemeData(
        fontFamily: 'Quebec Black',
        primaryColor: Colors.white,
      ),
      home: StreamBuilder<BluetoothState>(
        stream: FlutterBlue.instance.state,
        initialData: BluetoothState.unknown,
        builder: (c, snapshot) {
          final bluetoothState = snapshot.data;
          return bluetoothState == BluetoothState.off
              ? BluetoothOffScreen(state: bluetoothState)
              : StreamBuilder<bool>(
                  stream: location.stream,
                  initialData: location.state,
                  builder: (c, snapshot) {
                    bool locationState = snapshot.data;
                    return locationState
                        ? FindDevicesScreen()
                        : LocationOffScreen();
                  },
                );
        },
      ),
    );
  }
}

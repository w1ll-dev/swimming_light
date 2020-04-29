import 'package:flutter/material.dart';
import 'package:swiming_light/src/bluetooth/blue_and_location.dart';

void main() => runApp(SwimmingLight());

class SwimmingLight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swiiiimming Light',
      color: Colors.blue[400],
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: BluetoothAndLocationPagePhone(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationOffScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.location_disabled,
              size: 200.0,
              color: Colors.white54,
            ),
            Text(
              'Location Adapter is off.\nPlease, turn-on your \nLocation Adapter.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

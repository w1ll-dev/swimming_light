import 'dart:async';
import 'package:geolocator/geolocator.dart';

class Location {
  bool state = false;

  final _controller = StreamController<bool>.broadcast();

  Stream<bool> get stream => _controller.stream;

  Location() {
    Timer.periodic(
      Duration(milliseconds: 500),
      (timer) async {
        await Geolocator().isLocationServiceEnabled().then(
          (value) {
            _controller.add(state);
            state = value;
          },
        );
      },
    );
  }
}

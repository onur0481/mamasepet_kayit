import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'genelAraclar/genel_textform.dart';

class Arama extends StatefulWidget {
  @override
  _AramaState createState() => _AramaState();
}

class _AramaState extends State<Arama> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(36.584823527116356, 36.17496405821563),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(36.58523704568471, 36.149987328481615),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: FlutterColor("#314220"),
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            "Mama Noktaları",
            style: TextStyle(
                color: Colors.white, fontSize: 30.0, letterSpacing: 1),
          ),
        ),
        body: GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton.extended(
            backgroundColor: Colors.white,
            onPressed: _goToTheLake,
            label: Text('En Yakın Mama Noktasını Bul'),
            icon: Icon(Icons.find_in_page_outlined),
          ),
        ),
      ),
    );
  }
}

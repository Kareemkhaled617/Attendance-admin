import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/attendance_controller.dart';

class MapWithCircle extends StatefulWidget {
  const MapWithCircle({super.key});

  @override
  _MapWithCircleState createState() => _MapWithCircleState();
}

class _MapWithCircleState extends State<MapWithCircle> {
  final Completer<GoogleMapController> _controller = Completer();
  double? late;
  double? long;
  final double _radius = 200;
  Set<Circle> _circles = {};
  final con = Get.put(AttendanceController());

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void _updateCircle(LatLng center) {
    setState(() {
      _circles = {
        Circle(
          strokeWidth: 2,
          fillColor: Colors.greenAccent.withOpacity(0.3),
          strokeColor: Colors.redAccent,
          circleId: const CircleId("circle"),
          center: center,
          radius: _radius,
        )
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(con.center.latitude, con.center.longitude),
          zoom: 17.0,
        ),
        circles: _circles,
        onTap: (LatLng latLng) {
          _updateCircle(latLng);
          late = latLng.latitude;
          long = latLng.longitude;
        },
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: FloatingActionButton.large(
            backgroundColor: Colors.red,
            onPressed: () async {
              await FirebaseFirestore.instance
                  .collection('circle')
                  .doc('geo')
                  .set({
                'late': late,
                'long': long,
              }).then((value) {
                Get.showSnackbar(const GetSnackBar(
                  message: 'Done',
                  duration: Duration(seconds: 3),
                ));
              });
            },
            child: const Text(
              'Done',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

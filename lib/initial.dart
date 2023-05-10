
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class Initial extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body : Center(
             child:Container(
               alignment: Alignment.centerLeft,
               padding: const EdgeInsets.symmetric(horizontal: 40),
               child: const Text(
                 "Welcome ADMIN! ",
                 style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Color(0xFFDA0B11),
                     fontSize: 36),
                 textAlign: TextAlign.center,
               ),
             ),

           ),
    );
  }}
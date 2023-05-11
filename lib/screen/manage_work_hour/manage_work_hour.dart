import 'package:flutter/material.dart';

import '../auth/components/background.dart';

class ManagingWorkingHours extends StatefulWidget {
  const ManagingWorkingHours({super.key});

  @override
  State<ManagingWorkingHours> createState() => _ManagingWorkingHoursState();
}

class _ManagingWorkingHoursState extends State<ManagingWorkingHours> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String dropdownValue = 'Manager';
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Text(
                "Managing Working Hours",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFDA0B11),
                    fontSize: 36),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent, width: 2)),
              child: const Text(
                'وقت الحضور',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.redAccent),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent, width: 2)),
              child: const Text(
                'وقت الانصراف',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.redAccent),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent, width: 2)),
              child: const Text(
                'وقت الاستراحه',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.redAccent),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(255, 250, 38, 63),
                        Color.fromARGB(255, 218, 11, 17)
                      ])),
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    "Add",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/attendance_controller.dart';
import '../services/database_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final _controller = Get.put(AttendanceController());
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _controller.getCurrentLocation();
  //   _controller.getListAttendances();
  // }

  @override
  void dispose() {
    DatabaseService.instance.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
    //   appBar: AppBar(
    //     title: const Text('Attendance'),
    //     elevation: 0,
    //     centerTitle: true,
    //     backgroundColor: Colors.redAccent,
    //   ),
    //   body: Obx(() {
    //     if (_controller.isLoading.value) {
    //       return const Center(child: CircularProgressIndicator());
    //     }
    //
    //     if (_controller.isError.value) {
    //       return Center(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             const Text(
    //               'Error fetching data. Please try again',
    //               textAlign: TextAlign.center,
    //             ),
    //             const SizedBox(height: 8),
    //             ElevatedButton.icon(
    //               onPressed: () => _controller.getListAttendances(),
    //               icon: const Icon(Icons.refresh),
    //               label: const Text('Try again'),
    //             )
    //           ],
    //         ),
    //       );
    //     }
    //
    //     if (_controller.listAttendances.isEmpty) {
    //       return Center(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             const Text(
    //               'No attendances saved yet.\nClick add to save new attendances',
    //               textAlign: TextAlign.center,
    //             ),
    //             const SizedBox(height: 8),
    //             ElevatedButton.icon(
    //               onPressed: () => _controller.getListAttendances(),
    //               icon: const Icon(Icons.refresh),
    //               label: const Text('Refresh'),
    //             )
    //           ],
    //         ),
    //       );
    //     }
    //
    //     return ListView.builder(
    //       itemCount: _controller.listAttendances.length,
    //       itemBuilder: (context, index) {
    //         final attendance = _controller.listAttendances[index];
    //
    //         return ListTile(
    //           onTap: () {},
    //           title: Text(attendance.name),
    //           subtitle: Text(
    //               DateFormat('dd MMM y H:mm:ss').format(attendance.createdAt)),
    //           trailing: const Text('Attended'),
    //         );
    //       },
    //     );
    //   }),
    //   // floatingActionButton: FloatingActionButton(
    //   //   onPressed: () {},
    //   //   child: const Icon(Icons.add),
    //   // ),
    // );
  }
}

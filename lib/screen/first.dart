import 'package:attendance_admin/screen/staff_attendance_schedule/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/attendance_controller.dart';
import 'attendance_registretion/todayscreen.dart';
import 'add_manger/add_manger.dart';
import 'attendance_schedule/attendance_schedule.dart';
import 'custom_drawer/drawer_user_controller.dart';
import 'custom_drawer/home_drawer.dart';
import 'drow_circle.dart';
import 'homepage.dart';
import 'manage_work_hour/manage_work_hour.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget? screenView;
  final _controller = Get.put(AttendanceController());
  DrawerIndex? drawerIndex;

  @override
  void initState() {
    _controller.getCurrentLocation();
    _controller.getListAttendances();
    drawerIndex = DrawerIndex.HOME;
    screenView = const HomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: DrawerUserController(
        screenIndex: drawerIndex,
        drawerWidth: MediaQuery.of(context).size.width * 0.75,
        onDrawerCall: (DrawerIndex drawerIndexdata) {
          changeIndex(drawerIndexdata);
          //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
        },
        screenView: screenView,
        //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      switch (drawerIndex) {
        case DrawerIndex.HOME:
          setState(() {
            screenView = const HomeScreen();
          });
          break;
        case DrawerIndex.Help:
          setState(() {
            screenView = const TodayScreen();
          });
          break;
        case DrawerIndex.Geolocation:
          setState(() {
            screenView = const MapWithCircle();
          });
          break;
        case DrawerIndex.Invite:
          setState(() {
            screenView = const TodayScreen();
          });
          break;
        case DrawerIndex.Share:
          setState(() {
            screenView = const AddManger();
          });
          break;
        case DrawerIndex.About:
          setState(() {
            screenView = const MainScreen();
          });
          break;
        case DrawerIndex.attendance:
          setState(() {
            screenView = const AttendanceSchedule();
          });
          break;
        case DrawerIndex.MANAGE:
          setState(() {
            screenView = const ManagingWorkingHours();
          });
          break;
        default:
          break;
      }
    }
  }
}

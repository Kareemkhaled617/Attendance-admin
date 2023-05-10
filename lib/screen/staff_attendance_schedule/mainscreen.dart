import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('staff movement'),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                    icon: Icon(Icons.edit_location_sharp),
                    text: "Motion tracking"),
                Tab(icon: Icon(Icons.location_history), text: "Motion log")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}

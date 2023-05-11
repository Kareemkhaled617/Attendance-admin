import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final String dropdownValue = 'Ahmed';

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
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: DropdownButton<String>(
                        focusColor: Colors.white,
                        value: dropdownValue,
                        style: const TextStyle(color: Colors.white),
                        iconEnabledColor: Colors.black,
                        items: <String>['Ahmed', 'Kareem','Ali','Mazen']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        hint: const Text(
                          "Please Employee",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        onChanged: (value) {
                          print(dropdownValue);
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.redAccent,
                                  width: 2
                              )
                          ),
                          child: Column(
                            children: [
                              Text('Date : ${DateTime.now()}'),
                              Text('Entry time : ${DateTime.now()}'),
                              Text('Exit : ${DateTime.now()}'),
                            ],
                          ),
                        ),
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: DropdownButton<String>(
                        focusColor: Colors.white,
                        value: dropdownValue,
                        style: const TextStyle(color: Colors.white),
                        iconEnabledColor: Colors.black,
                        items: <String>['Ahmed', 'Kareem','Ali','Mazen']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        hint: const Text(
                          "Please Employee",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        onChanged: (value) {
                          print(dropdownValue);
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.redAccent,
                                  width: 2
                              )
                          ),
                          child: Column(
                            children: [
                              Text('Date : ${DateTime.now()}'),
                              Text('Entry time : ${DateTime.now()}'),
                              Text('Exit : ${DateTime.now()}'),
                            ],
                          ),
                        ),
                        itemCount: 5,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

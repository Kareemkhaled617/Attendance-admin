import 'package:flutter/material.dart';

class AttendanceSchedule extends StatelessWidget {
  const AttendanceSchedule({Key? key}) : super(key: key);

  Future<void> _selectMonth(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
      initialDatePickerMode: DatePickerMode.year,
    );

    if (picked != null) {
      print(picked.toString()); // Do something with the selected month
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance'),
        centerTitle: true,
        leading: null,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(DateTime.now().toString()),
              MaterialButton(
                color: Colors.redAccent,
                onPressed: () => _selectMonth(context),
                child: const Text(
                  'Pick Month',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
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
    );
  }
}

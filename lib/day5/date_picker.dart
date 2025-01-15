import 'package:flutter/material.dart';

void main() {
  runApp(const DatepickerApp());
}

class DatepickerApp extends StatelessWidget {
  const DatepickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDateApp(),
    );
  }
}

class MyDateApp extends StatefulWidget {
  const MyDateApp({super.key});

  @override
  State<MyDateApp> createState() => _MyDateAppState();
}

class _MyDateAppState extends State<MyDateApp> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_selectedDate.toString()),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {
                  showDatePicker(
                      context: context,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2030),
                      initialEntryMode: DatePickerEntryMode.calendar,
                      initialDatePickerMode: DatePickerMode.year,
                      initialDate: _selectedDate).then((value) {
                        setState(() {
                          if (value != null) {
                            _selectedDate = value;
                          }
                        });
                      });
                },
                child: const Text("Date Picker")),
          ],
        ),
      ),
    );
  }
}

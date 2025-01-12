import 'package:flutter/material.dart';

void main() {
  runApp(const VisibleApp());
}

class VisibleApp extends StatelessWidget {
  const VisibleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Visible App"),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 100,
              color: Colors.amber,
            ),
            Container(
              height: 500,
              width: 100,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
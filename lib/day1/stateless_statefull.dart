import 'package:flutter/material.dart';

void main() {
  runApp(const StateApp());
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "StateApp",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("HALO APPS"),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Developed by HALO Apps",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationThickness: 2,
                  letterSpacing: 3
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

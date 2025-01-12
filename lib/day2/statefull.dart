import 'package:flutter/material.dart';

void main() {
  runApp(const StatefullApp());
}

class StatefullApp extends StatefulWidget {
  const StatefullApp({super.key});

  @override
  State<StatefullApp> createState() => _StatefullAppState();
}

class _StatefullAppState extends State<StatefullApp> {
      int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Increments App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You have pushed : $counter"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () {
                        if (counter > 0) {
                          setState(() {
                            counter--;
                          });
                        }
                      },
                      child: const Text("Increment")),
                    TextButton(onPressed: () {
                      setState(() {
                        counter++;
                      });
                    }, child: const Text("Decrement"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

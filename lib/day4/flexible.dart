import 'package:flutter/material.dart';

void main() {
  runApp(const FlexibelApp());
}

class FlexibelApp extends StatelessWidget {
  const FlexibelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFlexibelApp(),
    );
  }
}

class MyFlexibelApp extends StatelessWidget {
  const MyFlexibelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible & Expanded Demo"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Bagian Header",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          "Bagian Sidebar",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.grey,
                        child: const Center(
                          child: Text("Main Context", style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),),
                        ),
                      ))
                ],
              )),
            Flexible(flex: 1,child: Container(
              color: Colors.redAccent,
              child: const Center(
                child: Text("Bagian Footer", style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
            ))
        ],
      ),
    );
  }
}

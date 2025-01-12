import 'package:flutter/material.dart';

void main() {
  runApp(const MappingApp());
}

class MappingApp extends StatelessWidget {
  const MappingApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> myList = [
      {
        'name': 'Hilmi Afifi',
        'age': 20,
        'favColor': ['black', 'white'],
      },
      {
        'name': 'Ruslan Mammadov',
        'age': 25,
        'favColor': ['red', 'blue'],
      },
      {
        'name': 'Jane Doe',
        'age': 30,
        'favColor': ['green', 'yellow'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ID Apps"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: myList.map((data) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name: ${data['name']}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Age: ${data['age']}"),
                    Text("Favorite Colors: ${data['favColor'].join(', ')}"),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

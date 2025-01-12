import 'package:flutter/material.dart';

void main() {
  runApp(const ListviewApp());
}

class ListviewApp extends StatelessWidget {
  const ListviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Color> myColor = [
      Colors.amber,
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.orange,
      Colors.purple,
      Colors.pink,
      Colors.teal,
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Listview App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                width: 50,
                color: myColor[index],
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 10,
              );
            },
            itemCount: myColor.length),
      ),
    );
  }
}

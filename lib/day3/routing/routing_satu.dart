import 'package:flutter/material.dart';

class RoutingSatu extends StatelessWidget {
  const RoutingSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routing Satu'),
      ),
      body: const Center(
        child: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pushNamed('/routingdua');
      }, child: const Icon(Icons.keyboard_arrow_right) ,),
    );
  }
}
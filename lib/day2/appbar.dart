import 'package:flutter/material.dart';

void main() {
  runApp(const AppbarApp());
}

class AppbarApp extends StatelessWidget {
  const AppbarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Appbar"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: const Icon(Icons.account_balance),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
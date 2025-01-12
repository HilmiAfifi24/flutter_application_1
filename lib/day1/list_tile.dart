import 'package:flutter/material.dart';

void main() {
  runApp(const ListtileApp());
}


class ListtileApp extends StatelessWidget {
  const ListtileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListTile App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: const[
            ListTile(
              leading: Icon(Icons.person),
              title: Text("John Doe"),
              subtitle: Text("Software Engineer"),
              trailing: Text("10.00 PM"),
              tileColor: Colors.amber,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text("New York, NY"),
              subtitle: Text("Back-end Developer"),
              trailing: Text("01.00 AM"),
              tileColor: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
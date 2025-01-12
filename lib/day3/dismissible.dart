import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DismissibleApp());
}

class DismissibleApp extends StatelessWidget {
  const DismissibleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDismissibleApp(),
    );
  }
}

class MyDismissibleApp extends StatelessWidget {
  const MyDismissibleApp({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible App", style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          return Dismissible(
              key: Key(index.toString()),
              direction: DismissDirection.endToStart,
              confirmDismiss: (direction) {
                return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Confirm Delete"),
                      content: const Text("Are you sure you want to delete?"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context, false);
                            },
                            child: const Text("Cancel")),
                        TextButton(
                            child: const Text("Delete"),
                            onPressed: () {
                              Navigator.pop(context, true);
                            })
                      ],
                    );
                  },
                );
              },
              background: Container(
                color: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.centerRight,
                child: const Icon(Icons.delete),
              ),
              child: ListTile(
                title: Text(faker.person.name()),
                leading: const Icon(Icons.person),
                subtitle: Text(faker.lorem.sentence()),
              ));
        },
        itemCount: 20,
      ),
    );
  }
}

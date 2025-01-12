import 'package:flutter/material.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyContactApp(),
    );
  }
}

class MyContactApp extends StatelessWidget {
  const MyContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> contacts = [
      {"name": "Hilmi Afifi", "phone": "082336129185"},
      {"name": "Fikri Abiyyu", "phone": "085342098765"},
      {"name": "Bagas Prayogi", "phone": "089765432109"},
      {"name": "Pradita Arif", "phone": "088792492343"}
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact List',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 15, vertical: 10),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.teal.shade300,
                child: Text(
                  contact["name"]![0],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              title: Text(
                contact["name"]!,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                contact["phone"]!,
                style: TextStyle(color: Colors.grey.shade600),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.phone, color: Colors.teal),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Call ${contact["name"]}"),
                      content: Text("Do you want to call ${contact["phone"]}?"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            // Tambahkan logika untuk panggilan telepon
                          },
                          child: const Text("Call"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExtractApp());
}

class ExtractApp extends StatelessWidget {
  const ExtractApp({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Extract Widgets"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 20, // Jumlah item dalam daftar
          itemBuilder: (context, index) {
            return ChatItem(
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const ChatItem({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle, maxLines: 1, overflow: TextOverflow.ellipsis,),
      leading: const Icon(Icons.person),
      trailing: const Text("10.00 PM"),
    );
  }
}

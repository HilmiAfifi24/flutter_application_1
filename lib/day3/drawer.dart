import 'package:flutter/material.dart';

void main() {
  runApp(const DrawerApp());
}

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyDrawerApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyDrawerApp extends StatelessWidget {
  const MyDrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer App'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://via.placeholder.com/150'), // Gambar profil
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Asrama Text",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Aksi navigasi
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                // Aksi navigasi
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () {
                // Aksi navigasi
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome to Drawer App!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

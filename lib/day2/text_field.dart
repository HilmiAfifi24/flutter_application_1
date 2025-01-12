import 'package:flutter/material.dart';

void main() {
  runApp(const TextfieldApp());
}

class TextfieldApp extends StatelessWidget {
  const TextfieldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Textfield Example'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.person),
                      hintText: "Input your username",
                      labelText: "Username"),
                  autofocus: false,
                ),
                const SizedBox(height: 16.0),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.lock),
                      hintText: "Input your password",
                      labelText: "Password"),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width, // Lebar penuh
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Radius sudut
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text("Save Settings"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

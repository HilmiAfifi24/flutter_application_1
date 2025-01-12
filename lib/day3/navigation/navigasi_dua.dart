import 'package:flutter/material.dart';

void main() {
  runApp(const NavigasiDua());
}

class NavigasiDua extends StatelessWidget {
  const NavigasiDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Dua"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text("Ini adalah halaman dua"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pop(context);
      }, child: const Icon(Icons.keyboard_arrow_left),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

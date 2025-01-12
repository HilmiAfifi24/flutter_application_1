import 'package:flutter/material.dart';
import 'package:flutter_application_1/day3/navigation/navigasi_dua.dart';

void main() {
  runApp(const NavigasiSatu());
}

class NavigasiSatu extends StatelessWidget {
  const NavigasiSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Satu"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text("Ini adalah halaman satu"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NavigasiDua(),));
      }, child: const Icon(Icons.keyboard_arrow_right),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

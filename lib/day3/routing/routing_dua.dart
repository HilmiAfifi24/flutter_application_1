import 'package:flutter/material.dart';

class RoutingDua extends StatelessWidget {
  const RoutingDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routing Dua'),
      ),
      body: const Center(
        child: Text('Halaman Routing Dua'),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => RoutingTiga()));
      //   },
      //   child: Icon(Icons.arrow_forward_ios),
      // ),
    );
  }
}

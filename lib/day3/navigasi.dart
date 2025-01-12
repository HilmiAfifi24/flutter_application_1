import 'package:flutter/material.dart';
import 'package:flutter_application_1/day3/navigation/navigasi_satu.dart';

void main() {
  runApp(const NavigasiApp());
}

class NavigasiApp extends StatelessWidget {
  const NavigasiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigasiSatu(),
    );
  }
}
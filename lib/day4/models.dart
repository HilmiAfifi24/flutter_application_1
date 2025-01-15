import 'package:flutter/material.dart';
import 'package:flutter_application_1/day4/halaman_model/model_pertama.dart';

void main() {
  runApp(const ModelApp());
}

class ModelApp extends StatelessWidget {
  const ModelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ModelsPertama(),
    );
  }
}
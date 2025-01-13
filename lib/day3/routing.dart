import 'package:flutter/material.dart';
import 'package:flutter_application_1/day3/routing/routing_dua.dart';
import 'package:flutter_application_1/day3/routing/routing_satu.dart';

void main() {
  runApp(const RoutingApp());
}

class RoutingApp extends StatelessWidget {
  const RoutingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RoutingSatu(),
      initialRoute: '/routingsatu',
      routes: {
        '/routingsatu': (context) => const RoutingSatu(),
        '/routingdua': (context) => const RoutingDua(),
      },
    );
  }
}
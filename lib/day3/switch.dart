import 'package:flutter/material.dart';

void main() {
  runApp(const SwitchApp());
}

class SwitchApp extends StatelessWidget {
  const SwitchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySwitchApp(),
    );
  }
}

class MySwitchApp extends StatefulWidget {
  const MySwitchApp({super.key});

  @override
  State<MySwitchApp> createState() => _MySwitchAppState();
}

class _MySwitchAppState extends State<MySwitchApp> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Switch Example'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
                value: isSwitch,
                onChanged: (value) {
                  setState(() {
                    isSwitch = value;
                  });
                }),
            const SizedBox(
              height: 16,
            ),
            Text(
              isSwitch ? 'Switch is on' : 'Switch is off',
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}

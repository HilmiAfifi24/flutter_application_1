import 'package:flutter/material.dart';

void main() {
  runApp(const FittedApp());
}

class FittedApp extends StatelessWidget {
  const FittedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Fitted Box App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 120,
            color: Colors.green,
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.fitHeight,
              child: Image.network("https://fastly.picsum.photos/id/581/200/300.jpg?hmac=Xsg_aDXsNDPBGUvQPMKuMn2f4XS6zkrgh0vnl2lzljk"),
            ),
          ),
        ),
      ),
    );
  }
}
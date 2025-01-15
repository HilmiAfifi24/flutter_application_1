import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyCupertinoApp());
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoHomePage(),
    );
  }
}

class CupertinoHomePage extends StatelessWidget {
  const CupertinoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Cupertino Application", style: TextStyle(
          color: CupertinoColors.white
        ),),
        backgroundColor: CupertinoColors.activeBlue,
      ),
      child: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeBlue,
          child: const Text("Show Alert"),
          onPressed: () {
            // Panggil dialog menggunakan konteks yang benar
            showCupertinoDialog(
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: const Text("Delete Item"),
                  content: const Text("Are you sure you want to delete?"),
                  actions: [
                    CupertinoDialogAction(
                      isDefaultAction: true,
                      child: const Text("Yes"),
                      onPressed: () {
                        Navigator.pop(context); // Tutup dialog
                      },
                    ),
                    CupertinoDialogAction(
                      child: const Text("No"),
                      onPressed: () {
                        Navigator.pop(context); // Tutup dialog
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

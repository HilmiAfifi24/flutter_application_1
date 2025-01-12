import 'package:flutter/material.dart';

void main() {
  runApp(const TabbarApp());
}

class TabbarApp extends StatelessWidget {
  const TabbarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarScreen(),
    );
  }
}

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab Bar App"),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Text("Tab 1"),
            Text("Tab 2"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text("Tab 1 Content")),
          Center(child: Text("Tab 2 Content")),
        ]
      ),
    );
  }
}

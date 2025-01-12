import 'package:flutter/material.dart';

void main() {
  runApp(const DailyNotesApp());
}

class DailyNotesApp extends StatelessWidget {
  const DailyNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesHome(),
    );
  }
}

class NotesHome extends StatefulWidget {
  const NotesHome({super.key});

  @override
  State<NotesHome> createState() => _NotesHomeState();
}

class _NotesHomeState extends State<NotesHome> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<Map<String, String>> _notes = [];

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _timeController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _addNote() {
    setState(() {
      _notes.add({
        'title': _titleController.text,
        'description': _descriptionController.text,
        'time': _timeController.text,
      });
      _titleController.clear();
      _descriptionController.clear();
      _timeController.clear();
    });
  }

  void _deleteNote(int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete Note'),
          content: const Text('Are you sure you want to delete this note?'),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _notes.removeAt(index);
                });
                Navigator.pop(context);
              },
              child: const Text('Delete'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Notes"),
        centerTitle: true,
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(text: 'Notes'),
          Tab(text: 'Add Note'),
        ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        // page 1 notes app
        ListView.builder(
          itemCount: _notes.length,
          itemBuilder: (context, index) {
            final note = _notes[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              elevation: 4, // Menambahkan shadow pada card
              child: ListTile(
                title: Text(
                  note["title"] ?? "",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "${note["description"]}\nTime: ${note["time"]}",
                  style: const TextStyle(fontSize: 14),
                ),
                trailing: IconButton(
                  onPressed: () => _deleteNote(index),
                  icon: const Icon(Icons.delete, color: Colors.red),
                ),
              ),
            );
          },
        ),
        // page 2 add note app
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _timeController,
                decoration: const InputDecoration(
                  labelText: 'Time',
                  border: OutlineInputBorder(),
                ),
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _addNote,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Add Note',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

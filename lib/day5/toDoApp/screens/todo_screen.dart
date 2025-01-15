import 'package:flutter/material.dart';
import 'package:flutter_application_1/day5/toDoApp/providers/todo_provider.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final todoProvider = Provider.of<TodoProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do List"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: "Enter task",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      todoProvider.addTodo(_controller.text);
                      _controller.clear();
                    }
                  },
                  child: const Text("Add"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todoProvider.todos.length,
              itemBuilder: (context, index) {
                final todo = todoProvider.todos[index];
                return ListTile(
                  title: Text(
                    todo.title,
                    style: TextStyle(
                      decoration: todo.isCompleted
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  leading: Checkbox(
                    value: todo.isCompleted,
                    onChanged: (value) {
                      todoProvider.toggleTodoStatus(index);
                    },
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      todoProvider.deleteTodo(index);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

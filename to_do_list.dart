import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Todo()));

class Todo extends StatefulWidget {
  @override
  State<Todo> createState() => _TodoState();
}
class _TodoState extends State<Todo> {
  final tasks = <String>[], c = TextEditingController();
  void add() {
    if (c.text.isNotEmpty) setState(() => tasks.add(c.text));
    c.clear();
  }
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('To-do List')),
    body: Column(children: [
      Row(children: [
        Expanded(child: TextField(
          controller: c,
          decoration: InputDecoration(hintText: 'Add a task'),
        )),
        ElevatedButton(onPressed: add, child: Text('+'))
      ]),
      Expanded(child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (_, i) => ListTile(
          title: Text(tasks[i]),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => setState(() => tasks.removeAt(i)),
          ),
        ),
      ))
    ]),
  );
}

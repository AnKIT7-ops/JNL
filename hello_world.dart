import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("hello World")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Hello World\nHello Flutter", style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    ),
  ),
);

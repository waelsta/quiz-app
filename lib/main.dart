import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Navigation bar'),
      ),
      body: Column(
        children: [
          Text('the question !'),
          ElevatedButton(
            child: Text('First Answer'),
            onPressed: null,
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Second Answer'),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text('Third Answer'),
          )
        ],
      ),
    ));
  }
}

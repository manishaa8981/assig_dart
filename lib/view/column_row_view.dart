import 'package:flutter/material.dart';

class ColumnRowView extends StatelessWidget {
  const ColumnRowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        centerTitle: true,
        title: Text('ColumnRowView'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.blue.shade500,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Button 1'),
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Button 2')),
              ElevatedButton(onPressed: () {}, child: const Text('Button 3')),
            ],
          ),
        ),
      ),
    );
  }
}

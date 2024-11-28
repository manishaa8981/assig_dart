import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Column View'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 241, 168, 192),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.circle,
              size: 50,
              color: Colors.amber,
            ),
            Spacer(), // equal gaps ma divide gardinxa
            Icon(
              Icons.circle,
              size: 50,
              color: Colors.red,
            ),
            Spacer(),
            Icon(
              Icons.circle,
              size: 50,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}

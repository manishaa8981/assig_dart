import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  double radius = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Area of Circle'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                radius = double.tryParse(value) ?? 0;
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter the radius'),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        const Color.fromARGB(255, 162, 205, 9)),
                  ),
                  onPressed: () {
                    setState(() {
                      result = radius * radius * 3.14; // Calculate SI
                    });
                  },
                  child: const Text(
                    'Area of Circle',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';

class Arithmetic extends StatefulWidget {
  const Arithmetic({super.key});

  @override
  State<Arithmetic> createState() => _ArithmeticState();
}

class _ArithmeticState extends State<Arithmetic> {
  int first = 0;
  int second = 0;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Arithmetic'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.all(16.0), // Add padding around the content
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    first = int.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter First Number', // Corrected syntax
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    second = int.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Second Number', // Corrected syntax
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Result : $result',
                  style: const TextStyle(fontSize: 20),
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
                          result = first + second; // Calculate SI
                        });
                      },
                      child: const Text(
                        'Addition',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
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
                          result = first - second; // Calculate SI
                        });
                      },
                      child: const Text(
                        'Subtraction',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
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
                          result = first * second; // Calculate SI
                        });
                      },
                      child: const Text(
                        'Multplication',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

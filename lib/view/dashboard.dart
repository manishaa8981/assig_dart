import 'package:assig/view/area_of_circle.dart';
import 'package:assig/view/arithmetic.dart';
import 'package:assig/view/simple_interest.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dashboard'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(255, 233, 54, 9)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Arithmetic()),
                  );
                },
                child: const Text('Arithmetic'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(255, 233, 54, 9)),
                ),
        
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SimpleInterest()),
                  );
                },
                child: const Text('Simple Interest'),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(255, 233, 54, 9)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AreaOfCircle()),
                  );
                },
                child: const Text('Area of circle'),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

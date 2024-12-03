import 'package:flutter/material.dart';

class ClassworkErerciseView extends StatelessWidget {
  const ClassworkErerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows and Columns"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Container(
                child: Text("Manisha"),
                height: 200,
                width: double.infinity,
                color: Colors.pink,
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.yellow,
              ),
            )
          ],
        ),
      ),
    );
  }
}

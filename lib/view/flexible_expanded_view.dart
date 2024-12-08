import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Flexible expanded view"),
      //   centerTitle: true,
      //   backgroundColor: Colors.amber,
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                // height: 200,
                width: double.infinity,
                child: Container(
                  color: Colors.pink[200],
                  child: Text(
                    "Manisha",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              // fit: FlexFit.tight, // default loose ho , yo flex ko property ho flexible use na garna paros vanera expaded use gareko
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: Container(
                  color: Colors.blue,
                  child: Text(
                    "Manisha",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

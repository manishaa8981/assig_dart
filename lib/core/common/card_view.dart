import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card View"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(child: MyCard()),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: Center(
            child: Text(
          "I'm inside card",
          style: TextStyle(fontSize: 40),
        )),
      ),
    );
  }
}

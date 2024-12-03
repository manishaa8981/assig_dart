import 'package:flutter/material.dart';

class LoadImageView extends StatelessWidget {
  const LoadImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Load Image View"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset('assets/images/dog-1.jpeg')),
              Center(child: Image.asset('assets/images/dog-2.jpeg')),
              Center(child: Image.asset('assets/images/dog-3.jpeg')),
            ],
          ),
        )));
  }
}

import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container View"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
          child: Center(
        // yo paila container thyo yeslai wrap with widget garera center gryo hmla ane tyo parent ko centre ma aauxa
        child: Container( // conatiner lai feri container la wrap gryo ane teslai alignment diyo hmla ane aba yo bottomright ma ayo
          alignment: Alignment.bottomRight,
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: const Text("I am a container"),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
          ),
        ),
      )),
    );
  }
}

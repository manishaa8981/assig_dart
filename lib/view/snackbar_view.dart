import 'package:assig/core/common/show_my_snackbar.dart';
import 'package:flutter/material.dart';

class SnackbarView extends StatelessWidget {
  const SnackbarView({super.key});

  _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      backgroundColor: Colors.green,
      content: Text("Hii this is message 1 "),
      duration: Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      // action: SnackBarAction(
      //   label: 'OK',
      //   onPressed: () {},
      //   textColor: Colors.black,
      // ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar view"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => showMySnackBar(context,
                    "Hiiii i am from folder common and not from the above  "),
                child: Text("Button 1")),
            ElevatedButton(
                onPressed: () => showMySnackBar(
                    context, "Hiiii i am from folder common ",
                    color: Colors.red),
                child: Text('Button 2'))
          ],
        ),
      ),
    );
  }
}

import 'package:assig/view/dashboard.dart';
import 'package:assig/view/rich_text_view.dart';
import 'package:flutter/material.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RichTextView(),
    );
  }
}

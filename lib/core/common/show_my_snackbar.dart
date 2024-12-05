import 'package:flutter/material.dart';

showMySnackBar(
  BuildContext context,
  String message, {
  Color? color,
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar( // mathe ra tala duitai ma diff name lekhna
    backgroundColor: color ?? Colors.green,
    content: Text(message),
    duration: Duration(seconds: 3),
    behavior: SnackBarBehavior.floating,
  ));
}

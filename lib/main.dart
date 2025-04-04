import 'package:flutter/material.dart';
import 'inicio.dart';
import 'homescreen.dart';
void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Inicio(), //HomeScreen()
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Text(
          'Bienvenido',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class AcercaDe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de'),
      ),
      body: Center(
        child: Text(
          'Sobre nosotros',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class Contacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacto'),
      ),
      body: Center(
        child: Text(
          'Contáctanos',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
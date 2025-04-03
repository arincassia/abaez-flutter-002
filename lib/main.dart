import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

// Aplicación principal
class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless vs Stateful',
      home: HomeScreen(),
    );
  }
}

// Pantalla principal con navegación
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless vs Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatelessExample()),
                );
              },
              child: Text('Ir a StatelessWidget'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatefulExample()),
                );
              },
              child: Text('Ir a StatefulWidget'),
            ),
          ],
        ),
      ),
    );
  }
}

// Ejemplo de StatelessWidget
class StatelessExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatelessWidget'),
      ),
      body: Center(
        child: Text(
          'Este es un texto fijo.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// Ejemplo de StatefulWidget
class StatefulExample extends StatefulWidget {
  @override
  _StatefulExampleState createState() => _StatefulExampleState();
}

class _StatefulExampleState extends State<StatefulExample> {
  int _contador = 0;

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }

  void _decrementarContador() {
    setState(() {
      _contador--;
    });
  }

  void _resetearContador() {
    setState(() {
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StatefulWidget')),
      body: Center(
        child: Text(
          'Número: $_contador',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end, // Alinea los botones al final (derecha)
        children: [
          // Botón para resetear el contador
          FloatingActionButton(
            onPressed: _resetearContador,
            tooltip: 'Reset',
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 16), // Espaciado entre los botones

          // Botón para decrementar el contador
          FloatingActionButton(
            onPressed: _decrementarContador,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16), // Espaciado entre los botones

          // Botón para incrementar el contador
          FloatingActionButton(
            onPressed: _incrementarContador,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
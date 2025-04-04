import 'package:flutter/material.dart';
import 'acercade.dart';
import 'contacto.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inicio(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 243, 173, 80)),
      ),
    );
  }
}

// Pantalla 'Inicio' (StatefulWidget con un contador)
class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
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
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Text(
              'Numero: $_contador',
              style: TextStyle(fontSize: 20),
            ),
             if (_contador > 0)
            Text(
              'Contador en positivo',
              style: const TextStyle(color: Colors.green, fontSize: 16),
            ),
          if (_contador < 0)
            Text(
              'Contador en negativo',
             style: const TextStyle(color: Colors.red, fontSize: 16),
            ),
          if (_contador == 0)
            Text(
              ' Contador en cero',
               style: const TextStyle(color: Colors.black, fontSize: 16),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AcercaDe()),
                    );
                  },
                  child: Text('Ir a Acerca de'),
                ),
                SizedBox(width: 10), 
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contacto()),
                    );
                  },
                  child: Text('Ir a Contacto'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
  mainAxisAlignment: MainAxisAlignment.end, // Alinea los botones al final (derecha)
  children: [
    FloatingActionButton(
      heroTag: 'reset', // Etiqueta única
      onPressed: _resetearContador,
      tooltip: 'Reset',
      child: const Icon(Icons.refresh),
    ),
    const SizedBox(width: 16), // Espaciado entre los botones
    FloatingActionButton(
      heroTag: 'decrement', // Etiqueta única
      onPressed: _decrementarContador,
      tooltip: 'Decrement',
      child: const Icon(Icons.remove),
    ),
    const SizedBox(width: 16), // Espaciado entre los botones
    FloatingActionButton(
      heroTag: 'increment', // Etiqueta única
      onPressed: _incrementarContador,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),
  ],
),
    );
  }
}
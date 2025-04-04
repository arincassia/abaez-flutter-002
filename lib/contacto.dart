import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Contacto(),
    );
  }
}

class Contacto extends StatefulWidget {
  @override
  _ContactoState createState() => _ContactoState();
}

class _ContactoState extends State<Contacto> {
  final TextEditingController _mensajeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    print("Contacto: initState llamado");
  }

  @override
  void dispose() {
    // Imprime el mensaje en la consola cuando la pantalla se cierra.
    print("Mensaje escrito: ${_mensajeController.text}");
    _mensajeController.dispose(); // Libera el controlador.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacto'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Escribe tu mensaje:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _mensajeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Escribe aquí tu mensaje',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
             onPressed: () {
              print("Mensaje recibido: ${_mensajeController.text}");
              },
              child: Text('Imprimir mensaje en la consola'),
              ),
            SizedBox(height: 20), 
            ElevatedButton(
               onPressed: () {
                Navigator.pop(context);
               },
              child: Text('Regresar'),
              ),
          ],
        ),
      ),
    );
  }
}
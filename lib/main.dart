import 'package:flutter/material.dart';
import 'package:maquetacion/Presentacion/Pantallas/contador_pantallas_funciones.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, colorSchemeSeed: Colors.blue
        ),
      home: const ContadorPantallasFunciones()
    );
  }
}